.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;

.field final synthetic b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$2;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$2;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraManager;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method
