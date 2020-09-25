.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitXYStrategy;
.super Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitXYStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitXYStrategy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method

.method private static a(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr v0, p0

    return v0

    :cond_0
    return p0
.end method


# virtual methods
.method protected a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)F
    .locals 3

    .line 37
    iget v0, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    if-lez v0, :cond_1

    iget v0, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget v0, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v0, v0

    iget v1, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitXYStrategy;->a(F)F

    move-result v0

    .line 41
    iget v1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float v1, v1

    iget v2, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitXYStrategy;->a(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    div-float/2addr v0, v1

    .line 45
    iget v1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iget p1, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    iget p2, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    div-float/2addr v1, p1

    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitXYStrategy;->a(F)F

    move-result p1

    div-float/2addr v2, p1

    div-float/2addr v2, p1

    div-float/2addr v2, p1

    mul-float v0, v0, v2

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 2

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget p2, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method
