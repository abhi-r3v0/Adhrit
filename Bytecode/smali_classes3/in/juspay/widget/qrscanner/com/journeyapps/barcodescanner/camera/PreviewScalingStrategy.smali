.class public abstract Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public a(Ljava/util/List;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
            ">;",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
            ")",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->b(Ljava/util/List;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    return-object p1
.end method

.method public abstract b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
.end method

.method public b(Ljava/util/List;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
            ">;",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
            ")",
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;

    invoke-direct {v0, p0, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method
