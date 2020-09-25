.class public Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/google/zxing/Reader;


# static fields
.field private static final a:[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;


# instance fields
.field private final b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    .line 48
    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;->a:[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method

.method private static a([ILin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 202
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    .line 203
    aget v3, p0, v2

    const/4 v4, 0x1

    .line 204
    aget v5, p0, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-ge v5, v0, :cond_1

    .line 208
    invoke-virtual {p1, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eq v4, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    xor-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eq v3, v1, :cond_2

    if-eq v5, v0, :cond_2

    .line 220
    aget p0, p0, v2

    sub-int/2addr v3, p0

    int-to-float p0, v3

    const/high16 p1, 0x40e00000    # 7.0f

    div-float/2addr p0, p1

    return p0

    .line 218
    :cond_2
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v1

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 127
    invoke-static {v0, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;->a([ILin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)F

    move-result v2

    const/4 v3, 0x1

    .line 129
    aget v4, v0, v3

    .line 130
    aget v5, v1, v3

    const/4 v6, 0x0

    .line 131
    aget v0, v0, v6

    .line 132
    aget v1, v1, v6

    if-ge v0, v1, :cond_b

    if-ge v4, v5, :cond_b

    sub-int v7, v5, v4

    sub-int v8, v1, v0

    if-eq v7, v8, :cond_1

    add-int v1, v0, v7

    .line 143
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    if-ge v1, v8, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    sub-int v8, v1, v0

    add-int/2addr v8, v3

    int-to-float v8, v8

    div-float/2addr v8, v2

    .line 149
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v3

    int-to-float v3, v7

    div-float/2addr v3, v2

    .line 150
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v8, :cond_a

    if-lez v3, :cond_a

    if-ne v3, v8, :cond_9

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    add-int/2addr v0, v7

    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v0

    sub-int/2addr v9, v1

    if-lez v9, :cond_3

    if-gt v9, v7, :cond_2

    sub-int/2addr v0, v9

    goto :goto_1

    .line 173
    :cond_2
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v3, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v4

    sub-int/2addr v1, v5

    if-lez v1, :cond_5

    if-gt v1, v7, :cond_4

    sub-int/2addr v4, v1

    goto :goto_2

    .line 182
    :cond_4
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 188
    :cond_5
    :goto_2
    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-direct {v1, v8, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_8

    int-to-float v7, v5

    mul-float v7, v7, v2

    float-to-int v7, v7

    add-int/2addr v7, v4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_7

    int-to-float v10, v9

    mul-float v10, v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v0

    .line 192
    invoke-virtual {p0, v10, v7}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 193
    invoke-virtual {v1, v9, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->set(II)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    return-object v1

    .line 156
    :cond_9
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 152
    :cond_a
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 136
    :cond_b
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 124
    :cond_c
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;->a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 74
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->b:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;->a()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v0, p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;

    move-result-object p1

    .line 77
    sget-object p2, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;->a:[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;->a()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/Detector;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/Detector;->a(Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DetectorResult;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DetectorResult;->a()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Decoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;

    move-result-object p2

    .line 81
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DetectorResult;->b()[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    move-result-object p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 85
    :goto_0
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->a([Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V

    .line 89
    :cond_1
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->a()[B

    move-result-object v2

    sget-object v3, Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;->QR_CODE:Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1, v2, p2, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;)V

    .line 90
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->c()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 92
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->c:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 94
    :cond_2
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->d()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 96
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->d:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 98
    :cond_3
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->f()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 99
    sget-object p2, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->j:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    .line 100
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 99
    invoke-virtual {v0, p2, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 101
    sget-object p2, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->k:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    .line 102
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 101
    invoke-virtual {v0, p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method
