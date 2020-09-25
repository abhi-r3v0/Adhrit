.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 191
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_prewiew_size_ready:I

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-static {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V

    const/4 p1, 0x1

    return p1

    .line 197
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lin/juspay/widget/qrscanner/R$id;->zxing_camera_error:I

    if-ne v0, v1, :cond_1

    .line 198
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    .line 200
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->d()V

    .line 203
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;->a(Ljava/lang/Exception;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
