.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->b(Ljava/util/List;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

.field final synthetic b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)I
    .locals 2

    .line 62
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {v0, p1, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)F

    move-result p1

    .line 63
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {v0, p2, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)F

    move-result p2

    .line 65
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    check-cast p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy$1;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1
.end method
