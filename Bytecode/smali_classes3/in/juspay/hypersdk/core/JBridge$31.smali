.class Lin/juspay/hypersdk/core/JBridge$31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->stopScanning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$31;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$31;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$800(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$31;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$800(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->onPause()V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$31;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$800(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->onDestroy()V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$31;->this$0:Lin/juspay/hypersdk/core/JBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/JBridge;->access$802(Lin/juspay/hypersdk/core/JBridge;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    :cond_0
    return-void
.end method
