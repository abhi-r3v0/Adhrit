.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

.field protected b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;

.field private final c:I


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/Result;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->c:I

    .line 32
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    .line 33
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;I)V
    .locals 7

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 38
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getX()F

    move-result v0

    int-to-float p4, p4

    div-float v2, v0, p4

    .line 39
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getY()F

    move-result p2

    div-float v3, p2, p4

    .line 40
    invoke-virtual {p3}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getX()F

    move-result p2

    div-float v4, p2, p4

    .line 41
    invoke-virtual {p3}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getY()F

    move-result p2

    div-float v5, p2, p4

    move-object v1, p0

    move-object v6, p1

    .line 38
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBarcodeFormat()Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;
    .locals 1

    .line 136
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->d()Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 58
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapScaleFactor()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getBitmapWithResultPoints(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 66
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->c()[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 70
    array-length v2, v1

    if-lez v2, :cond_5

    if-eqz v0, :cond_5

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 72
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 73
    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 75
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    array-length p1, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    const/high16 p1, 0x40800000    # 4.0f

    .line 77
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    aget-object p1, v1, v5

    aget-object v1, v1, v4

    invoke-static {v3, v0, p1, v1, v6}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;I)V

    goto :goto_1

    .line 79
    :cond_0
    array-length p1, v1

    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    .line 80
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->d()Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    move-result-object p1

    sget-object v7, Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;->UPC_A:Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    if-eq p1, v7, :cond_1

    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    .line 81
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->d()Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    move-result-object p1

    sget-object v7, Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;->EAN_13:Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    if-ne p1, v7, :cond_2

    .line 83
    :cond_1
    aget-object p1, v1, v5

    aget-object v4, v1, v4

    invoke-static {v3, v0, p1, v4, v6}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;I)V

    .line 84
    aget-object p1, v1, v6

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v3, v0, p1, v1, v6}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;I)V

    goto :goto_1

    :cond_2
    const/high16 p1, 0x41200000    # 10.0f

    .line 86
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    array-length p1, v1

    :goto_0
    if-ge v5, p1, :cond_4

    aget-object v4, v1, v5

    if-eqz v4, :cond_3

    .line 89
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getX()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getY()F

    move-result v4

    div-float/2addr v4, v7

    invoke-virtual {v3, v6, v4, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    move-object v0, v2

    :cond_5
    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 118
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 1

    .line 50
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResultPoints()[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;
    .locals 1

    .line 128
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->c()[Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 150
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Result;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
