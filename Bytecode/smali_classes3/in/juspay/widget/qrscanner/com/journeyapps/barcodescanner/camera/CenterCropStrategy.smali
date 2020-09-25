.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CenterCropStrategy;
.super Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CenterCropStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CenterCropStrategy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)F
    .locals 5

    .line 31
    iget v0, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    if-lez v0, :cond_2

    iget v0, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 36
    iget v1, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v1, v1

    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    div-float v1, p1, v1

    float-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    .line 42
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 50
    :cond_1
    iget v2, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v2, v2

    iget v3, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v0, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float v0, v0

    iget p2, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    add-float/2addr v2, v0

    div-float/2addr p1, v2

    div-float/2addr p1, v2

    mul-float v1, v1, p1

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 5

    .line 71
    invoke-virtual {p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object p1

    .line 74
    iget v0, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget v1, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 75
    iget v1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    iget p2, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    .line 77
    new-instance p2, Landroid/graphics/Rect;

    neg-int v2, v0

    neg-int v3, v1

    iget v4, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    sub-int/2addr v4, v0

    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    sub-int/2addr p1, v1

    invoke-direct {p2, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method
