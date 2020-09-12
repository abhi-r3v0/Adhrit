/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ValueTransformer, visitValue } from '../util';
import { StaticSymbol } from './static_symbol';
import { isGeneratedFile, stripSummaryForJitFileSuffix, stripSummaryForJitNameSuffix, summaryForJitFileName, summaryForJitName } from './util';
const TS = /^(?!.*\.d\.ts$).*\.ts$/;
export class ResolvedStaticSymbol {
    constructor(symbol, metadata) {
        this.symbol = symbol;
        this.metadata = metadata;
    }
}
const SUPPORTED_SCHEMA_VERSION = 4;
/**
 * This class is responsible for loading metadata per symbol,
 * and normalizing references between symbols.
 *
 * Internally, it only uses symbols without members,
 * and deduces the values for symbols with members based
 * on these symbols.
 */
export class StaticSymbolResolver {
    constructor(host, staticSymbolCache, summaryResolver, errorRecorder) {
        this.host = host;
        this.staticSymbolCache = staticSymbolCache;
        this.summaryResolver = summaryResolver;
        this.errorRecorder = errorRecorder;
        this.metadataCache = new Map();
        // Note: this will only contain StaticSymbols without members!
        this.resolvedSymbols = new Map();
        // Note: this will only contain StaticSymbols without members!
        this.importAs = new Map();
        this.symbolResourcePaths = new Map();
        this.symbolFromFile = new Map();
        this.knownFileNameToModuleNames = new Map();
    }
    resolveSymbol(staticSymbol) {
        if (staticSymbol.members.length > 0) {
            return this._resolveSymbolMembers(staticSymbol);
        }
        // Note: always ask for a summary first,
        // as we might have read shallow metadata via a .d.ts file
        // for the symbol.
        const resultFromSummary = this._resolveSymbolFromSummary(staticSymbol);
        if (resultFromSummary) {
            return resultFromSummary;
        }
        const resultFromCache = this.resolvedSymbols.get(staticSymbol);
        if (resultFromCache) {
            return resultFromCache;
        }
        // Note: Some users use libraries that were not compiled with ngc, i.e. they don't
        // have summaries, only .d.ts files. So we always need to check both, the summary
        // and metadata.
        this._createSymbolsOf(staticSymbol.filePath);
        return this.resolvedSymbols.get(staticSymbol);
    }
    /**
     * getImportAs produces a symbol that can be used to import the given symbol.
     * The import might be different than the symbol if the symbol is exported from
     * a library with a summary; in which case we want to import the symbol from the
     * ngfactory re-export instead of directly to avoid introducing a direct dependency
     * on an otherwise indirect dependency.
     *
     * @param staticSymbol the symbol for which to generate a import symbol
     */
    getImportAs(staticSymbol, useSummaries = true) {
        if (staticSymbol.members.length) {
            const baseSymbol = this.getStaticSymbol(staticSymbol.filePath, staticSymbol.name);
            const baseImportAs = this.getImportAs(baseSymbol, useSummaries);
            return baseImportAs ?
                this.getStaticSymbol(baseImportAs.filePath, baseImportAs.name, staticSymbol.members) :
                null;
        }
        const summarizedFileName = stripSummaryForJitFileSuffix(staticSymbol.filePath);
        if (summarizedFileName !== staticSymbol.filePath) {
            const summarizedName = stripSummaryForJitNameSuffix(staticSymbol.name);
            const baseSymbol = this.getStaticSymbol(summarizedFileName, summarizedName, staticSymbol.members);
            const baseImportAs = this.getImportAs(baseSymbol, useSummaries);
            return baseImportAs ?
                this.getStaticSymbol(summaryForJitFileName(baseImportAs.filePath), summaryForJitName(baseImportAs.name), baseSymbol.members) :
                null;
        }
        let result = (useSummaries && this.summaryResolver.getImportAs(staticSymbol)) || null;
        if (!result) {
            result = this.importAs.get(staticSymbol);
        }
        return result;
    }
    /**
     * getResourcePath produces the path to the original location of the symbol and should
     * be used to determine the relative location of resource references recorded in
     * symbol metadata.
     */
    getResourcePath(staticSymbol) {
        return this.symbolResourcePaths.get(staticSymbol) || staticSymbol.filePath;
    }
    /**
     * getTypeArity returns the number of generic type parameters the given symbol
     * has. If the symbol is not a type the result is null.
     */
    getTypeArity(staticSymbol) {
        // If the file is a factory/ngsummary file, don't resolve the symbol as doing so would
        // cause the metadata for an factory/ngsummary file to be loaded which doesn't exist.
        // All references to generated classes must include the correct arity whenever
        // generating code.
        if (isGeneratedFile(staticSymbol.filePath)) {
            return null;
        }
        let resolvedSymbol = unwrapResolvedMetadata(this.resolveSymbol(staticSymbol));
        while (resolvedSymbol && resolvedSymbol.metadata instanceof StaticSymbol) {
            resolvedSymbol = unwrapResolvedMetadata(this.resolveSymbol(resolvedSymbol.metadata));
        }
        return (resolvedSymbol && resolvedSymbol.metadata && resolvedSymbol.metadata.arity) || null;
    }
    getKnownModuleName(filePath) {
        return this.knownFileNameToModuleNames.get(filePath) || null;
    }
    recordImportAs(sourceSymbol, targetSymbol) {
        sourceSymbol.assertNoMembers();
        targetSymbol.assertNoMembers();
        this.importAs.set(sourceSymbol, targetSymbol);
    }
    recordModuleNameForFileName(fileName, moduleName) {
        this.knownFileNameToModuleNames.set(fileName, moduleName);
    }
    /**
     * Invalidate all information derived from the given file and return the
     * static symbols contained in the file.
     *
     * @param fileName the file to invalidate
     */
    invalidateFile(fileName) {
        this.metadataCache.delete(fileName);
        const symbols = this.symbolFromFile.get(fileName);
        if (!symbols) {
            return [];
        }
        this.symbolFromFile.delete(fileName);
        for (const symbol of symbols) {
            this.resolvedSymbols.delete(symbol);
            this.importAs.delete(symbol);
            this.symbolResourcePaths.delete(symbol);
        }
        return symbols;
    }
    /** @internal */
    ignoreErrorsFor(cb) {
        const recorder = this.errorRecorder;
        this.errorRecorder = () => { };
        try {
            return cb();
        }
        finally {
            this.errorRecorder = recorder;
        }
    }
    _resolveSymbolMembers(staticSymbol) {
        const members = staticSymbol.members;
        const baseResolvedSymbol = this.resolveSymbol(this.getStaticSymbol(staticSymbol.filePath, staticSymbol.name));
        if (!baseResolvedSymbol) {
            return null;
        }
        let baseMetadata = unwrapResolvedMetadata(baseResolvedSymbol.metadata);
        if (baseMetadata instanceof StaticSymbol) {
            return new ResolvedStaticSymbol(staticSymbol, this.getStaticSymbol(baseMetadata.filePath, baseMetadata.name, members));
        }
        else if (baseMetadata && baseMetadata.__symbolic === 'class') {
            if (baseMetadata.statics && members.length === 1) {
                return new ResolvedStaticSymbol(staticSymbol, baseMetadata.statics[members[0]]);
            }
        }
        else {
            let value = baseMetadata;
            for (let i = 0; i < members.length && value; i++) {
                value = value[members[i]];
            }
            return new ResolvedStaticSymbol(staticSymbol, value);
        }
        return null;
    }
    _resolveSymbolFromSummary(staticSymbol) {
        const summary = this.summaryResolver.resolveSummary(staticSymbol);
        return summary ? new ResolvedStaticSymbol(staticSymbol, summary.metadata) : null;
    }
    /**
     * getStaticSymbol produces a Type whose metadata is known but whose implementation is not loaded.
     * All types passed to the StaticResolver should be pseudo-types returned by this method.
     *
     * @param declarationFile the absolute path of the file where the symbol is declared
     * @param name the name of the type.
     * @param members a symbol for a static member of the named type
     */
    getStaticSymbol(declarationFile, name, members) {
        return this.staticSymbolCache.get(declarationFile, name, members);
    }
    /**
     * hasDecorators checks a file's metadata for the presence of decorators without evaluating the
     * metadata.
     *
     * @param filePath the absolute path to examine for decorators.
     * @returns true if any class in the file has a decorator.
     */
    hasDecorators(filePath) {
        const metadata = this.getModuleMetadata(filePath);
        if (metadata['metadata']) {
            return Object.keys(metadata['metadata']).some((metadataKey) => {
                const entry = metadata['metadata'][metadataKey];
                return entry && entry.__symbolic === 'class' && entry.decorators;
            });
        }
        return false;
    }
    getSymbolsOf(filePath) {
        const summarySymbols = this.summaryResolver.getSymbolsOf(filePath);
        if (summarySymbols) {
            return summarySymbols;
        }
        // Note: Some users use libraries that were not compiled with ngc, i.e. they don't
        // have summaries, only .d.ts files, but `summaryResolver.isLibraryFile` returns true.
        this._createSymbolsOf(filePath);
        return this.symbolFromFile.get(filePath) || [];
    }
    _createSymbolsOf(filePath) {
        if (this.symbolFromFile.has(filePath)) {
            return;
        }
        const resolvedSymbols = [];
        const metadata = this.getModuleMetadata(filePath);
        if (metadata['importAs']) {
            // Index bundle indices should use the importAs module name defined
            // in the bundle.
            this.knownFileNameToModuleNames.set(filePath, metadata['importAs']);
        }
        // handle the symbols in one of the re-export location
        if (metadata['exports']) {
            for (const moduleExport of metadata['exports']) {
                // handle the symbols in the list of explicitly re-exported symbols.
                if (moduleExport.export) {
                    moduleExport.export.forEach((exportSymbol) => {
                        let symbolName;
                        if (typeof exportSymbol === 'string') {
                            symbolName = exportSymbol;
                        }
                        else {
                            symbolName = exportSymbol.as;
                        }
                        symbolName = unescapeIdentifier(symbolName);
                        let symName = symbolName;
                        if (typeof exportSymbol !== 'string') {
                            symName = unescapeIdentifier(exportSymbol.name);
                        }
                        const resolvedModule = this.resolveModule(moduleExport.from, filePath);
                        if (resolvedModule) {
                            const targetSymbol = this.getStaticSymbol(resolvedModule, symName);
                            const sourceSymbol = this.getStaticSymbol(filePath, symbolName);
                            resolvedSymbols.push(this.createExport(sourceSymbol, targetSymbol));
                        }
                    });
                }
                else {
                    // handle the symbols via export * directives.
                    const resolvedModule = this.resolveModule(moduleExport.from, filePath);
                    if (resolvedModule) {
                        const nestedExports = this.getSymbolsOf(resolvedModule);
                        nestedExports.forEach((targetSymbol) => {
                            const sourceSymbol = this.getStaticSymbol(filePath, targetSymbol.name);
                            resolvedSymbols.push(this.createExport(sourceSymbol, targetSymbol));
                        });
                    }
                }
            }
        }
        // handle the actual metadata. Has to be after the exports
        // as there might be collisions in the names, and we want the symbols
        // of the current module to win ofter reexports.
        if (metadata['metadata']) {
            // handle direct declarations of the symbol
            const topLevelSymbolNames = new Set(Object.keys(metadata['metadata']).map(unescapeIdentifier));
            const origins = metadata['origins'] || {};
            Object.keys(metadata['metadata']).forEach((metadataKey) => {
                const symbolMeta = metadata['metadata'][metadataKey];
                const name = unescapeIdentifier(metadataKey);
                const symbol = this.getStaticSymbol(filePath, name);
                const origin = origins.hasOwnProperty(metadataKey) && origins[metadataKey];
                if (origin) {
                    // If the symbol is from a bundled index, use the declaration location of the
                    // symbol so relative references (such as './my.html') will be calculated
                    // correctly.
                    const originFilePath = this.resolveModule(origin, filePath);
                    if (!originFilePath) {
                        this.reportError(new Error(`Couldn't resolve original symbol for ${origin} from ${this.host.getOutputName(filePath)}`));
                    }
                    else {
                        this.symbolResourcePaths.set(symbol, originFilePath);
                    }
                }
                resolvedSymbols.push(this.createResolvedSymbol(symbol, filePath, topLevelSymbolNames, symbolMeta));
            });
        }
        const uniqueSymbols = new Set();
        for (const resolvedSymbol of resolvedSymbols) {
            this.resolvedSymbols.set(resolvedSymbol.symbol, resolvedSymbol);
            uniqueSymbols.add(resolvedSymbol.symbol);
        }
        this.symbolFromFile.set(filePath, Array.from(uniqueSymbols));
    }
    createResolvedSymbol(sourceSymbol, topLevelPath, topLevelSymbolNames, metadata) {
        // For classes that don't have Angular summaries / metadata,
        // we only keep their arity, but nothing else
        // (e.g. their constructor parameters).
        // We do this to prevent introducing deep imports
        // as we didn't generate .ngfactory.ts files with proper reexports.
        const isTsFile = TS.test(sourceSymbol.filePath);
        if (this.summaryResolver.isLibraryFile(sourceSymbol.filePath) && !isTsFile && metadata &&
            metadata['__symbolic'] === 'class') {
            const transformedMeta = { __symbolic: 'class', arity: metadata.arity };
            return new ResolvedStaticSymbol(sourceSymbol, transformedMeta);
        }
        let _originalFileMemo;
        const getOriginalName = () => {
            if (!_originalFileMemo) {
                // Guess what the original file name is from the reference. If it has a `.d.ts` extension
                // replace it with `.ts`. If it already has `.ts` just leave it in place. If it doesn't have
                // .ts or .d.ts, append `.ts'. Also, if it is in `node_modules`, trim the `node_module`
                // location as it is not important to finding the file.
                _originalFileMemo =
                    this.host.getOutputName(topLevelPath.replace(/((\.ts)|(\.d\.ts)|)$/, '.ts')
                        .replace(/^.*node_modules[/\\]/, ''));
            }
            return _originalFileMemo;
        };
        const self = this;
        class ReferenceTransformer extends ValueTransformer {
            visitStringMap(map, functionParams) {
                const symbolic = map['__symbolic'];
                if (symbolic === 'function') {
                    const oldLen = functionParams.length;
                    functionParams.push(...(map['parameters'] || []));
                    const result = super.visitStringMap(map, functionParams);
                    functionParams.length = oldLen;
                    return result;
                }
                else if (symbolic === 'reference') {
                    const module = map['module'];
                    const name = map['name'] ? unescapeIdentifier(map['name']) : map['name'];
                    if (!name) {
                        return null;
                    }
                    let filePath;
                    if (module) {
                        filePath = self.resolveModule(module, sourceSymbol.filePath);
                        if (!filePath) {
                            return {
                                __symbolic: 'error',
                                message: `Could not resolve ${module} relative to ${self.host.getMetadataFor(sourceSymbol.filePath)}.`,
                                line: map['line'],
                                character: map['character'],
                                fileName: getOriginalName()
                            };
                        }
                        return {
                            __symbolic: 'resolved',
                            symbol: self.getStaticSymbol(filePath, name),
                            line: map['line'],
                            character: map['character'],
                            fileName: getOriginalName()
                        };
                    }
                    else if (functionParams.indexOf(name) >= 0) {
                        // reference to a function parameter
                        return { __symbolic: 'reference', name: name };
                    }
                    else {
                        if (topLevelSymbolNames.has(name)) {
                            return self.getStaticSymbol(topLevelPath, name);
                        }
                        // ambient value
                        null;
                    }
                }
                else if (symbolic === 'error') {
                    return Object.assign(Object.assign({}, map), { fileName: getOriginalName() });
                }
                else {
                    return super.visitStringMap(map, functionParams);
                }
            }
        }
        const transformedMeta = visitValue(metadata, new ReferenceTransformer(), []);
        let unwrappedTransformedMeta = unwrapResolvedMetadata(transformedMeta);
        if (unwrappedTransformedMeta instanceof StaticSymbol) {
            return this.createExport(sourceSymbol, unwrappedTransformedMeta);
        }
        return new ResolvedStaticSymbol(sourceSymbol, transformedMeta);
    }
    createExport(sourceSymbol, targetSymbol) {
        sourceSymbol.assertNoMembers();
        targetSymbol.assertNoMembers();
        if (this.summaryResolver.isLibraryFile(sourceSymbol.filePath) &&
            this.summaryResolver.isLibraryFile(targetSymbol.filePath)) {
            // This case is for an ng library importing symbols from a plain ts library
            // transitively.
            // Note: We rely on the fact that we discover symbols in the direction
            // from source files to library files
            this.importAs.set(targetSymbol, this.getImportAs(sourceSymbol) || sourceSymbol);
        }
        return new ResolvedStaticSymbol(sourceSymbol, targetSymbol);
    }
    reportError(error, context, path) {
        if (this.errorRecorder) {
            this.errorRecorder(error, (context && context.filePath) || path);
        }
        else {
            throw error;
        }
    }
    /**
     * @param module an absolute path to a module file.
     */
    getModuleMetadata(module) {
        let moduleMetadata = this.metadataCache.get(module);
        if (!moduleMetadata) {
            const moduleMetadatas = this.host.getMetadataFor(module);
            if (moduleMetadatas) {
                let maxVersion = -1;
                moduleMetadatas.forEach((md) => {
                    if (md && md['version'] > maxVersion) {
                        maxVersion = md['version'];
                        moduleMetadata = md;
                    }
                });
            }
            if (!moduleMetadata) {
                moduleMetadata =
                    { __symbolic: 'module', version: SUPPORTED_SCHEMA_VERSION, module: module, metadata: {} };
            }
            if (moduleMetadata['version'] != SUPPORTED_SCHEMA_VERSION) {
                const errorMessage = moduleMetadata['version'] == 2 ?
                    `Unsupported metadata version ${moduleMetadata['version']} for module ${module}. This module should be compiled with a newer version of ngc` :
                    `Metadata version mismatch for module ${this.host.getOutputName(module)}, found version ${moduleMetadata['version']}, expected ${SUPPORTED_SCHEMA_VERSION}`;
                this.reportError(new Error(errorMessage));
            }
            this.metadataCache.set(module, moduleMetadata);
        }
        return moduleMetadata;
    }
    getSymbolByModule(module, symbolName, containingFile) {
        const filePath = this.resolveModule(module, containingFile);
        if (!filePath) {
            this.reportError(new Error(`Could not resolve module ${module}${containingFile ? ' relative to ' +
                this.host.getOutputName(containingFile) : ''}`));
            return this.getStaticSymbol(`ERROR:${module}`, symbolName);
        }
        return this.getStaticSymbol(filePath, symbolName);
    }
    resolveModule(module, containingFile) {
        try {
            return this.host.moduleNameToFileName(module, containingFile);
        }
        catch (e) {
            console.error(`Could not resolve module '${module}' relative to file ${containingFile}`);
            this.reportError(e, undefined, containingFile);
        }
        return null;
    }
}
// Remove extra underscore from escaped identifier.
// See https://github.com/Microsoft/TypeScript/blob/master/src/compiler/utilities.ts
export function unescapeIdentifier(identifier) {
    return identifier.startsWith('___') ? identifier.substr(1) : identifier;
}
export function unwrapResolvedMetadata(metadata) {
    if (metadata && metadata.__symbolic === 'resolved') {
        return metadata.symbol;
    }
    return metadata;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RhdGljX3N5bWJvbF9yZXNvbHZlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9hb3Qvc3RhdGljX3N5bWJvbF9yZXNvbHZlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFHSCxPQUFPLEVBQUMsZ0JBQWdCLEVBQUUsVUFBVSxFQUFDLE1BQU0sU0FBUyxDQUFDO0FBRXJELE9BQU8sRUFBQyxZQUFZLEVBQW9CLE1BQU0saUJBQWlCLENBQUM7QUFDaEUsT0FBTyxFQUFDLGVBQWUsRUFBRSw0QkFBNEIsRUFBRSw0QkFBNEIsRUFBRSxxQkFBcUIsRUFBRSxpQkFBaUIsRUFBQyxNQUFNLFFBQVEsQ0FBQztBQUU3SSxNQUFNLEVBQUUsR0FBRyx3QkFBd0IsQ0FBQztBQUVwQyxNQUFNLE9BQU8sb0JBQW9CO0lBQy9CLFlBQW1CLE1BQW9CLEVBQVMsUUFBYTtRQUExQyxXQUFNLEdBQU4sTUFBTSxDQUFjO1FBQVMsYUFBUSxHQUFSLFFBQVEsQ0FBSztJQUFHLENBQUM7Q0FDbEU7QUFpQ0QsTUFBTSx3QkFBd0IsR0FBRyxDQUFDLENBQUM7QUFFbkM7Ozs7Ozs7R0FPRztBQUNILE1BQU0sT0FBTyxvQkFBb0I7SUFVL0IsWUFDWSxJQUE4QixFQUFVLGlCQUFvQyxFQUM1RSxlQUE4QyxFQUM5QyxhQUF1RDtRQUZ2RCxTQUFJLEdBQUosSUFBSSxDQUEwQjtRQUFVLHNCQUFpQixHQUFqQixpQkFBaUIsQ0FBbUI7UUFDNUUsb0JBQWUsR0FBZixlQUFlLENBQStCO1FBQzlDLGtCQUFhLEdBQWIsYUFBYSxDQUEwQztRQVozRCxrQkFBYSxHQUFHLElBQUksR0FBRyxFQUFnQyxDQUFDO1FBQ2hFLDhEQUE4RDtRQUN0RCxvQkFBZSxHQUFHLElBQUksR0FBRyxFQUFzQyxDQUFDO1FBQ3hFLDhEQUE4RDtRQUN0RCxhQUFRLEdBQUcsSUFBSSxHQUFHLEVBQThCLENB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QUFDLE9BQU8sQ0FBQyxFQUFFO1lBQ1YsT0FBTyxDQUFDLEtBQUssQ0FBQyw2QkFBNkIsTUFBTSxzQkFBc0IsY0FBYyxFQUFFLENBQUMsQ0FBQztZQUN6RixJQUFJLENBQUMsV0FBVyxDQUFDLENBQUMsRUFBRSxTQUFTLEVBQUUsY0FBYyxDQUFDLENBQUM7U0FDaEQ7UUFDRCxPQUFPLElBQUksQ0FBQztJQUNkLENBQUM7Q0FDRjtBQUVELG1EQUFtRDtBQUNuRCxvRkFBb0Y7QUFDcEYsTUFBTSxVQUFVLGtCQUFrQixDQUFDLFVBQWtCO0lBQ25ELE9BQU8sVUFBVSxDQUFDLFVBQVUsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsVUFBVSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsVUFBVSxDQUFDO0FBQzFFLENBQUM7QUFFRCxNQUFNLFVBQVUsc0JBQXNCLENBQUMsUUFBYTtJQUNsRCxJQUFJLFFBQVEsSUFBSSxRQUFRLENBQUMsVUFBVSxLQUFLLFVBQVUsRUFBRTtRQUNsRCxPQUFPLFFBQVEsQ0FBQyxNQUFNLENBQUM7S0FDeEI7SUFDRCxPQUFPLFFBQVEsQ0FBQztBQUNsQixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1N1bW1hcnlSZXNvbHZlcn0gZnJvbSAnLi4vc3VtbWFyeV9yZXNvbHZlcic7XG5pbXBvcnQge1ZhbHVlVHJhbnNmb3JtZXIsIHZpc2l0VmFsdWV9IGZyb20gJy4uL3V0aWwnO1xuXG5pbXBvcnQge1N0YXRpY1N5bWJvbCwgU3RhdGljU3ltYm9sQ2FjaGV9IGZyb20gJy4vc3RhdGljX3N5bWJvbCc7XG5pbXBvcnQge2lzR2VuZXJhdGVkRmlsZSwgc3RyaXBTdW1tYXJ5Rm9ySml0RmlsZVN1ZmZpeCwgc3RyaXBTdW1tYXJ5Rm9ySml0TmFtZVN1ZmZpeCwgc3VtbWFyeUZvckppdEZpbGVOYW1lLCBzdW1tYXJ5Rm9ySml0TmFtZX0gZnJvbSAnLi91dGlsJztcblxuY29uc3QgVFMgPSAvXig/IS4qXFwuZFxcLnRzJCkuKlxcLnRzJC87XG5cbmV4cG9ydCBjbGFzcyBSZXNvbHZlZFN0YXRpY1N5bWJvbCB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBzeW1ib2w6IFN0YXRpY1N5bWJvbCwgcHVibGljIG1ldGFkYXRhOiBhbnkpIHt9XG59XG5cbi8qKlxuICogVGhlIGhvc3Qgb2YgdGhlIFN5bWJvbFJlc29sdmVySG9zdCBkaXNjb25uZWN0cyB0aGUgaW1wbGVtZW50YXRpb24gZnJvbSBUeXBlU2NyaXB0IC8gb3RoZXJcbiAqIGxhbmd1YWdlXG4gKiBzZXJ2aWNlcyBhbmQgZnJvbSB1bmRlcmx5aW5nIGZpbGUgc3lzdGVtcy5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBTdGF0aWNTeW1ib2xSZXNvbHZlckhvc3Qge1xuICAvKipcbiAgICogUmV0dXJuIGEgTW9kdWxlTWV0YWRhdGEgZm9yIHRoZSBnaXZlbiBtb2R1bGUuXG4gICAqIEFuZ3VsYXIgQ0xJIHdpbGwgcHJvZHVjZSB0aGlzIG1ldGFkYXRhIGZvciBhIG1vZHVsZSB3aGVuZXZlciBhIC5kLnRzIGZpbGVzIGlzXG4gICAqIHByb2R1Y2VkIGFuZCB0aGUgbW9kdWxlIGhhcyBleHBvcnRlZCB2YXJpYWJsZXMgb3IgY2xhc3NlcyB3aXRoIGRlY29yYXRvcnMuIE1vZHVsZSBtZXRhZGF0YSBjYW5cbiAgICogYWxzbyBiZSBwcm9kdWNlZCBkaXJlY3RseSBmcm9tIFR5cGVTY3JpcHQgc291cmNlcyBieSB1c2luZyBNZXRhZGF0YUNvbGxlY3RvciBpbiB0b29scy9tZXRhZGF0YS5cbiAgICpcbiAgICogQHBhcmFtIG1vZHVsZVBhdGggaXMgYSBzdHJpbmcgaWRlbnRpZmllciBmb3IgYSBtb2R1bGUgYXMgYW4gYWJzb2x1dGUgcGF0aC5cbiAgICogQHJldHVybnMgdGhlIG1ldGFkYXRhIGZvciB0aGUgZ2l2ZW4gbW9kdWxlLlxuICAgKi9cbiAgZ2V0TWV0YWRhdGFGb3IobW9kdWxlUGF0aDogc3RyaW5nKToge1trZXk6IHN0cmluZ106IGFueX1bXXx1bmRlZmluZWQ7XG5cbiAgLyoqXG4gICAqIENvbnZlcnRzIGEgbW9kdWxlIG5hbWUgdGhhdCBpcyB1c2VkIGluIGFuIGBpbXBvcnRgIHRvIGEgZmlsZSBwYXRoLlxuICAgKiBJLmUuXG4gICAqIGBwYXRoL3RvL2NvbnRhaW5pbmdGaWxlLnRzYCBjb250YWluaW5nIGBpbXBvcnQgey4uLn0gZnJvbSAnbW9kdWxlLW5hbWUnYC5cbiAgICovXG4gIG1vZHVsZU5hbWVUb0ZpbGVOYW1lKG1vZHVsZU5hbWU6IHN0cmluZywgY29udGFpbmluZ0ZpbGU/OiBzdHJpbmcpOiBzdHJpbmd8bnVsbDtcblxuICAvKipcbiAgICogR2V0IGEgZmlsZSBzdWl0YWJsZSBmb3IgZGlzcGxheSB0byB0aGUgdXNlciB0aGF0IHNob3VsZCBiZSByZWxhdGl2ZSB0byB0aGUgcHJvamVjdCBkaXJlY3RvcnlcbiAgICogb3IgdGhlIGN1cnJlbnQgZGlyZWN0b3J5LlxuICAgKi9cbiAgZ2V0T3V0cHV0TmFtZShmaWxlUGF0aDogc3RyaW5nKTogc3RyaW5nO1xufVxuXG5jb25zdCBTVVBQT1JURURfU0NIRU1BX1ZFUlNJT04gPSA0O1xuXG4vKipcbiAqIFRoaXMgY2xhc3MgaXMgcmVzcG9uc2libGUgZm9yIGxvYWRpbmcgbWV0YWRhdGEgcGVyIHN5bWJvbCxcbiAqIGFuZCBub3JtYWxpemluZyByZWZlcmVuY2VzIGJldHdlZW4gc3ltYm9scy5cbiAqXG4gKiBJbnRlcm5hbGx5LCBpdCBvbmx5IHVzZXMgc3ltYm9scyB3aXRob3V0IG1lbWJlcnMsXG4gKiBhbmQgZGVkdWNlcyB0aGUgdmFsdWVzIGZvciBzeW1ib2xzIHdpdGggbWVtYmVycyBiYXNlZFxuICogb24gdGhlc2Ugc3ltYm9scy5cbiAqL1xuZXhwb3J0IGNsYXNzIFN0YXRpY1N5bWJvbFJlc29sdmVyIHtcbiAgcHJpdmF0ZSBtZXRhZGF0YUNhY2hlID0gbmV3IE1hcDxzdHJpbmcsIHtba2V5OiBzdHJpbmddOiBhbnl9PigpO1xuICAvLyBOb3RlOiB0aGlzIHdpbGwgb25seSBjb250YWluIFN0YXRpY1N5bWJvbHMgd2l0aG91dCBtZW1iZXJzIVxuICBwcml2YXRlIHJlc29sdmVkU3ltYm9scyA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCBSZXNvbHZlZFN0YXRpY1N5bWJvbD4oKTtcbiAgLy8gTm90ZTogdGhpcyB3aWxsIG9ubHkgY29udGFpbiBTdGF0aWNTeW1ib2xzIHdpdGhvdXQgbWVtYmVycyFcbiAgcHJpdmF0ZSBpbXBvcnRBcyA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCBTdGF0aWNTeW1ib2w+KCk7XG4gIHByaXZhdGUgc3ltYm9sUmVzb3VyY2VQYXRocyA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCBzdHJpbmc+KCk7XG4gIHByaXZhdGUgc3ltYm9sRnJvbUZpbGUgPSBuZXcgTWFwPHN0cmluZywgU3RhdGljU3ltYm9sW10+KCk7XG4gIHByaXZhdGUga25vd25GaWxlTmFtZVRvTW9kdWxlTmFtZXMgPSBuZXcgTWFwPHN0cmluZywgc3RyaW5nPigpO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBob3N0OiBTdGF0aWNTeW1ib2xSZXNvbHZlckhvc3QsIHByaXZhdGUgc3RhdGljU3ltYm9sQ2FjaGU6IFN0YXRpY1N5bWJvbENhY2hlLFxuICAgICAgcHJpdmF0ZSBzdW1tYXJ5UmVzb2x2ZXI6IFN1bW1hcnlSZXNvbHZlcjxTdGF0aWNTeW1ib2w+LFxuICAgICAgcHJpdmF0ZSBlcnJvclJlY29yZGVyPzogKGVycm9yOiBhbnksIGZpbGVOYW1lPzogc3RyaW5nKSA9PiB2b2lkKSB7fVxuXG4gIHJlc29sdmVTeW1ib2woc3RhdGljU3ltYm9sOiBTdGF0aWNTeW1ib2wpOiBSZXNvbHZlZFN0YXRpY1N5bWJvbCB7XG4gICAgaWYgKHN0YXRpY1N5bWJvbC5tZW1iZXJzLmxlbmd0aCA+IDApIHtcbiAgICAgIHJldHVybiB0aGlzLl9yZXNvbHZlU3ltYm9sTWVtYmVycyhzdGF0aWNTeW1ib2wpICE7XG4gICAgfVxuICAgIC8vIE5vdGU6IGFsd2F5cyBhc2sgZm9yIGEgc3VtbWFyeSBmaXJzdCxcbiAgICAvLyBhcyB3ZSBtaWdodCBoYXZlIHJlYWQgc2hhbGxvdyBtZXRhZGF0YSB2aWEgYSAuZC50cyBmaWxlXG4gICAgLy8gZm9yIHRoZSBzeW1ib2wuXG4gICAgY29uc3QgcmVzdWx0RnJvbVN1bW1hcnkgPSB0aGlzLl9yZXNvbHZlU3ltYm9sRnJvbVN1bW1hcnkoc3RhdGljU3ltYm9sKSAhO1xuICAgIGlmIChyZXN1bHRGcm9tU3VtbWFyeSkge1xuICAgICAgcmV0dXJuIHJlc3VsdEZyb21TdW1tYXJ5O1xuICAgIH1cbiAgICBjb25zdCByZXN1bHRGcm9tQ2FjaGUgPSB0aGlzLnJlc29sdmVkU3ltYm9scy5nZXQoc3RhdGljU3ltYm9sKTtcbiAgICBpZiAocmVzdWx0RnJvbUNhY2hlKSB7XG4gICAgICByZXR1cm4gcmVzdWx0RnJvbUNhY2hlO1xuICAgIH1cbiAgICAvLyBOb3RlOiBTb21lIHVzZXJzIHVzZSBsaWJyYXJpZXMgdGhhdCB3ZXJlIG5vdCBjb21waWxlZCB3aXRoIG5nYywgaS5lLiB0aGV5IGRvbid0XG4gICAgLy8gaGF2ZSBzdW1tYXJpZXMsIG9ubHkgLmQudHMgZmlsZXMuIFNvIHdlIGFsd2F5cyBuZWVkIHRvIGNoZWNrIGJvdGgsIHRoZSBzdW1tYXJ5XG4gICAgLy8gYW5kIG1ldGFkYXRhLlxuICAgIHRoaXMuX2NyZWF0ZVN5bWJvbHNPZihzdGF0aWNTeW1ib2wuZmlsZVBhdGgpO1xuICAgIHJldHVybiB0aGlzLnJlc29sdmVkU3ltYm9scy5nZXQoc3RhdGljU3ltYm9sKSAhO1xuICB9XG5cbiAgLyoqXG4gICAqIGdldEltcG9ydEFzIHByb2R1Y2VzIGEgc3ltYm9sIHRoYXQgY2FuIGJlIHVzZWQgdG8gaW1wb3J0IHRoZSBnaXZlbiBzeW1ib2wuXG4gICAqIFRoZSBpbXBvcnQgbWlnaHQgYmUgZGlmZmVyZW50IHRoYW4gdGhlIHN5bWJvbCBpZiB0aGUgc3ltYm9sIGlzIGV4cG9ydGVkIGZyb21cbiAgICogYSBsaWJyYXJ5IHdpdGggYSBzdW1tYXJ5OyBpbiB3aGljaCBjYXNlIHdlIHdhbnQgdG8gaW1wb3J0IHRoZSBzeW1ib2wgZnJvbSB0aGVcbiAgICogbmdmYWN0b3J5IHJlLWV4cG9ydCBpbnN0ZWFkIG9mIGRpcmVjdGx5IHRvIGF2b2lkIGludHJvZHVjaW5nIGEgZGlyZWN0IGRlcGVuZGVuY3lcbiAgICogb24gYW4gb3RoZXJ3aXNlIGluZGlyZWN0IGRlcGVuZGVuY3kuXG4gICAqXG4gICAqIEBwYXJhbSBzdGF0aWNTeW1ib2wgdGhlIHN5bWJvbCBmb3Igd2hpY2ggdG8gZ2VuZXJhdGUgYSBpbXBvcnQgc3ltYm9sXG4gICAqL1xuICBnZXRJbXBvcnRBcyhzdGF0aWNTeW1ib2w6IFN0YXRpY1N5bWJvbCwgdXNlU3VtbWFyaWVzOiBib29sZWFuID0gdHJ1ZSk6IFN0YXRpY1N5bWJvbHxudWxsIHtcbiAgICBpZiAoc3RhdGljU3ltYm9sLm1lbWJlcnMubGVuZ3RoKSB7XG4gICAgICBjb25zdCBiYXNlU3ltYm9sID0gdGhpcy5nZXRTdGF0aWNTeW1ib2woc3RhdGljU3ltYm9sLmZpbGVQYXRoLCBzdGF0aWNTeW1ib2wubmFtZSk7XG4gICAgICBjb25zdCBiYXNlSW1wb3J0QXMgPSB0aGlzLmdldEltcG9ydEFzKGJhc2VTeW1ib2wsIHVzZVN1bW1hcmllcyk7XG4gICAgICByZXR1cm4gYmFzZUltcG9ydEFzID9cbiAgICAgICAgICB0aGlzLmdldFN0YXRpY1N5bWJvbChiYXNlSW1wb3J0QXMuZmlsZVBhdGgsIGJhc2VJbXBvcnRBcy5uYW1lLCBzdGF0aWNTeW1ib2wubWVtYmVycykgOlxuICAgICAgICAgIG51bGw7XG4gICAgfVxuICAgIGNvbnN0IHN1bW1hcml6ZWRGaWxlTmFtZSA9IHN0cmlwU3VtbWFyeUZvckppdEZpbGVTdWZmaXgoc3RhdGljU3ltYm9sLmZpbGVQYXRoKTtcbiAgICBpZiAoc3VtbWFyaXplZEZpbGVOYW1lICE9PSBzdGF0aWNTeW1ib2wuZmlsZVBhdGgpIHtcbiAgICAgIGNvbnN0IHN1bW1hcml6ZWROYW1lID0gc3RyaXBTdW1tYXJ5Rm9ySml0TmFtZVN1ZmZpeChzdGF0aWNTeW1ib2wubmFtZSk7XG4gICAgICBjb25zdCBiYXNlU3ltYm9sID1cbiAgICAgICAgICB0aGlzLmdldFN0YXRpY1N5bWJvbChzdW1tYXJpemVkRmlsZU5hbWUsIHN1bW1hcml6ZWROYW1lLCBzdGF0aWNTeW1ib2wubWVtYmVycyk7XG4gICAgICBjb25zdCBiYXNlSW1wb3J0QXMgPSB0aGlzLmdldEltcG9ydEFzKGJhc2VTeW1ib2wsIHVzZVN1bW1hcmllcyk7XG4gICAgICByZXR1cm4gYmFzZUltcG9ydEFzID9cbiAgICAgICAgICB0aGlzLmdldFN0YXRpY1N5bWJvbChcbiAgICAgICAgICAgICAgc3VtbWFyeUZvckppdEZpbGVOYW1lKGJhc2VJbXBvcnRBcy5maWxlUGF0aCksIHN1bW1hcnlGb3JKaXROYW1lKGJhc2VJbXBvcnRBcy5uYW1lKSxcbiAgICAgICAgICAgICAgYmFzZVN5bWJvbC5tZW1iZXJzKSA6XG4gICAgICAgICAgbnVsbDtcbiAgICB9XG4gICAgbGV0IHJlc3VsdCA9ICh1c2VTdW1tYXJpZXMgJiYgdGhpcy5zdW1tYXJ5UmVzb2x2ZXIuZ2V0SW1wb3J0QXMoc3RhdGljU3ltYm9sKSkgfHwgbnVsbDtcbiAgICBpZiAoIXJlc3VsdCkge1xuICAgICAgcmVzdWx0ID0gdGhpcy5pbXBvcnRBcy5nZXQoc3RhdGljU3ltYm9sKSAhO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgLyoqXG4gICAqIGdldFJlc291cmNlUGF0aCBwcm9kdWNlcyB0aGUgcGF0aCB0byB0aGUgb3JpZ2luYWwgbG9jYXRpb24gb2YgdGhlIHN5bWJvbCBhbmQgc2hvdWxkXG4gICAqIGJlIHVzZWQgdG8gZGV0ZXJtaW5lIHRoZSByZWxhdGl2ZSBsb2NhdGlvbiBvZiByZXNvdXJjZSByZWZlcmVuY2VzIHJlY29yZGVkIGluXG4gICAqIHN5bWJvbCBtZXRhZGF0YS5cbiAgICovXG4gIGdldFJlc291cmNlUGF0aChzdGF0aWNTeW1ib2w6IFN0YXRpY1N5bWJvbCk6IHN0cmluZyB7XG4gICAgcmV0dXJuIHRoaXMuc3ltYm9sUmVzb3VyY2VQYXRocy5nZXQoc3RhdGljU3ltYm9sKSB8fCBzdGF0aWNTeW1ib2wuZmlsZVBhdGg7XG4gIH1cblxuICAvKipcbiAgICogZ2V0VHlwZUFyaXR5IHJldHVybnMgdGhlIG51bWJlciBvZiBnZW5lcmljIHR5cGUgcGFyYW1ldGVycyB0aGUgZ2l2ZW4gc3ltYm9sXG4gICAqIGhhcy4gSWYgdGhlIHN5bWJvbCBpcyBub3QgYSB0eXBlIHRoZSByZXN1bHQgaXMgbnVsbC5cbiAgICovXG4gIGdldFR5cGVBcml0eShzdGF0aWNTeW1ib2w6IFN0YXRpY1N5bWJvbCk6IG51bWJlcnxudWxsIHtcbiAgICAvLyBJZiB0aGUgZmlsZSBpcyBhIGZhY3RvcnkvbmdzdW1tYXJ5IGZpbGUsIGRvbid0IHJlc29sdmUgdGhlIHN5bWJvbCBhcyBkb2luZyBzbyB3b3VsZFxuICAgIC8vIGNhdXNlIHRoZSBtZXRhZGF0YSBmb3IgYW4gZmFjdG9yeS9uZ3N1bW1hcnkgZmlsZSB0byBiZSBsb2FkZWQgd2hpY2ggZG9lc24ndCBleGlzdC5cbiAgICAvLyBBbGwgcmVmZXJlbmNlcyB0byBnZW5lcmF0ZWQgY2xhc3NlcyBtdXN0IGluY2x1ZGUgdGhlIGNvcnJlY3QgYXJpdHkgd2hlbmV2ZXJcbiAgICAvLyBnZW5lcmF0aW5nIGNvZGUuXG4gICAgaWYgKGlzR2VuZXJhdGVkRmlsZShzdGF0aWNTeW1ib2wuZmlsZVBhdGgpKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgbGV0IHJlc29sdmVkU3ltYm9sID0gdW53cmFwUmVzb2x2ZWRNZXRhZGF0YSh0aGlzLnJlc29sdmVTeW1ib2woc3RhdGljU3ltYm9sKSk7XG4gICAgd2hpbGUgKHJlc29sdmVkU3ltYm9sICYmIHJlc29sdmVkU3ltYm9sLm1ldGFkYXRhIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICByZXNvbHZlZFN5bWJvbCA9IHVud3JhcFJlc29sdmVkTWV0YWRhdGEodGhpcy5yZXNvbHZlU3ltYm9sKHJlc29sdmVkU3ltYm9sLm1ldGFkYXRhKSk7XG4gICAgfVxuICAgIHJldHVybiAocmVzb2x2ZWRTeW1ib2wgJiYgcmVzb2x2ZWRTeW1ib2wubWV0YWRhdGEgJiYgcmVzb2x2ZWRTeW1ib2wubWV0YWRhdGEuYXJpdHkpIHx8IG51bGw7XG4gIH1cblxuICBnZXRLbm93bk1vZHVsZU5hbWUoZmlsZVBhdGg6IHN0cmluZyk6IHN0cmluZ3xudWxsIHtcbiAgICByZXR1cm4gdGhpcy5rbm93bkZpbGVOYW1lVG9Nb2R1bGVOYW1lcy5nZXQoZmlsZVBhdGgpIHx8IG51bGw7XG4gIH1cblxuICByZWNvcmRJbXBvcnRBcyhzb3VyY2VTeW1ib2w6IFN0YXRpY1N5bWJvbCwgdGFyZ2V0U3ltYm9sOiBTdGF0aWNTeW1ib2wpIHtcbiAgICBzb3VyY2VTeW1ib2wuYXNzZXJ0Tm9NZW1iZXJzKCk7XG4gICAgdGFyZ2V0U3ltYm9sLmFzc2VydE5vTWVtYmVycygpO1xuICAgIHRoaXMuaW1wb3J0QXMuc2V0KHNvdXJjZVN5bWJvbCwgdGFyZ2V0U3ltYm9sKTtcbiAgfVxuXG4gIHJlY29yZE1vZHVsZU5hbWVGb3JGaWxlTmFtZShmaWxlTmFtZTogc3RyaW5nLCBtb2R1bGVOYW1lOiBzdHJpbmcpIHtcbiAgICB0aGlzLmtub3duRmlsZU5hbWVUb01vZHVsZU5hbWVzLnNldChmaWxlTmFtZSwgbW9kdWxlTmFtZSk7XG4gIH1cblxuICAvKipcbiAgICogSW52YWxpZGF0ZSBhbGwgaW5mb3JtYXRpb24gZGVyaXZlZCBmcm9tIHRoZSBnaXZlbiBmaWxlIGFuZCByZXR1cm4gdGhlXG4gICAqIHN0YXRpYyBzeW1ib2xzIGNvbnRhaW5lZCBpbiB0aGUgZmlsZS5cbiAgICpcbiAgICogQHBhcmFtIGZpbGVOYW1lIHRoZSBmaWxlIHRvIGludmFsaWRhdGVcbiAgICovXG4gIGludmFsaWRhdGVGaWxlKGZpbGVOYW1lOiBzdHJpbmcpOiBTdGF0aWNTeW1ib2xbXSB7XG4gICAgdGhpcy5tZXRhZGF0YUNhY2hlLmRlbGV0ZShmaWxlTmFtZSk7XG4gICAgY29uc3Qgc3ltYm9scyA9IHRoaXMuc3ltYm9sRnJvbUZpbGUuZ2V0KGZpbGVOYW1lKTtcbiAgICBpZiAoIXN5bWJvbHMpIHtcbiAgICAgIHJldHVybiBbXTtcbiAgICB9XG4gICAgdGhpcy5zeW1ib2xGcm9tRmlsZS5kZWxldGUoZmlsZU5hbWUpO1xuICAgIGZvciAoY29uc3Qgc3ltYm9sIG9mIHN5bWJvbHMpIHtcbiAgICAgIHRoaXMucmVzb2x2ZWRTeW1ib2xzLmRlbGV0ZShzeW1ib2wpO1xuICAgICAgdGhpcy5pbXBvcnRBcy5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMuc3ltYm9sUmVzb3VyY2VQYXRocy5kZWxldGUoc3ltYm9sKTtcbiAgICB9XG4gICAgcmV0dXJuIHN5bWJvbHM7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIGlnbm9yZUVycm9yc0ZvcjxUPihjYjogKCkgPT4gVCkge1xuICAgIGNvbnN0IHJlY29yZGVyID0gdGhpcy5lcnJvclJlY29yZGVyO1xuICAgIHRoaXMuZXJyb3JSZWNvcmRlciA9ICgpID0+IHt9O1xuICAgIHRyeSB7XG4gICAgICByZXR1cm4gY2IoKTtcbiAgICB9IGZpbmFsbHkge1xuICAgICAgdGhpcy5lcnJvclJlY29yZGVyID0gcmVjb3JkZXI7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfcmVzb2x2ZVN5bWJvbE1lbWJlcnMoc3RhdGljU3ltYm9sOiBTdGF0aWNTeW1ib2wpOiBSZXNvbHZlZFN0YXRpY1N5bWJvbHxudWxsIHtcbiAgICBjb25zdCBtZW1iZXJzID0gc3RhdGljU3ltYm9sLm1lbWJlcnM7XG4gICAgY29uc3QgYmFzZVJlc29sdmVkU3ltYm9sID1cbiAgICAgICAgdGhpcy5yZXNvbHZlU3ltYm9sKHRoaXMuZ2V0U3RhdGljU3ltYm9sKHN0YXRpY1N5bWJvbC5maWxlUGF0aCwgc3RhdGljU3ltYm9sLm5hbWUpKTtcbiAgICBpZiAoIWJhc2VSZXNvbHZlZFN5bWJvbCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGxldCBiYXNlTWV0YWRhdGEgPSB1bndyYXBSZXNvbHZlZE1ldGFkYXRhKGJhc2VSZXNvbHZlZFN5bWJvbC5tZXRhZGF0YSk7XG4gICAgaWYgKGJhc2VNZXRhZGF0YSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgICAgcmV0dXJuIG5ldyBSZXNvbHZlZFN0YXRpY1N5bWJvbChcbiAgICAgICAgICBzdGF0aWNTeW1ib2wsIHRoaXMuZ2V0U3RhdGljU3ltYm9sKGJhc2VNZXRhZGF0YS5maWxlUGF0aCwgYmFzZU1ldGFkYXRhLm5hbWUsIG1lbWJlcnMpKTtcbiAgICB9IGVsc2UgaWYgKGJhc2VNZXRhZGF0YSAmJiBiYXNlTWV0YWRhdGEuX19zeW1ib2xpYyA9PT0gJ2NsYXNzJykge1xuICAgICAgaWYgKGJhc2VNZXRhZGF0YS5zdGF0aWNzICYmIG1lbWJlcnMubGVuZ3RoID09PSAxKSB7XG4gICAgICAgIHJldHVybiBuZXcgUmVzb2x2ZWRTdGF0aWNTeW1ib2woc3RhdGljU3ltYm9sLCBiYXNlTWV0YWRhdGEuc3RhdGljc1ttZW1iZXJzWzBdXSk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGxldCB2YWx1ZSA9IGJhc2VNZXRhZGF0YTtcbiAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgbWVtYmVycy5sZW5ndGggJiYgdmFsdWU7IGkrKykge1xuICAgICAgICB2YWx1ZSA9IHZhbHVlW21lbWJlcnNbaV1dO1xuICAgICAgfVxuICAgICAgcmV0dXJuIG5ldyBSZXNvbHZlZFN0YXRpY1N5bWJvbChzdGF0aWNTeW1ib2wsIHZhbHVlKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBwcml2YXRlIF9yZXNvbHZlU3ltYm9sRnJvbVN1bW1hcnkoc3RhdGljU3ltYm9sOiBTdGF0aWNTeW1ib2wpOiBSZXNvbHZlZFN0YXRpY1N5bWJvbHxudWxsIHtcbiAgICBjb25zdCBzdW1tYXJ5ID0gdGhpcy5zdW1tYXJ5UmVzb2x2ZXIucmVzb2x2ZVN1bW1hcnkoc3RhdGljU3ltYm9sKTtcbiAgICByZXR1cm4gc3VtbWFyeSA/IG5ldyBSZXNvbHZlZFN0YXRpY1N5bWJvbChzdGF0aWNTeW1ib2wsIHN1bW1hcnkubWV0YWRhdGEpIDogbnVsbDtcbiAgfVxuXG4gIC8qKlxuICAgKiBnZXRTdGF0aWNTeW1ib2wgcHJvZHVjZXMgYSBUeXBlIHdob3NlIG1ldGFkYXRhIGlzIGtub3duIGJ1dCB3aG9zZSBpbXBsZW1lbnRhdGlvbiBpcyBub3QgbG9hZGVkLlxuICAgKiBBbGwgdHlwZXMgcGFzc2VkIHRvIHRoZSBTdGF0aWNSZXNvbHZlciBzaG91bGQgYmUgcHNldWRvLXR5cGVzIHJldHVybmVkIGJ5IHRoaXMgbWV0aG9kLlxuICAgKlxuICAgKiBAcGFyYW0gZGVjbGFyYXRpb25GaWxlIHRoZSBhYnNvbHV0ZSBwYXRoIG9mIHRoZSBmaWxlIHdoZXJlIHRoZSBzeW1ib2wgaXMgZGVjbGFyZWRcbiAgICogQHBhcmFtIG5hbWUgdGhlIG5hbWUgb2YgdGhlIHR5cGUuXG4gICAqIEBwYXJhbSBtZW1iZXJzIGEgc3ltYm9sIGZvciBhIHN0YXRpYyBtZW1iZXIgb2YgdGhlIG5hbWVkIHR5cGVcbiAgICovXG4gIGdldFN0YXRpY1N5bWJvbChkZWNsYXJhdGlvbkZpbGU6IHN0cmluZywgbmFtZTogc3RyaW5nLCBtZW1iZXJzPzogc3RyaW5nW10pOiBTdGF0aWNTeW1ib2wge1xuICAgIHJldHVybiB0aGlzLnN0YXRpY1N5bWJvbENhY2hlLmdldChkZWNsYXJhdGlvbkZpbGUsIG5hbWUsIG1lbWJlcnMpO1xuICB9XG5cbiAgLyoqXG4gICAqIGhhc0RlY29yYXRvcnMgY2hlY2tzIGEgZmlsZSdzIG1ldGFkYXRhIGZvciB0aGUgcHJlc2VuY2Ugb2YgZGVjb3JhdG9ycyB3aXRob3V0IGV2YWx1YXRpbmcgdGhlXG4gICAqIG1ldGFkYXRhLlxuICAgKlxuICAgKiBAcGFyYW0gZmlsZVBhdGggdGhlIGFic29sdXRlIHBhdGggdG8gZXhhbWluZSBmb3IgZGVjb3JhdG9ycy5cbiAgICogQHJldHVybnMgdHJ1ZSBpZiBhbnkgY2xhc3MgaW4gdGhlIGZpbGUgaGFzIGEgZGVjb3JhdG9yLlxuICAgKi9cbiAgaGFzRGVjb3JhdG9ycyhmaWxlUGF0aDogc3RyaW5nKTogYm9vbGVhbiB7XG4gICAgY29uc3QgbWV0YWRhdGEgPSB0aGlzLmdldE1vZHVsZU1ldGFkYXRhKGZpbGVQYXRoKTtcbiAgICBpZiAobWV0YWRhdGFbJ21ldGFkYXRhJ10pIHtcbiAgICAgIHJldHVybiBPYmplY3Qua2V5cyhtZXRhZGF0YVsnbWV0YWRhdGEnXSkuc29tZSgobWV0YWRhdGFLZXkpID0+IHtcbiAgICAgICAgY29uc3QgZW50cnkgPSBtZXRhZGF0YVsnbWV0YWRhdGEnXVttZXRhZGF0YUtleV07XG4gICAgICAgIHJldHVybiBlbnRyeSAmJiBlbnRyeS5fX3N5bWJvbGljID09PSAnY2xhc3MnICYmIGVudHJ5LmRlY29yYXRvcnM7XG4gICAgICB9KTtcbiAgICB9XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgZ2V0U3ltYm9sc09mKGZpbGVQYXRoOiBzdHJpbmcpOiBTdGF0aWNTeW1ib2xbXSB7XG4gICAgY29uc3Qgc3VtbWFyeVN5bWJvbHMgPSB0aGlzLnN1bW1hcnlSZXNvbHZlci5nZXRTeW1ib2xzT2YoZmlsZVBhdGgpO1xuICAgIGlmIChzdW1tYXJ5U3ltYm9scykge1xuICAgICAgcmV0dXJuIHN1bW1hcnlTeW1ib2xzO1xuICAgIH1cbiAgICAvLyBOb3RlOiBTb21lIHVzZXJzIHVzZSBsaWJyYXJpZXMgdGhhdCB3ZXJlIG5vdCBjb21waWxlZCB3aXRoIG5nYywgaS5lLiB0aGV5IGRvbid0XG4gICAgLy8gaGF2ZSBzdW1tYXJpZXMsIG9ubHkgLmQudHMgZmlsZXMsIGJ1dCBgc3VtbWFyeVJlc29sdmVyLmlzTGlicmFyeUZpbGVgIHJldHVybnMgdHJ1ZS5cbiAgICB0aGlzLl9jcmVhdGVTeW1ib2xzT2YoZmlsZVBhdGgpO1xuICAgIHJldHVybiB0aGlzLnN5bWJvbEZyb21GaWxlLmdldChmaWxlUGF0aCkgfHwgW107XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVTeW1ib2xzT2YoZmlsZVBhdGg6IHN0cmluZykge1xuICAgIGlmICh0aGlzLnN5bWJvbEZyb21GaWxlLmhhcyhmaWxlUGF0aCkpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgY29uc3QgcmVzb2x2ZWRTeW1ib2xzOiBSZXNvbHZlZFN0YXRpY1N5bWJvbFtdID0gW107XG4gICAgY29uc3QgbWV0YWRhdGEgPSB0aGlzLmdldE1vZHVsZU1ldGFkYXRhKGZpbGVQYXRoKTtcbiAgICBpZiAobWV0YWRhdGFbJ2ltcG9ydEFzJ10pIHtcbiAgICAgIC8vIEluZGV4IGJ1bmRsZSBpbmRpY2VzIHNob3VsZCB1c2UgdGhlIGltcG9ydEFzIG1vZHVsZSBuYW1lIGRlZmluZWRcbiAgICAgIC8vIGluIHRoZSBidW5kbGUuXG4gICAgICB0aGlzLmtub3duRmlsZU5hbWVUb01vZHVsZU5hbWVzLnNldChmaWxlUGF0aCwgbWV0YWRhdGFbJ2ltcG9ydEFzJ10pO1xuICAgIH1cbiAgICAvLyBoYW5kbGUgdGhlIHN5bWJvbHMgaW4gb25lIG9mIHRoZSByZS1leHBvcnQgbG9jYXRpb25cbiAgICBpZiAobWV0YWRhdGFbJ2V4cG9ydHMnXSkge1xuICAgICAgZm9yIChjb25zdCBtb2R1bGVFeHBvcnQgb2YgbWV0YWRhdGFbJ2V4cG9ydHMnXSkge1xuICAgICAgICAvLyBoYW5kbGUgdGhlIHN5bWJvbHMgaW4gdGhlIGxpc3Qgb2YgZXhwbGljaXRseSByZS1leHBvcnRlZCBzeW1ib2xzLlxuICAgICAgICBpZiAobW9kdWxlRXhwb3J0LmV4cG9ydCkge1xuICAgICAgICAgIG1vZHVsZUV4cG9ydC5leHBvcnQuZm9yRWFjaCgoZXhwb3J0U3ltYm9sOiBhbnkpID0+IHtcbiAgICAgICAgICAgIGxldCBzeW1ib2xOYW1lOiBzdHJpbmc7XG4gICAgICAgICAgICBpZiAodHlwZW9mIGV4cG9ydFN5bWJvbCA9PT0gJ3N0cmluZycpIHtcbiAgICAgICAgICAgICAgc3ltYm9sTmFtZSA9IGV4cG9ydFN5bWJvbDtcbiAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgIHN5bWJvbE5hbWUgPSBleHBvcnRTeW1ib2wuYXM7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBzeW1ib2xOYW1lID0gdW5lc2NhcGVJZGVudGlmaWVyKHN5bWJvbE5hbWUpO1xuICAgICAgICAgICAgbGV0IHN5bU5hbWUgPSBzeW1ib2xOYW1lO1xuICAgICAgICAgICAgaWYgKHR5cGVvZiBleHBvcnRTeW1ib2wgIT09ICdzdHJpbmcnKSB7XG4gICAgICAgICAgICAgIHN5bU5hbWUgPSB1bmVzY2FwZUlkZW50aWZpZXIoZXhwb3J0U3ltYm9sLm5hbWUpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgY29uc3QgcmVzb2x2ZWRNb2R1bGUgPSB0aGlzLnJlc29sdmVNb2R1bGUobW9kdWxlRXhwb3J0LmZyb20sIGZpbGVQYXRoKTtcbiAgICAgICAgICAgIGlmIChyZXNvbHZlZE1vZHVsZSkge1xuICAgICAgICAgICAgICBjb25zdCB0YXJnZXRTeW1ib2wgPSB0aGlzLmdldFN0YXRpY1N5bWJvbChyZXNvbHZlZE1vZHVsZSwgc3ltTmFtZSk7XG4gICAgICAgICAgICAgIGNvbnN0IHNvdXJjZVN5bWJvbCA9IHRoaXMuZ2V0U3RhdGljU3ltYm9sKGZpbGVQYXRoLCBzeW1ib2xOYW1lKTtcbiAgICAgICAgICAgICAgcmVzb2x2ZWRTeW1ib2xzLnB1c2godGhpcy5jcmVhdGVFeHBvcnQoc291cmNlU3ltYm9sLCB0YXJnZXRTeW1ib2wpKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9KTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAvLyBoYW5kbGUgdGhlIHN5bWJvbHMgdmlhIGV4cG9ydCAqIGRpcmVjdGl2ZXMuXG4gICAgICAgICAgY29uc3QgcmVzb2x2ZWRNb2R1bGUgPSB0aGlzLnJlc29sdmVNb2R1bGUobW9kdWxlRXhwb3J0LmZyb20sIGZpbGVQYXRoKTtcbiAgICAgICAgICBpZiAocmVzb2x2ZWRNb2R1bGUpIHtcbiAgICAgICAgICAgIGNvbnN0IG5lc3RlZEV4cG9ydHMgPSB0aGlzLmdldFN5bWJvbHNPZihyZXNvbHZlZE1vZHVsZSk7XG4gICAgICAgICAgICBuZXN0ZWRFeHBvcnRzLmZvckVhY2goKHRhcmdldFN5bWJvbCkgPT4ge1xuICAgICAgICAgICAgICBjb25zdCBzb3VyY2VTeW1ib2wgPSB0aGlzLmdldFN0YXRpY1N5bWJvbChmaWxlUGF0aCwgdGFyZ2V0U3ltYm9sLm5hbWUpO1xuICAgICAgICAgICAgICByZXNvbHZlZFN5bWJvbHMucHVzaCh0aGlzLmNyZWF0ZUV4cG9ydChzb3VyY2VTeW1ib2wsIHRhcmdldFN5bWJvbCkpO1xuICAgICAgICAgICAgfSk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gaGFuZGxlIHRoZSBhY3R1YWwgbWV0YWRhdGEuIEhhcyB0byBiZSBhZnRlciB0aGUgZXhwb3J0c1xuICAgIC8vIGFzIHRoZXJlIG1pZ2h0IGJlIGNvbGxpc2lvbnMgaW4gdGhlIG5hbWVzLCBhbmQgd2Ugd2FudCB0aGUgc3ltYm9sc1xuICAgIC8vIG9mIHRoZSBjdXJyZW50IG1vZHVsZSB0byB3aW4gb2Z0ZXIgcmVleHBvcnRzLlxuICAgIGlmIChtZXRhZGF0YVsnbWV0YWRhdGEnXSkge1xuICAgICAgLy8gaGFuZGxlIGRpcmVjdCBkZWNsYXJhdGlvbnMgb2YgdGhlIHN5bWJvbFxuICAgICAgY29uc3QgdG9wTGV2ZWxTeW1ib2xOYW1lcyA9XG4gICAgICAgICAgbmV3IFNldDxzdHJpbmc+KE9iamVjdC5rZXlzKG1ldGFkYXRhWydtZXRhZGF0YSddKS5tYXAodW5lc2NhcGVJZGVudGlmaWVyKSk7XG4gICAgICBjb25zdCBvcmlnaW5zOiB7W2luZGV4OiBzdHJpbmddOiBzdHJpbmd9ID0gbWV0YWRhdGFbJ29yaWdpbnMnXSB8fCB7fTtcbiAgICAgIE9iamVjdC5rZXlzKG1ldGFkYXRhWydtZXRhZGF0YSddKS5mb3JFYWNoKChtZXRhZGF0YUtleSkgPT4ge1xuICAgICAgICBjb25zdCBzeW1ib2xNZXRhID0gbWV0YWRhdGFbJ21ldGFkYXRhJ11bbWV0YWRhdGFLZXldO1xuICAgICAgICBjb25zdCBuYW1lID0gdW5lc2NhcGVJZGVudGlmaWVyKG1ldGFkYXRhS2V5KTtcblxuICAgICAgICBjb25zdCBzeW1ib2wgPSB0aGlzLmdldFN0YXRpY1N5bWJvbChmaWxlUGF0aCwgbmFtZSk7XG5cbiAgICAgICAgY29uc3Qgb3JpZ2luID0gb3JpZ2lucy5oYXNPd25Qcm9wZXJ0eShtZXRhZGF0YUtleSkgJiYgb3JpZ2luc1ttZXRhZGF0YUtleV07XG4gICAgICAgIGlmIChvcmlnaW4pIHtcbiAgICAgICAgICAvLyBJZiB0aGUgc3ltYm9sIGlzIGZyb20gYSBidW5kbGVkIGluZGV4LCB1c2UgdGhlIGRlY2xhcmF0aW9uIGxvY2F0aW9uIG9mIHRoZVxuICAgICAgICAgIC8vIHN5bWJvbCBzbyByZWxhdGl2ZSByZWZlcmVuY2VzIChzdWNoIGFzICcuL215Lmh0bWwnKSB3aWxsIGJlIGNhbGN1bGF0ZWRcbiAgICAgICAgICAvLyBjb3JyZWN0bHkuXG4gICAgICAgICAgY29uc3Qgb3JpZ2luRmlsZVBhdGggPSB0aGlzLnJlc29sdmVNb2R1bGUob3JpZ2luLCBmaWxlUGF0aCk7XG4gICAgICAgICAgaWYgKCFvcmlnaW5GaWxlUGF0aCkge1xuICAgICAgICAgICAgdGhpcy5yZXBvcnRFcnJvcihuZXcgRXJyb3IoXG4gICAgICAgICAgICAgICAgYENvdWxkbid0IHJlc29sdmUgb3JpZ2luYWwgc3ltYm9sIGZvciAke29yaWdpbn0gZnJvbSAke3RoaXMuaG9zdC5nZXRPdXRwdXROYW1lKGZpbGVQYXRoKX1gKSk7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHRoaXMuc3ltYm9sUmVzb3VyY2VQYXRocy5zZXQoc3ltYm9sLCBvcmlnaW5GaWxlUGF0aCk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIHJlc29sdmVkU3ltYm9scy5wdXNoKFxuICAgICAgICAgICAgdGhpcy5jcmVhdGVSZXNvbHZlZFN5bWJvbChzeW1ib2wsIGZpbGVQYXRoLCB0b3BMZXZlbFN5bWJvbE5hbWVzLCBzeW1ib2xNZXRhKSk7XG4gICAgICB9KTtcbiAgICB9XG4gICAgY29uc3QgdW5pcXVlU3ltYm9scyA9IG5ldyBTZXQ8U3RhdGljU3ltYm9sPigpO1xuICAgIGZvciAoY29uc3QgcmVzb2x2ZWRTeW1ib2wgb2YgcmVzb2x2ZWRTeW1ib2xzKSB7XG4gICAgICB0aGlzLnJlc29sdmVkU3ltYm9scy5zZXQocmVzb2x2ZWRTeW1ib2wuc3ltYm9sLCByZXNvbHZlZFN5bWJvbCk7XG4gICAgICB1bmlxdWVTeW1ib2xzLmFkZChyZXNvbHZlZFN5bWJvbC5zeW1ib2wpO1xuICAgIH1cbiAgICB0aGlzLnN5bWJvbEZyb21GaWxlLnNldChmaWxlUGF0aCwgQXJyYXkuZnJvbSh1bmlxdWVTeW1ib2xzKSk7XG4gIH1cblxuICBwcml2YXRlIGNyZWF0ZVJlc29sdmVkU3ltYm9sKFxuICAgICAgc291cmNlU3ltYm9sOiBTdGF0aWNTeW1ib2wsIHRvcExldmVsUGF0aDogc3RyaW5nLCB0b3BMZXZlbFN5bWJvbE5hbWVzOiBTZXQ8c3RyaW5nPixcbiAgICAgIG1ldGFkYXRhOiBhbnkpOiBSZXNvbHZlZFN0YXRpY1N5bWJvbCB7XG4gICAgLy8gRm9yIGNsYXNzZXMgdGhhdCBkb24ndCBoYXZlIEFuZ3VsYXIgc3VtbWFyaWVzIC8gbWV0YWRhdGEsXG4gICAgLy8gd2Ugb25seSBrZWVwIHRoZWlyIGFyaXR5LCBidXQgbm90aGluZyBlbHNlXG4gICAgLy8gKGUuZy4gdGhlaXIgY29uc3RydWN0b3IgcGFyYW1ldGVycykuXG4gICAgLy8gV2UgZG8gdGhpcyB0byBwcmV2ZW50IGludHJvZHVjaW5nIGRlZXAgaW1wb3J0c1xuICAgIC8vIGFzIHdlIGRpZG4ndCBnZW5lcmF0ZSAubmdmYWN0b3J5LnRzIGZpbGVzIHdpdGggcHJvcGVyIHJlZXhwb3J0cy5cbiAgICBjb25zdCBpc1RzRmlsZSA9IFRTLnRlc3Qoc291cmNlU3ltYm9sLmZpbGVQYXRoKTtcbiAgICBpZiAodGhpcy5zdW1tYXJ5UmVzb2x2ZXIuaXNMaWJyYXJ5RmlsZShzb3VyY2VTeW1ib2wuZmlsZVBhdGgpICYmICFpc1RzRmlsZSAmJiBtZXRhZGF0YSAmJlxuICAgICAgICBtZXRhZGF0YVsnX19zeW1ib2xpYyddID09PSAnY2xhc3MnKSB7XG4gICAgICBjb25zdCB0cmFuc2Zvcm1lZE1ldGEgPSB7X19zeW1ib2xpYzogJ2NsYXNzJywgYXJpdHk6IG1ldGFkYXRhLmFyaXR5fTtcbiAgICAgIHJldHVybiBuZXcgUmVzb2x2ZWRTdGF0aWNTeW1ib2woc291cmNlU3ltYm9sLCB0cmFuc2Zvcm1lZE1ldGEpO1xuICAgIH1cblxuICAgIGxldCBfb3JpZ2luYWxGaWxlTWVtbzogc3RyaW5nfHVuZGVmaW5lZDtcbiAgICBjb25zdCBnZXRPcmlnaW5hbE5hbWU6ICgpID0+IHN0cmluZyA9ICgpID0+IHtcbiAgICAgIGlmICghX29yaWdpbmFsRmlsZU1lbW8pIHtcbiAgICAgICAgLy8gR3Vlc3Mgd2hhdCB0aGUgb3JpZ2luYWwgZmlsZSBuYW1lIGlzIGZyb20gdGhlIHJlZmVyZW5jZS4gSWYgaXQgaGFzIGEgYC5kLnRzYCBleHRlbnNpb25cbiAgICAgICAgLy8gcmVwbGFjZSBpdCB3aXRoIGAudHNgLiBJZiBpdCBhbHJlYWR5IGhhcyBgLnRzYCBqdXN0IGxlYXZlIGl0IGluIHBsYWNlLiBJZiBpdCBkb2Vzbid0IGhhdmVcbiAgICAgICAgLy8gLnRzIG9yIC5kLnRzLCBhcHBlbmQgYC50cycuIEFsc28sIGlmIGl0IGlzIGluIGBub2RlX21vZHVsZXNgLCB0cmltIHRoZSBgbm9kZV9tb2R1bGVgXG4gICAgICAgIC8vIGxvY2F0aW9uIGFzIGl0IGlzIG5vdCBpbXBvcnRhbnQgdG8gZmluZGluZyB0aGUgZmlsZS5cbiAgICAgICAgX29yaWdpbmFsRmlsZU1lbW8gPVxuICAgICAgICAgICAgdGhpcy5ob3N0LmdldE91dHB1dE5hbWUodG9wTGV2ZWxQYXRoLnJlcGxhY2UoLygoXFwudHMpfChcXC5kXFwudHMpfCkkLywgJy50cycpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnJlcGxhY2UoL14uKm5vZGVfbW9kdWxlc1svXFxcXF0vLCAnJykpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIF9vcmlnaW5hbEZpbGVNZW1vO1xuICAgIH07XG5cbiAgICBjb25zdCBzZWxmID0gdGhpcztcblxuICAgIGNsYXNzIFJlZmVyZW5jZVRyYW5zZm9ybWVyIGV4dGVuZHMgVmFsdWVUcmFuc2Zvcm1lciB7XG4gICAgICB2aXNpdFN0cmluZ01hcChtYXA6IHtba2V5OiBzdHJpbmddOiBhbnl9LCBmdW5jdGlvblBhcmFtczogc3RyaW5nW10pOiBhbnkge1xuICAgICAgICBjb25zdCBzeW1ib2xpYyA9IG1hcFsnX19zeW1ib2xpYyddO1xuICAgICAgICBpZiAoc3ltYm9saWMgPT09ICdmdW5jdGlvbicpIHtcbiAgICAgICAgICBjb25zdCBvbGRMZW4gPSBmdW5jdGlvblBhcmFtcy5sZW5ndGg7XG4gICAgICAgICAgZnVuY3Rpb25QYXJhbXMucHVzaCguLi4obWFwWydwYXJhbWV0ZXJzJ10gfHwgW10pKTtcbiAgICAgICAgICBjb25zdCByZXN1bHQgPSBzdXBlci52aXNpdFN0cmluZ01hcChtYXAsIGZ1bmN0aW9uUGFyYW1zKTtcbiAgICAgICAgICBmdW5jdGlvblBhcmFtcy5sZW5ndGggPSBvbGRMZW47XG4gICAgICAgICAgcmV0dXJuIHJlc3VsdDtcbiAgICAgICAgfSBlbHNlIGlmIChzeW1ib2xpYyA9PT0gJ3JlZmVyZW5jZScpIHtcbiAgICAgICAgICBjb25zdCBtb2R1bGUgPSBtYXBbJ21vZHVsZSddO1xuICAgICAgICAgIGNvbnN0IG5hbWUgPSBtYXBbJ25hbWUnXSA/IHVuZXNjYXBlSWRlbnRpZmllcihtYXBbJ25hbWUnXSkgOiBtYXBbJ25hbWUnXTtcbiAgICAgICAgICBpZiAoIW5hbWUpIHtcbiAgICAgICAgICAgIHJldHVybiBudWxsO1xuICAgICAgICAgIH1cbiAgICAgICAgICBsZXQgZmlsZVBhdGg6IHN0cmluZztcbiAgICAgICAgICBpZiAobW9kdWxlKSB7XG4gICAgICAgICAgICBmaWxlUGF0aCA9IHNlbGYucmVzb2x2ZU1vZHVsZShtb2R1bGUsIHNvdXJjZVN5bWJvbC5maWxlUGF0aCkgITtcbiAgICAgICAgICAgIGlmICghZmlsZVBhdGgpIHtcbiAgICAgICAgICAgICAgcmV0dXJuIHtcbiAgICAgICAgICAgICAgICBfX3N5bWJvbGljOiAnZXJyb3InLFxuICAgICAgICAgICAgICAgIG1lc3NhZ2U6IGBDb3VsZCBub3QgcmVzb2x2ZSAke21vZHVsZX0gcmVsYXRpdmUgdG8gJHtcbiAgICAgICAgICAgICAgICAgICAgc2VsZi5ob3N0LmdldE1ldGFkYXRhRm9yKHNvdXJjZVN5bWJvbC5maWxlUGF0aCl9LmAsXG4gICAgICAgICAgICAgICAgbGluZTogbWFwWydsaW5lJ10sXG4gICAgICAgICAgICAgICAgY2hhcmFjdGVyOiBtYXBbJ2NoYXJhY3RlciddLFxuICAgICAgICAgICAgICAgIGZpbGVOYW1lOiBnZXRPcmlnaW5hbE5hbWUoKVxuICAgICAgICAgICAgICB9O1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgcmV0dXJuIHtcbiAgICAgICAgICAgICAgX19zeW1ib2xpYzogJ3Jlc29sdmVkJyxcbiAgICAgICAgICAgICAgc3ltYm9sOiBzZWxmLmdldFN0YXRpY1N5bWJvbChmaWxlUGF0aCwgbmFtZSksXG4gICAgICAgICAgICAgIGxpbmU6IG1hcFsnbGluZSddLFxuICAgICAgICAgICAgICBjaGFyYWN0ZXI6IG1hcFsnY2hhcmFjdGVyJ10sXG4gICAgICAgICAgICAgIGZpbGVOYW1lOiBnZXRPcmlnaW5hbE5hbWUoKVxuICAgICAgICAgICAgfTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGZ1bmN0aW9uUGFyYW1zLmluZGV4T2YobmFtZSkgPj0gMCkge1xuICAgICAgICAgICAgLy8gcmVmZXJlbmNlIHRvIGEgZnVuY3Rpb24gcGFyYW1ldGVyXG4gICAgICAgICAgICByZXR1cm4ge19fc3ltYm9saWM6ICdyZWZlcmVuY2UnLCBuYW1lOiBuYW1lfTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgaWYgKHRvcExldmVsU3ltYm9sTmFtZXMuaGFzKG5hbWUpKSB7XG4gICAgICAgICAgICAgIHJldHVybiBzZWxmLmdldFN0YXRpY1N5bWJvbCh0b3BMZXZlbFBhdGgsIG5hbWUpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgLy8gYW1iaWVudCB2YWx1ZVxuICAgICAgICAgICAgbnVsbDtcbiAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSBpZiAoc3ltYm9saWMgPT09ICdlcnJvcicpIHtcbiAgICAgICAgICByZXR1cm4gey4uLm1hcCwgZmlsZU5hbWU6IGdldE9yaWdpbmFsTmFtZSgpfTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXR1cm4gc3VwZXIudmlzaXRTdHJpbmdNYXAobWFwLCBmdW5jdGlvblBhcmFtcyk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgY29uc3QgdHJhbnNmb3JtZWRNZXRhID0gdmlzaXRWYWx1ZShtZXRhZGF0YSwgbmV3IFJlZmVyZW5jZVRyYW5zZm9ybWVyKCksIFtdKTtcbiAgICBsZXQgdW53cmFwcGVkVHJhbnNmb3JtZWRNZXRhID0gdW53cmFwUmVzb2x2ZWRNZXRhZGF0YSh0cmFuc2Zvcm1lZE1ldGEpO1xuICAgIGlmICh1bndyYXBwZWRUcmFuc2Zvcm1lZE1ldGEgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICAgIHJldHVybiB0aGlzLmNyZWF0ZUV4cG9ydChzb3VyY2VTeW1ib2wsIHVud3JhcHBlZFRyYW5zZm9ybWVkTWV0YSk7XG4gICAgfVxuICAgIHJldHVybiBuZXcgUmVzb2x2ZWRTdGF0aWNTeW1ib2woc291cmNlU3ltYm9sLCB0cmFuc2Zvcm1lZE1ldGEpO1xuICB9XG5cbiAgcHJpdmF0ZSBjcmVhdGVFeHBvcnQoc291cmNlU3ltYm9sOiBTdGF0aWNTeW1ib2wsIHRhcmdldFN5bWJvbDogU3RhdGljU3ltYm9sKTpcbiAgICAgIFJlc29sdmVkU3RhdGljU3ltYm9sIHtcbiAgICBzb3VyY2VTeW1ib2wuYXNzZXJ0Tm9NZW1iZXJzKCk7XG4gICAgdGFyZ2V0U3ltYm9sLmFzc2VydE5vTWVtYmVycygpO1xuICAgIGlmICh0aGlzLnN1bW1hcnlSZXNvbHZlci5pc0xpYnJhcnlGaWxlKHNvdXJjZVN5bWJvbC5maWxlUGF0aCkgJiZcbiAgICAgICAgdGhpcy5zdW1tYXJ5UmVzb2x2ZXIuaXNMaWJyYXJ5RmlsZSh0YXJnZXRTeW1ib2wuZmlsZVBhdGgpKSB7XG4gICAgICAvLyBUaGlzIGNhc2UgaXMgZm9yIGFuIG5nIGxpYnJhcnkgaW1wb3J0aW5nIHN5bWJvbHMgZnJvbSBhIHBsYWluIHRzIGxpYnJhcnlcbiAgICAgIC8vIHRyYW5zaXRpdmVseS5cbiAgICAgIC8vIE5vdGU6IFdlIHJlbHkgb24gdGhlIGZhY3QgdGhhdCB3ZSBkaXNjb3ZlciBzeW1ib2xzIGluIHRoZSBkaXJlY3Rpb25cbiAgICAgIC8vIGZyb20gc291cmNlIGZpbGVzIHRvIGxpYnJhcnkgZmlsZXNcbiAgICAgIHRoaXMuaW1wb3J0QXMuc2V0KHRhcmdldFN5bWJvbCwgdGhpcy5nZXRJbXBvcnRBcyhzb3VyY2VTeW1ib2wpIHx8IHNvdXJjZVN5bWJvbCk7XG4gICAgfVxuICAgIHJldHVybiBuZXcgUmVzb2x2ZWRTdGF0aWNTeW1ib2woc291cmNlU3ltYm9sLCB0YXJnZXRTeW1ib2wpO1xuICB9XG5cbiAgcHJpdmF0ZSByZXBvcnRFcnJvcihlcnJvcjogRXJyb3IsIGNvbnRleHQ/OiBTdGF0aWNTeW1ib2wsIHBhdGg/OiBzdHJpbmcpIHtcbiAgICBpZiAodGhpcy5lcnJvclJlY29yZGVyKSB7XG4gICAgICB0aGlzLmVycm9yUmVjb3JkZXIoZXJyb3IsIChjb250ZXh0ICYmIGNvbnRleHQuZmlsZVBhdGgpIHx8IHBhdGgpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aHJvdyBlcnJvcjtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQHBhcmFtIG1vZHVsZSBhbiBhYnNvbHV0ZSBwYXRoIHRvIGEgbW9kdWxlIGZpbGUuXG4gICAqL1xuICBwcml2YXRlIGdldE1vZHVsZU1ldGFkYXRhKG1vZHVsZTogc3RyaW5nKToge1trZXk6IHN0cmluZ106IGFueX0ge1xuICAgIGxldCBtb2R1bGVNZXRhZGF0YSA9IHRoaXMubWV0YWRhdGFDYWNoZS5nZXQobW9kdWxlKTtcbiAgICBpZiAoIW1vZHVsZU1ldGFkYXRhKSB7XG4gICAgICBjb25zdCBtb2R1bGVNZXRhZGF0YXMgPSB0aGlzLmhvc3QuZ2V0TWV0YWRhdGFGb3IobW9kdWxlKTtcbiAgICAgIGlmIChtb2R1bGVNZXRhZGF0YXMpIHtcbiAgICAgICAgbGV0IG1heFZlcnNpb24gPSAtMTtcbiAgICAgICAgbW9kdWxlTWV0YWRhdGFzLmZvckVhY2goKG1kKSA9PiB7XG4gICAgICAgICAgaWYgKG1kICYmIG1kWyd2ZXJzaW9uJ10gPiBtYXhWZXJzaW9uKSB7XG4gICAgICAgICAgICBtYXhWZXJzaW9uID0gbWRbJ3ZlcnNpb24nXTtcbiAgICAgICAgICAgIG1vZHVsZU1ldGFkYXRhID0gbWQ7XG4gICAgICAgICAgfVxuICAgICAgICB9KTtcbiAgICAgIH1cbiAgICAgIGlmICghbW9kdWxlTWV0YWRhdGEpIHtcbiAgICAgICAgbW9kdWxlTWV0YWRhdGEgPVxuICAgICAgICAgICAge19fc3ltYm9saWM6ICdtb2R1bGUnLCB2ZXJzaW9uOiBTVVBQT1JURURfU0NIRU1BX1ZFUlNJT04sIG1vZHVsZTogbW9kdWxlLCBtZXRhZGF0YToge319O1xuICAgICAgfVxuICAgICAgaWYgKG1vZHVsZU1ldGFkYXRhWyd2ZXJzaW9uJ10gIT0gU1VQUE9SVEVEX1NDSEVNQV9WRVJTSU9OKSB7XG4gICAgICAgIGNvbnN0IGVycm9yTWVzc2FnZSA9IG1vZHVsZU1ldGFkYXRhWyd2ZXJzaW9uJ10gPT0gMiA/XG4gICAgICAgICAgICBgVW5zdXBwb3J0ZWQgbWV0YWRhdGEgdmVyc2lvbiAke21vZHVsZU1ldGFkYXRhWyd2ZXJzaW9uJ119IGZvciBtb2R1bGUgJHttb2R1bGV9LiBUaGlzIG1vZHVsZSBzaG91bGQgYmUgY29tcGlsZWQgd2l0aCBhIG5ld2VyIHZlcnNpb24gb2YgbmdjYCA6XG4gICAgICAgICAgICBgTWV0YWRhdGEgdmVyc2lvbiBtaXNtYXRjaCBmb3IgbW9kdWxlICR7dGhpcy5ob3N0LmdldE91dHB1dE5hbWUobW9kdWxlKX0sIGZvdW5kIHZlcnNpb24gJHttb2R1bGVNZXRhZGF0YVsndmVyc2lvbiddfSwgZXhwZWN0ZWQgJHtTVVBQT1JURURfU0NIRU1BX1ZFUlNJT059YDtcbiAgICAgICAgdGhpcy5yZXBvcnRFcnJvcihuZXcgRXJyb3IoZXJyb3JNZXNzYWdlKSk7XG4gICAgICB9XG4gICAgICB0aGlzLm1ldGFkYXRhQ2FjaGUuc2V0KG1vZHVsZSwgbW9kdWxlTWV0YWRhdGEpO1xuICAgIH1cbiAgICByZXR1cm4gbW9kdWxlTWV0YWRhdGE7XG4gIH1cblxuXG4gIGdldFN5bWJvbEJ5TW9kdWxlKG1vZHVsZTogc3RyaW5nLCBzeW1ib2xOYW1lOiBzdHJpbmcsIGNvbnRhaW5pbmdGaWxlPzogc3RyaW5nKTogU3RhdGljU3ltYm9sIHtcbiAgICBjb25zdCBmaWxlUGF0aCA9IHRoaXMucmVzb2x2ZU1vZHVsZShtb2R1bGUsIGNvbnRhaW5pbmdGaWxlKTtcbiAgICBpZiAoIWZpbGVQYXRoKSB7XG4gICAgICB0aGlzLnJlcG9ydEVycm9yKFxuICAgICAgICAgIG5ldyBFcnJvcihgQ291bGQgbm90IHJlc29sdmUgbW9kdWxlICR7bW9kdWxlfSR7Y29udGFpbmluZ0ZpbGUgPyAnIHJlbGF0aXZlIHRvICcgK1xuICAgICAgICAgICAgdGhpcy5ob3N0LmdldE91dHB1dE5hbWUoY29udGFpbmluZ0ZpbGUpIDogJyd9YCkpO1xuICAgICAgcmV0dXJuIHRoaXMuZ2V0U3RhdGljU3ltYm9sKGBFUlJPUjoke21vZHVsZX1gLCBzeW1ib2xOYW1lKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuZ2V0U3RhdGljU3ltYm9sKGZpbGVQYXRoLCBzeW1ib2xOYW1lKTtcbiAgfVxuXG4gIHByaXZhdGUgcmVzb2x2ZU1vZHVsZShtb2R1bGU6IHN0cmluZywgY29udGFpbmluZ0ZpbGU/OiBzdHJpbmcpOiBzdHJpbmd8bnVsbCB7XG4gICAgdHJ5IHtcbiAgICAgIHJldHVybiB0aGlzLmhvc3QubW9kdWxlTmFtZVRvRmlsZU5hbWUobW9kdWxlLCBjb250YWluaW5nRmlsZSk7XG4gICAgfSBjYXRjaCAoZSkge1xuICAgICAgY29uc29sZS5lcnJvcihgQ291bGQgbm90IHJlc29sdmUgbW9kdWxlICcke21vZHVsZX0nIHJlbGF0aXZlIHRvIGZpbGUgJHtjb250YWluaW5nRmlsZX1gKTtcbiAgICAgIHRoaXMucmVwb3J0RXJyb3IoZSwgdW5kZWZpbmVkLCBjb250YWluaW5nRmlsZSk7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbi8vIFJlbW92ZSBleHRyYSB1bmRlcnNjb3JlIGZyb20gZXNjYXBlZCBpZGVudGlmaWVyLlxuLy8gU2VlIGh0dHBzOi8vZ2l0aHViLmNvbS9NaWNyb3NvZnQvVHlwZVNjcmlwdC9ibG9iL21hc3Rlci9zcmMvY29tcGlsZXIvdXRpbGl0aWVzLnRzXG5leHBvcnQgZnVuY3Rpb24gdW5lc2NhcGVJZGVudGlmaWVyKGlkZW50aWZpZXI6IHN0cmluZyk6IHN0cmluZyB7XG4gIHJldHVybiBpZGVudGlmaWVyLnN0YXJ0c1dpdGgoJ19fXycpID8gaWRlbnRpZmllci5zdWJzdHIoMSkgOiBpZGVudGlmaWVyO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gdW53cmFwUmVzb2x2ZWRNZXRhZGF0YShtZXRhZGF0YTogYW55KTogYW55IHtcbiAgaWYgKG1ldGFkYXRhICYmIG1ldGFkYXRhLl9fc3ltYm9saWMgPT09ICdyZXNvbHZlZCcpIHtcbiAgICByZXR1cm4gbWV0YWRhdGEuc3ltYm9sO1xuICB9XG4gIHJldHVybiBtZXRhZGF0YTtcbn1cbiJdfQ==