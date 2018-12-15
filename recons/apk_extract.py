# !/usr/bin/env python3

import zipfile, traceback, argparse, collections, os
from recons.enjarify import parsedex
from recons.enjarify.jvm import writeclass
from recons.enjarify.mutf8 import decode
from recons.enjarify.jvm.optimization import options

# To know the contents of a package
def apk_info(apk_name):

    nlc = 0
    apk = zipfile.ZipFile(apk_name, 'r')

    print("\n--------------------------------------------------")
    print("[+] EXTRACTING JAR")
    print("\n")

    dexs = []
    if apk_name.lower().endswith('.apk'):
        with zipfile.ZipFile(apk_name, 'r') as z:
            for name in z.namelist():
                if name.startswith('classes') and name.endswith('.dex'):
                    dexs.append(z.read(name))
    else:
        dexs.append(read(apk_name))

    outname = apk_name.rpartition('/')[-1].rpartition('.')[0] + '-enjarify.jar'

    try:
        outfile = open(outname, mode='wb')
    except OSError:
        print('Error, output file already exists and --force was not specified.')
        print('To overwrite the output file, pass -f or --force.')
        return

    opts = options.PRETTY
    classes = collections.OrderedDict()
    errors = collections.OrderedDict()

    for data in dexs:
        translate(data, opts=opts, classes=classes, errors=errors)
    writeToJar(outfile, classes)
    outfile.close()
    print(('Output written to', outname))

    for name, error in sorted(errors.items()):
        print((name))
    print(('{} classes translated successfully, {} classes had errors'.format(len(classes), len(errors))))

    print(("\n\t[+] " + apk_name + "'s source has been extracted as jar"))
    print("\n")

    print("\n--------------------------------------------------")
    print("[+] EXTRACTING SOURCE")
    print("\n")
    namesplit = apk_name.split('.')[0]
    javaSrc = 'java -jar tools/cfr.jar  ' + namesplit + '-enjarify.jar' + ' --outputdir' + ' Source-Java' + ' 1> /dev/null 2> /dev/null'
    os.system(javaSrc)
    print("\n\t[+] Extraction complete. Check 'Source-Java' directory.")

    if os.path.exists('Extracts') and os.path.isdir('Extracts'):
        os.system('rm -r Extracts')
    apk.extractall("Extracts")
    print("\n\t[+] Extracted the file contents to directory : Extracts")
    jarcpy = 'mv ' + namesplit + '-enjarify.jar' + ' Extracts'
    os.system(jarcpy)
    print("\n")

    print("--------------------------------------------------")
    print("[+] EXTRACTED CONTENTS")
    print("\n")
    for file in os.listdir("Extracts"):
        print(("\t" + file))
    if os.path.exists('Extracts'):
        os.chdir('Extracts')
    os.system('cp AndroidManifest.xml ../')
    print("\n")

    print("--------------------------------------------------")
    print("[+] CERTIFICATE")
    print("\n")
    os.system('openssl pkcs7 -inform DER -in META-INF/CERT.RSA -noout -print_certs -text | tee Certificate.txt ')
    print("\n\t[+]Certificate details extracted to Certificate.txt")
    print("\n")

    print("--------------------------------------------------")
    print("[+] STRINGS")
    print("\n\t[+] Executing Strings on classes.dex ")
    dexstrings1 = os.system('strings classes.dex > Strings1.txt')
    if os.path.exists('classes2.dex'):
        dexstrings2 = os.system('strings classes2.dex > Strings2.txt')
    print("\n\t[+] Output written to 'Strings.txt' found in the Extracts directory")
    print("\n")

    print("--------------------------------------------------")
    print("[+] NATIVE LIBRARIES")
    print("\n")
    Dir = 'lib'
    for libdir, subdirList, libs in os.walk(Dir):
        for fname in libs:
            if fname == '':
                nlc = nlc + 2
            else:
                print('\t\t[>] %s' % fname)
    if nlc > 0:
        print("\n\t[-] No native libraries found")
    print("\n\n")

    print("--------------------------------------------------")
    print("[+] MANIFEST DUMP")
    print("\n")
    os.chdir('..')
    manDmp = 'java -jar tools/AXML.jar  AndroidManifest.xml  >> Manifest.xml'
    os.system(manDmp)
    if os.path.isdir('Source-Java'):
        os.system('mv  Manifest.xml  Source-Java')
    os.system('rm AndroidManifest.xml')
    print("\n")
    print("\t[+] The parsed Manifest can be found as Manifest.xml")
    print("\n")
    print("----------------------------------------------------")
    print("\n")

def read(fname, mode='rb'):
    with open(fname, mode) as f:
        return f.read()

def translate(data, opts, classes=None, errors=None, allowErrors=True):
    dex = parsedex.DexFile(data)
    classes = collections.OrderedDict() if classes is None else classes
    errors = collections.OrderedDict() if errors is None else errors

    for cls in dex.classes:
        unicode_name = decode(cls.name) + '.class'
        if unicode_name in classes or unicode_name in errors:
            print(('Warning, duplicate class name', unicode_name))
            continue

        try:
            class_data = writeclass.toClassFile(cls, opts)
            classes[unicode_name] = class_data
        except Exception:
            if not allowErrors:
                raise
            errors[unicode_name] = traceback.format_exc()

        if not (len(classes) + len(errors)) % 1000:
            print((len(classes) + len(errors), 'classes processed'))
    return classes, errors

def writeToJar(fname, classes):
    with zipfile.ZipFile(fname, 'w') as out:
        for unicode_name, data in list(classes.items()):
            # Don't bother compressing small files
            compress_type = zipfile.ZIP_DEFLATED if len(data) > 10000 else zipfile.ZIP_STORED
            info = zipfile.ZipInfo(unicode_name)
            info.external_attr = 0o775 << 16  # set Unix file permissions
            out.writestr(info, data, compress_type=compress_type)