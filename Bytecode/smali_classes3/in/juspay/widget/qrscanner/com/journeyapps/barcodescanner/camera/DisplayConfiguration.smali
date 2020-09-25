.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

.field private c:I

.field private d:Z

.field private e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->d:Z

    .line 19
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitCenterStrategy;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitCenterStrategy;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    .line 26
    iput p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->c:I

    .line 27
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 31
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->c:I

    return v0
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 2

    .line 97
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {v0, p1, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;Z)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
            ">;Z)",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Z)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object p2

    .line 85
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    invoke-virtual {v0, p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->a(Ljava/util/List;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 1

    .line 51
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->e:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    return-void
.end method
