.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$3;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    :try_start_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$3;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 186
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$3;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V

    return-void
.end method
