.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->d(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;

    invoke-direct {p2, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
