.class public final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;->e:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method

.method private a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->b()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;->a()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->c()[B

    move-result-object p1

    .line 153
    invoke-static {p1, v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->a([BLin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;

    move-result-object p1

    .line 157
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    .line 158
    invoke-virtual {v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->a()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-array v2, v5, [B

    .line 164
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    .line 165
    invoke-virtual {v7}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->b()[B

    move-result-object v8

    .line 166
    invoke-virtual {v7}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataBlock;->a()I

    move-result v7

    .line 167
    invoke-direct {p0, v8, v7}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;->a([BI)V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_1

    add-int/lit8 v10, v6, 0x1

    .line 169
    aget-byte v11, v8, v9

    aput-byte v11, v2, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 174
    :cond_2
    invoke-static {v2, v0, v1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DecodedBitStreamParser;->a([BLin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;
        }
    .end annotation

    .line 186
    array-length v0, p1

    .line 188
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 190
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    :try_start_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonDecoder;->a([II)V
    :try_end_0
    .catch Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 200
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 195
    :catch_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;
        }
    .end annotation

    .line 91
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)V

    const/4 p1, 0x0

    .line 95
    :try_start_0
    invoke-direct {p0, v0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;

    move-result-object p1
    :try_end_0
    .catch Lin/juspay/widget/qrscanner/com/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    .line 105
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->d()V

    const/4 v2, 0x1

    .line 108
    invoke-virtual {v0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(Z)V

    .line 111
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->b()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    .line 114
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    .line 123
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->e()V

    .line 125
    invoke-direct {p0, v0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;

    move-result-object p2

    .line 128
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-direct {v0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {p2, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lin/juspay/widget/qrscanner/com/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p2

    :catch_2
    move-exception p2

    goto :goto_1

    :catch_3
    move-exception p2

    :goto_1
    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    .line 138
    throw v1

    .line 140
    :cond_0
    throw p2

    .line 135
    :cond_1
    throw p1
.end method
