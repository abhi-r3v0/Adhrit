.class public Lcom/freshchat/consumer/sdk/j/ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/ac$a;,
        Lcom/freshchat/consumer/sdk/j/ac$c;,
        Lcom/freshchat/consumer/sdk/j/ac$b;,
        Lcom/freshchat/consumer/sdk/j/ac$d;
    }
.end annotation


# static fields
.field private static hL:Ljava/text/SimpleDateFormat;

.field private static final hM:[Ljava/lang/String;

.field private static final hN:[I

.field private static final hO:[B

.field private static final hP:[Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hQ:[Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hR:[Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hS:[Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hT:[Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hU:[[Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hV:[Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hW:[I

.field private static final hX:Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hY:Lcom/freshchat/consumer/sdk/j/ac$c;

.field private static final hZ:[Ljava/util/HashMap;

.field private static final ia:[Ljava/util/HashMap;

.field private static final ib:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ic:Ljava/nio/charset/Charset;

.field private static final ie:[B

.field private static final il:Ljava/util/regex/Pattern;

.field private static final im:Ljava/util/regex/Pattern;


# instance fields
.field private final if:Ljava/lang/String;

.field private final ig:[Ljava/util/HashMap;

.field private ih:Ljava/nio/ByteOrder;

.field private ii:Z

.field private ij:I

.field private ik:I


# direct methods
.method static constructor <clinit>()V
    .locals 35

    const-string v0, ""

    const-string v1, "BYTE"

    const-string v2, "STRING"

    const-string v3, "USHORT"

    const-string v4, "ULONG"

    const-string v5, "URATIONAL"

    const-string v6, "SBYTE"

    const-string v7, "UNDEFINED"

    const-string v8, "SSHORT"

    const-string v9, "SLONG"

    const-string v10, "SRATIONAL"

    const-string v11, "SINGLE"

    const-string v12, "DOUBLE"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hM:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hN:[I

    const/16 v1, 0x8

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/freshchat/consumer/sdk/j/ac;->hO:[B

    const/16 v2, 0x20

    new-array v2, v2, [Lcom/freshchat/consumer/sdk/j/ac$c;

    new-instance v9, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v4, "ImageWidth"

    const/16 v5, 0x100

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/4 v3, 0x0

    aput-object v9, v2, v3

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v11, "ImageLength"

    const/16 v12, 0x101

    const/4 v13, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const/4 v7, 0x0

    const-string v8, "BitsPerSample"

    const/16 v9, 0x102

    invoke-direct {v4, v8, v9, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/4 v8, 0x2

    aput-object v4, v2, v8

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v9, "Compression"

    const/16 v10, 0x103

    invoke-direct {v4, v9, v10, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v6

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v9, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v4, v9, v10, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/4 v9, 0x4

    aput-object v4, v2, v9

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v10, "ImageDescription"

    const/16 v11, 0x10e

    invoke-direct {v4, v10, v11, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/4 v10, 0x5

    aput-object v4, v2, v10

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v11, "Make"

    const/16 v12, 0x10f

    invoke-direct {v4, v11, v12, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/4 v11, 0x6

    aput-object v4, v2, v11

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v12, "Model"

    const/16 v13, 0x110

    invoke-direct {v4, v12, v13, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/4 v12, 0x7

    aput-object v4, v2, v12

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "StripOffsets"

    const/16 v15, 0x111

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v1

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "Orientation"

    const/16 v14, 0x112

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x9

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v4, v14, v15, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0xa

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v16, "RowsPerStrip"

    const/16 v17, 0x116

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v4

    invoke-direct/range {v15 .. v20}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v15, 0xb

    aput-object v4, v2, v15

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v17, "StripByteCounts"

    const/16 v18, 0x117

    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v15, 0xc

    aput-object v4, v2, v15

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "XResolution"

    const/16 v14, 0x11a

    invoke-direct {v4, v15, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v0

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v4, v14, v15, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0xe

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "PlanarConfiguration"

    const/16 v14, 0x11c

    invoke-direct {v4, v15, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0xf

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "ResolutionUnit"

    const/16 v14, 0x128

    invoke-direct {v4, v15, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x10

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "TransferFunction"

    const/16 v14, 0x12d

    invoke-direct {v4, v15, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x11

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "Software"

    const/16 v14, 0x131

    invoke-direct {v4, v15, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x12

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "DateTime"

    const/16 v14, 0x132

    invoke-direct {v4, v15, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x13

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "Artist"

    const/16 v14, 0x13b

    invoke-direct {v4, v15, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x14

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "WhitePoint"

    const/16 v14, 0x13e

    invoke-direct {v4, v15, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x15

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "PrimaryChromaticities"

    const/16 v15, 0x13f

    invoke-direct {v4, v14, v15, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x16

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v4, v14, v15, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x17

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v4, v14, v15, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x18

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v4, v14, v15, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x19

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v4, v14, v15, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x1a

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v4, v14, v15, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x1b

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v4, v14, v15, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x1c

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "Copyright"

    const v15, 0x8298

    invoke-direct {v4, v14, v15, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x1d

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v4, v14, v15, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x1e

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v4, v14, v15, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0x1f

    aput-object v4, v2, v14

    sput-object v2, Lcom/freshchat/consumer/sdk/j/ac;->hP:[Lcom/freshchat/consumer/sdk/j/ac$c;

    const/16 v2, 0x39

    new-array v2, v2, [Lcom/freshchat/consumer/sdk/j/ac$c;

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v4, v14, v15, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v3

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "FNumber"

    const v15, 0x829d

    invoke-direct {v4, v14, v15, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v5

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v4, v14, v15, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v8

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v4, v14, v15, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v6

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v4, v14, v15, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v9

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "OECF"

    const v15, 0x8828

    invoke-direct {v4, v14, v15, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v10

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v4, v14, v15, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v11

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v4, v14, v15, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v12

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v4, v14, v15, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v1

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v4, v14, v15, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v14, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v4, v14, v15, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v14, 0xa

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v15, "ShutterSpeedValue"

    const v13, 0x9201

    invoke-direct {v4, v15, v13, v14, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0xb

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v4, v13, v15, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0xc

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v4, v13, v15, v14, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v0

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v4, v13, v15, v14, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0xe

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "MaxApertureValue"

    const v14, 0x9205

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0xf

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SubjectDistance"

    const v14, 0x9206

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x10

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "MeteringMode"

    const v14, 0x9207

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x11

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "LightSource"

    const v14, 0x9208

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x12

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "Flash"

    const v14, 0x9209

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x13

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "FocalLength"

    const v14, 0x920a

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x14

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SubjectArea"

    const v14, 0x9214

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x15

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "MakerNote"

    const v14, 0x927c

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x16

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "UserComment"

    const v14, 0x9286

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x17

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SubSecTime"

    const v14, 0x9290

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x18

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SubSecTimeOriginal"

    const v14, 0x9291

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x19

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SubSecTimeDigitized"

    const v14, 0x9292

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1a

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "FlashpixVersion"

    const v14, 0xa000

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1b

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "ColorSpace"

    const v14, 0xa001

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1c

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v24, "PixelXDimension"

    const v25, 0xa002

    const/16 v26, 0x3

    const/16 v27, 0x4

    const/16 v28, 0x0

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v28}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1d

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v24, "PixelYDimension"

    const v25, 0xa003

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v28}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1e

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "RelatedSoundFile"

    const v14, 0xa004

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1f

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "InteroperabilityIFDPointer"

    const v14, 0xa005

    invoke-direct {v4, v13, v14, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x20

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "FlashEnergy"

    const v14, 0xa20b

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x21

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SpatialFrequencyResponse"

    const v14, 0xa20c

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x22

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "FocalPlaneXResolution"

    const v14, 0xa20e

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x23

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "FocalPlaneYResolution"

    const v14, 0xa20f

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x24

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x25

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SubjectLocation"

    const v14, 0xa214

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x26

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "ExposureIndex"

    const v14, 0xa215

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x27

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SensingMethod"

    const v14, 0xa217

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x28

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "FileSource"

    const v14, 0xa300

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x29

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SceneType"

    const v14, 0xa301

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x2a

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "CFAPattern"

    const v14, 0xa302

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x2b

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "CustomRendered"

    const v14, 0xa401

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x2c

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "ExposureMode"

    const v14, 0xa402

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x2d

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "WhiteBalance"

    const v14, 0xa403

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x2e

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "DigitalZoomRatio"

    const v14, 0xa404

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x2f

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x30

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SceneCaptureType"

    const v14, 0xa406

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x31

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GainControl"

    const v14, 0xa407

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x32

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "Contrast"

    const v14, 0xa408

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x33

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "Saturation"

    const v14, 0xa409

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x34

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "Sharpness"

    const v14, 0xa40a

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x35

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "DeviceSettingDescription"

    const v14, 0xa40b

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x36

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "SubjectDistanceRange"

    const v14, 0xa40c

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x37

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "ImageUniqueID"

    const v14, 0xa420

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x38

    aput-object v4, v2, v13

    sput-object v2, Lcom/freshchat/consumer/sdk/j/ac;->hQ:[Lcom/freshchat/consumer/sdk/j/ac$c;

    const/16 v2, 0x1f

    new-array v2, v2, [Lcom/freshchat/consumer/sdk/j/ac$c;

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSVersionID"

    invoke-direct {v4, v13, v3, v5, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v3

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSLatitudeRef"

    invoke-direct {v4, v13, v5, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v5

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSLatitude"

    invoke-direct {v4, v13, v8, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v8

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSLongitudeRef"

    invoke-direct {v4, v13, v6, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v6

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSLongitude"

    invoke-direct {v4, v13, v9, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v9

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSAltitudeRef"

    invoke-direct {v4, v13, v10, v5, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v10

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSAltitude"

    invoke-direct {v4, v13, v11, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v11

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSTimeStamp"

    invoke-direct {v4, v13, v12, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v12

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSSatellites"

    invoke-direct {v4, v13, v1, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v1

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSStatus"

    const/16 v14, 0x9

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSMeasureMode"

    const/16 v14, 0xa

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDOP"

    const/16 v14, 0xb

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSSpeedRef"

    const/16 v14, 0xc

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSSpeed"

    invoke-direct {v4, v13, v0, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v0

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSTrackRef"

    const/16 v14, 0xe

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSTrack"

    const/16 v14, 0xf

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSImgDirectionRef"

    const/16 v14, 0x10

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSImgDirection"

    const/16 v14, 0x11

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSMapDatum"

    const/16 v14, 0x12

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDestLatitudeRef"

    const/16 v14, 0x13

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDestLatitude"

    const/16 v14, 0x14

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v14

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDestLongitudeRef"

    const/16 v14, 0x15

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x15

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDestLongitude"

    const/16 v14, 0x16

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x16

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDestBearingRef"

    const/16 v14, 0x17

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x17

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDestBearing"

    const/16 v14, 0x18

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x18

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDestDistanceRef"

    const/16 v14, 0x19

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x19

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDestDistance"

    const/16 v14, 0x1a

    invoke-direct {v4, v13, v14, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1a

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSProcessingMethod"

    const/16 v14, 0x1b

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1b

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSAreaInformation"

    const/16 v14, 0x1c

    invoke-direct {v4, v13, v14, v12, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1c

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDateStamp"

    const/16 v14, 0x1d

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1d

    aput-object v4, v2, v13

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "GPSDifferential"

    const/16 v14, 0x1e

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v13, 0x1e

    aput-object v4, v2, v13

    sput-object v2, Lcom/freshchat/consumer/sdk/j/ac;->hR:[Lcom/freshchat/consumer/sdk/j/ac$c;

    new-array v2, v5, [Lcom/freshchat/consumer/sdk/j/ac$c;

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "InteroperabilityIndex"

    invoke-direct {v4, v13, v5, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v3

    sput-object v2, Lcom/freshchat/consumer/sdk/j/ac;->hS:[Lcom/freshchat/consumer/sdk/j/ac$c;

    const/16 v2, 0x20

    new-array v2, v2, [Lcom/freshchat/consumer/sdk/j/ac$c;

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v24, "ThumbnailImageWidth"

    const/16 v25, 0x100

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v28}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v3

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v30, "ThumbnailImageLength"

    const/16 v31, 0x101

    const/16 v32, 0x3

    const/16 v33, 0x4

    const/16 v34, 0x0

    move-object/from16 v29, v4

    invoke-direct/range {v29 .. v34}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v5

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v8

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "Compression"

    const/16 v14, 0x103

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v6

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v9

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v10

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v13, "Make"

    const/16 v14, 0x10f

    invoke-direct {v4, v13, v14, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v11

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v11, "Model"

    const/16 v13, 0x110

    invoke-direct {v4, v11, v13, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v12

    new-instance v4, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v11, "StripOffsets"

    invoke-direct {v4, v11, v6, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v4, v2, v1

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v4, "Orientation"

    const/16 v11, 0x112

    invoke-direct {v1, v4, v11, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v4, 0x9

    aput-object v1, v2, v4

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v4, "SamplesPerPixel"

    const/16 v11, 0x115

    invoke-direct {v1, v4, v11, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v4, 0xa

    aput-object v1, v2, v4

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v23, "RowsPerStrip"

    const/16 v24, 0x116

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v12, "StripByteCounts"

    const/16 v13, 0x117

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IIILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v4, "XResolution"

    const/16 v11, 0x11a

    invoke-direct {v1, v4, v11, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v1, v2, v0

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "YResolution"

    const/16 v4, 0x11b

    invoke-direct {v0, v1, v4, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "PlanarConfiguration"

    const/16 v4, 0x11c

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0xf

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "ResolutionUnit"

    const/16 v4, 0x128

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x10

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "TransferFunction"

    const/16 v4, 0x12d

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x11

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "Software"

    const/16 v4, 0x131

    invoke-direct {v0, v1, v4, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x12

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "DateTime"

    const/16 v4, 0x132

    invoke-direct {v0, v1, v4, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x13

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "Artist"

    const/16 v4, 0x13b

    invoke-direct {v0, v1, v4, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x14

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "WhitePoint"

    const/16 v4, 0x13e

    invoke-direct {v0, v1, v4, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x15

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "PrimaryChromaticities"

    const/16 v4, 0x13f

    invoke-direct {v0, v1, v4, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x16

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v4, 0x201

    invoke-direct {v0, v1, v4, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x17

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v4, 0x202

    invoke-direct {v0, v1, v4, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x18

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "YCbCrCoefficients"

    const/16 v4, 0x211

    invoke-direct {v0, v1, v4, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x19

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "YCbCrSubSampling"

    const/16 v4, 0x212

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x1a

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "YCbCrPositioning"

    const/16 v4, 0x213

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x1b

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "ReferenceBlackWhite"

    const/16 v4, 0x214

    invoke-direct {v0, v1, v4, v10, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x1c

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "Copyright"

    const v4, 0x8298

    invoke-direct {v0, v1, v4, v8, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x1d

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v0, v1, v4, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x1e

    aput-object v0, v2, v1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v0, v1, v4, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    const/16 v1, 0x1f

    aput-object v0, v2, v1

    sput-object v2, Lcom/freshchat/consumer/sdk/j/ac;->hT:[Lcom/freshchat/consumer/sdk/j/ac$c;

    new-array v0, v10, [[Lcom/freshchat/consumer/sdk/j/ac$c;

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hP:[Lcom/freshchat/consumer/sdk/j/ac$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hQ:[Lcom/freshchat/consumer/sdk/j/ac$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hR:[Lcom/freshchat/consumer/sdk/j/ac$c;

    aput-object v1, v0, v8

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hS:[Lcom/freshchat/consumer/sdk/j/ac$c;

    aput-object v1, v0, v6

    aput-object v2, v0, v9

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hU:[[Lcom/freshchat/consumer/sdk/j/ac$c;

    new-array v0, v6, [Lcom/freshchat/consumer/sdk/j/ac$c;

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v2, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v1, v2, v4, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v2, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v1, v2, v4, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v2, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v1, v2, v4, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    aput-object v1, v0, v8

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hV:[Lcom/freshchat/consumer/sdk/j/ac$c;

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hW:[I

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hX:Lcom/freshchat/consumer/sdk/j/ac$c;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v9, v7}, Lcom/freshchat/consumer/sdk/j/ac$c;-><init>(Ljava/lang/String;IILcom/freshchat/consumer/sdk/j/ac$1;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hY:Lcom/freshchat/consumer/sdk/j/ac$c;

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hU:[[Lcom/freshchat/consumer/sdk/j/ac$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hZ:[Ljava/util/HashMap;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->ia:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v4, "ExposureTime"

    const-string v5, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->ib:Ljava/util/HashSet;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->ic:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->ie:[B

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hL:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hU:[[Lcom/freshchat/consumer/sdk/j/ac$c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hZ:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->ia:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hU:[[Lcom/freshchat/consumer/sdk/j/ac$c;

    aget-object v1, v1, v0

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    sget-object v6, Lcom/freshchat/consumer/sdk/j/ac;->hZ:[Ljava/util/HashMap;

    aget-object v6, v6, v0

    iget v7, v5, Lcom/freshchat/consumer/sdk/j/ac$c;->number:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/freshchat/consumer/sdk/j/ac;->ia:[Ljava/util/HashMap;

    aget-object v6, v6, v0

    iget-object v7, v5, Lcom/freshchat/consumer/sdk/j/ac$c;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->il:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/ac;->im:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hU:[[Lcom/freshchat/consumer/sdk/j/ac$c;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac;->if:Ljava/lang/String;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/ac;->eD()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/freshchat/consumer/sdk/j/ac$a;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    move/from16 v3, p2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eJ()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->a(Lcom/freshchat/consumer/sdk/j/ac$a;)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readShort()S

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eJ()J

    move-result-wide v5

    mul-int/lit8 v7, v4, 0xc

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->a(Lcom/freshchat/consumer/sdk/j/ac$a;)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-wide/16 v6, 0x4

    if-ge v5, v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readUnsignedShort()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readUnsignedShort()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eJ()J

    move-result-wide v11

    add-long/2addr v11, v6

    sget-object v6, Lcom/freshchat/consumer/sdk/j/ac;->hZ:[Ljava/util/HashMap;

    aget-object v6, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/freshchat/consumer/sdk/j/ac$c;

    const-string v7, "ExifInterface"

    if-eqz v6, :cond_b

    if-lez v9, :cond_b

    sget-object v13, Lcom/freshchat/consumer/sdk/j/ac;->hN:[I

    array-length v14, v13

    if-lt v9, v14, :cond_2

    goto/16 :goto_5

    :cond_2
    aget v13, v13, v9

    mul-int v13, v13, v10

    if-le v13, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eK()J

    move-result-wide v14

    move/from16 p2, v3

    int-to-long v2, v13

    add-long/2addr v2, v14

    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->a(Lcom/freshchat/consumer/sdk/j/ac$a;)J

    move-result-wide v16

    cmp-long v13, v2, v16

    if-gtz v13, :cond_3

    invoke-virtual {v1, v14, v15}, Lcom/freshchat/consumer/sdk/j/ac$a;->seek(J)V

    goto :goto_2

    :cond_3
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11, v12}, Lcom/freshchat/consumer/sdk/j/ac$a;->seek(J)V

    const/4 v3, 0x4

    goto/16 :goto_8

    :cond_4
    move/from16 p2, v3

    :goto_2
    invoke-static {v8}, Lcom/freshchat/consumer/sdk/j/ac;->t(I)I

    move-result v2

    if-ltz v2, :cond_a

    const-wide/16 v13, -0x1

    const/4 v3, 0x3

    if-eq v9, v3, :cond_8

    const/4 v3, 0x4

    if-eq v9, v3, :cond_7

    const/16 v6, 0x8

    if-eq v9, v6, :cond_6

    const/16 v6, 0x9

    if-eq v9, v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readInt()I

    move-result v6

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readShort()S

    move-result v6

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eK()J

    move-result-wide v13

    goto :goto_4

    :cond_8
    const/4 v3, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->readUnsignedShort()I

    move-result v6

    :goto_3
    int-to-long v13, v6

    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v6, v13, v8

    if-lez v6, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->a(Lcom/freshchat/consumer/sdk/j/ac$a;)J

    move-result-wide v8

    cmp-long v6, v13, v8

    if-gez v6, :cond_9

    invoke-virtual {v1, v13, v14}, Lcom/freshchat/consumer/sdk/j/ac$a;->seek(J)V

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/ac;->a(Lcom/freshchat/consumer/sdk/j/ac$a;I)V

    goto :goto_7

    :cond_9
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Skip jump into the IFD since its offset is invalid: "

    goto :goto_6

    :cond_a
    const/4 v3, 0x4

    sget-object v2, Lcom/freshchat/consumer/sdk/j/ac;->hN:[I

    aget v2, v2, v9

    mul-int v2, v2, v10

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/j/ac$a;->readFully([B)V

    iget-object v7, v0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    iget-object v6, v6, Lcom/freshchat/consumer/sdk/j/ac$c;->name:Ljava/lang/String;

    new-instance v8, Lcom/freshchat/consumer/sdk/j/ac$b;

    const/4 v13, 0x0

    invoke-direct {v8, v9, v10, v2, v13}, Lcom/freshchat/consumer/sdk/j/ac$b;-><init>(II[BLcom/freshchat/consumer/sdk/j/ac$1;)V

    invoke-virtual {v7, v6, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eJ()J

    move-result-wide v6

    cmp-long v2, v6, v11

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_b
    :goto_5
    move/from16 p2, v3

    const/4 v3, 0x4

    if-nez v6, :cond_c

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Skip the tag entry since tag number is not defined: "

    goto :goto_6

    :cond_c
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Skip the tag entry since data format is invalid: "

    :goto_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual {v1, v11, v12}, Lcom/freshchat/consumer/sdk/j/ac$a;->seek(J)V

    :cond_d
    :goto_8
    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    move/from16 v3, p2

    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eJ()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->a(Lcom/freshchat/consumer/sdk/j/ac$a;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gtz v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->eK()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    cmp-long v2, v4, v6

    if-lez v2, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ac$a;->a(Lcom/freshchat/consumer/sdk/j/ac$a;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_f

    invoke-virtual {v1, v4, v5}, Lcom/freshchat/consumer/sdk/j/ac$a;->seek(J)V

    const/4 v2, 0x4

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private a([BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ac$a;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/j/ac$a;-><init>([B)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/ac$a;->readShort()S

    move-result v1

    const/16 v2, 0x4949

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4d4d

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid byte order: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/ac$a;->a(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/ac$a;->readUnsignedShort()I

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/ac$a;->eK()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5

    array-length v5, p1

    int-to-long v5, v5

    cmp-long v7, v1, v5

    if-gez v7, :cond_5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/ac;->a(Lcom/freshchat/consumer/sdk/j/ac$a;I)V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hX:Lcom/freshchat/consumer/sdk/j/ac$c;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/j/ac$c;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hY:Lcom/freshchat/consumer/sdk/j/ac$c;

    iget-object v1, v1, Lcom/freshchat/consumer/sdk/j/ac$c;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/j/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    array-length p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v0

    if-lez v0, :cond_4

    if-lez p1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ii:Z

    add-int/2addr p2, v0

    iput p2, p0, Lcom/freshchat/consumer/sdk/j/ac;->ij:I

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ik:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid first Ifd offset: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid exif start: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private aC(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/ac$b;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hU:[[Lcom/freshchat/consumer/sdk/j/ac$c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/freshchat/consumer/sdk/j/ac$b;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    const-string v2, "Invalid marker: "

    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_e

    const/4 v1, 0x2

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    if-ne v4, v3, :cond_d

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    add-int/2addr v2, v4

    const/16 v6, -0x27

    if-eq v5, v6, :cond_c

    const/16 v6, -0x26

    if-eq v5, v6, :cond_c

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    sub-int/2addr v6, v1

    add-int/2addr v2, v1

    const-string v7, "Invalid length"

    if-ltz v6, :cond_b

    const/16 v8, -0x1f

    const-string v9, "Invalid exif"

    const/4 v10, 0x0

    if-eq v5, v8, :cond_4

    const/4 v8, -0x2

    if-eq v5, v8, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v4, v4, v10

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v8, v5

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v5}, Lcom/freshchat/consumer/sdk/j/ac$b;->a(JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v5

    const-string v8, "ImageLength"

    invoke-virtual {v4, v8, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v4, v4, v10

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v8, v5

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v5}, Lcom/freshchat/consumer/sdk/j/ac$b;->a(JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v5

    const-string v8, "ImageWidth"

    invoke-virtual {v4, v8, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x5

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid SOFx"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array v5, v6, [B

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v6, :cond_3

    const-string v6, "UserComment"

    invoke-virtual {p0, v6}, Lcom/freshchat/consumer/sdk/j/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v4, v8, v4

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/freshchat/consumer/sdk/j/ac;->ic:Ljava/nio/charset/Charset;

    invoke-direct {v8, v5, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, Lcom/freshchat/consumer/sdk/j/ac$b;->aD(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v4, 0x6

    if-lt v6, v4, :cond_8

    new-array v5, v4, [B

    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v4, :cond_7

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v6, v6, -0x6

    sget-object v4, Lcom/freshchat/consumer/sdk/j/ac;->ie:[B

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_8

    if-lez v6, :cond_6

    new-array v4, v6, [B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v6, :cond_5

    invoke-direct {p0, v4, v2}, Lcom/freshchat/consumer/sdk/j/ac;->a([BI)V

    add-int/2addr v2, v6

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    if-ltz v6, :cond_a

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v6, :cond_9

    add-int/2addr v2, v6

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid JPEG segment"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return-void

    :cond_d
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid marker:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v1, v4, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private eD()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac;->if:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/freshchat/consumer/sdk/j/ac;->hU:[[Lcom/freshchat/consumer/sdk/j/ac$c;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/j/ac;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/ac;->eE()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ExifInterface"

    const-string v2, "Invalid image."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/ac;->eE()V

    return-void

    :goto_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/ac;->eE()V

    throw v0
.end method

.method private eE()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ac$b;->aD(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v0

    const-string v3, "DateTime"

    invoke-virtual {v2, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lcom/freshchat/consumer/sdk/j/ac$b;->a(JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lcom/freshchat/consumer/sdk/j/ac$b;->a(JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v2}, Lcom/freshchat/consumer/sdk/j/ac$b;->a(JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ig:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v2}, Lcom/freshchat/consumer/sdk/j/ac$b;->a(JLjava/nio/ByteOrder;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method static synthetic eF()[I
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hN:[I

    return-object v0
.end method

.method static synthetic eG()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ac;->ic:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic eH()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hM:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic eI()[B
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ac;->hO:[B

    return-object v0
.end method

.method private static t(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hW:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ac;->hV:[Lcom/freshchat/consumer/sdk/j/ac$c;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/freshchat/consumer/sdk/j/ac$c;->number:I

    if-ne v1, p0, :cond_0

    sget-object p0, Lcom/freshchat/consumer/sdk/j/ac;->hW:[I

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ac;->aC(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/freshchat/consumer/sdk/j/ac;->ib:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/ac$b;->e(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Lcom/freshchat/consumer/sdk/j/ac$b;->format:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    iget p1, v0, Lcom/freshchat/consumer/sdk/j/ac$b;->format:I

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ac$b;->a(Lcom/freshchat/consumer/sdk/j/ac$b;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/freshchat/consumer/sdk/j/ac$d;

    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    return-object v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/freshchat/consumer/sdk/j/ac$d;->iu:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/freshchat/consumer/sdk/j/ac$d;->iv:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/freshchat/consumer/sdk/j/ac$d;->iu:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/freshchat/consumer/sdk/j/ac$d;->iv:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/freshchat/consumer/sdk/j/ac$d;->iu:J

    long-to-float v2, v2

    aget-object p1, p1, v1

    iget-wide v3, p1, Lcom/freshchat/consumer/sdk/j/ac$d;->iv:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/ac$b;->c(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_4
    return-object v1
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/ac;->aC(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/ac$b;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ac;->ih:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/j/ac$b;->d(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method
