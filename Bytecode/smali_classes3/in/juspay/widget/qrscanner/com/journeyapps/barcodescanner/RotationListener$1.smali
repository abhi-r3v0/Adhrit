.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener$1;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;->a(Landroid/content/Context;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;Landroid/content/Context;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 41
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 45
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;->c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 46
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-static {v1, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;I)I

    .line 47
    invoke-interface {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;->a(I)V

    :cond_0
    return-void
.end method
