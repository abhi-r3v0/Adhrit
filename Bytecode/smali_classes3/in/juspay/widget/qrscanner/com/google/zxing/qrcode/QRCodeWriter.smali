.class public final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;III)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 9

    .line 87
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->a()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 91
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;->b()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;->a()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr p3, v2

    add-int v3, v0, p3

    add-int/2addr p3, v1

    .line 95
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 96
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 98
    div-int v3, p1, v3

    div-int p3, p2, p3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int v3, v0, p3

    sub-int v3, p1, v3

    .line 103
    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, p3

    sub-int v4, p2, v4

    .line 104
    div-int/lit8 v4, v4, 0x2

    .line 106
    new-instance v5, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-direct {v5, p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    move v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_1

    .line 111
    invoke-virtual {p0, v6, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;->a(II)B

    move-result v8

    if-ne v8, v2, :cond_0

    .line 112
    invoke-virtual {v5, v7, v4, p3, p3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, p3

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, p3

    goto :goto_0

    :cond_2
    return-object v5

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;II)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 46
    invoke-virtual/range {v0 .. v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;IILjava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;IILjava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/WriterException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;->QR_CODE:Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    .line 69
    sget-object p2, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v0, 0x4

    if-eqz p5, :cond_1

    .line 72
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object p2, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object p2

    .line 75
    :cond_0
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->MARGIN:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->MARGIN:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    :cond_1
    invoke-static {p1, p2, p5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;

    move-result-object p1

    .line 81
    invoke-static {p1, p3, p4, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeWriter;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;III)Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Requested dimensions are too small: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode QR_CODE, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
