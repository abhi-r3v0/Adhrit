.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;


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

    .line 210
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 214
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->d(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4$1;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
