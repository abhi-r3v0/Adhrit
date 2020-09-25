.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;->onAutoFocus(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    iget-object v0, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;Z)Z

    .line 71
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    iget-object v0, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager$2;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;->c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    return-void
.end method
