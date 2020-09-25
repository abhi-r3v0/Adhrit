.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    new-instance p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-direct {p2, p3, p4}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-static {p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 187
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    return-void
.end method
