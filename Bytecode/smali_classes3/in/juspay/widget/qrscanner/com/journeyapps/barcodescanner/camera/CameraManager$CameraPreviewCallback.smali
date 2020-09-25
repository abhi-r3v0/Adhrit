.class final Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;

.field private c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    return-void
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;

    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 97
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 98
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v6

    .line 102
    :try_start_0
    new-instance p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;

    iget v4, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    iget v5, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->g()I

    move-result v7

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;-><init>([BIIII)V

    .line 103
    invoke-interface {v1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/SourceData;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 107
    invoke-interface {v1, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 113
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No resolution available"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
