.class public Lo/CrashlyticsReportJsonTransform$$Lambda$5;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FID_4BIT_PREFIX:B

.field private static final FID_LENGTH:I = 0x16

.field private static final REMOVE_PREFIX_MASK:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "01110000"

    .line 29
    invoke-static {v1, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1

    sput-byte v1, Lo/CrashlyticsReportJsonTransform$$Lambda$5;->FID_4BIT_PREFIX:B

    const-string v1, "00001111"

    .line 35
    invoke-static {v1, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    sput-byte v0, Lo/CrashlyticsReportJsonTransform$$Lambda$5;->REMOVE_PREFIX_MASK:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeFidBase64UrlSafe([B)Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    .line 70
    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 75
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 p0, 0x0

    const/16 v1, 0x16

    .line 76
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBytesFromUUID(Ljava/util/UUID;[B)[B
    .locals 2

    .line 80
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createRandomFid()Ljava/lang/String;
    .locals 4

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const/16 v1, 0x11

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lo/CrashlyticsReportJsonTransform$$Lambda$5;->getBytesFromUUID(Ljava/util/UUID;[B)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    aget-byte v2, v0, v1

    const/16 v3, 0x10

    aput-byte v2, v0, v3

    .line 54
    sget-byte v2, Lo/CrashlyticsReportJsonTransform$$Lambda$5;->REMOVE_PREFIX_MASK:B

    aget-byte v3, v0, v1

    and-int/2addr v2, v3

    sget-byte v3, Lo/CrashlyticsReportJsonTransform$$Lambda$5;->FID_4BIT_PREFIX:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 55
    invoke-static {v0}, Lo/CrashlyticsReportJsonTransform$$Lambda$5;->encodeFidBase64UrlSafe([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
