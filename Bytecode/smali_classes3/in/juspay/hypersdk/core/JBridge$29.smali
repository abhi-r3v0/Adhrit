.class Lin/juspay/hypersdk/core/JBridge$29;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->openQRScanner(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$frameID:I

.field final synthetic val$viewGrp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput p2, p0, Lin/juspay/hypersdk/core/JBridge$29;->val$frameID:I

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$29;->val$viewGrp:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/core/JBridge$29;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v1}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v1}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lin/juspay/hypersdk/core/JBridge$29;->val$frameID:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to find view with resID - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$29;->val$viewGrp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lin/juspay/hypersdk/core/JBridge$29;->val$frameID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JBridge"

    invoke-static {v1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v3}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;-><init>(Landroid/app/Activity;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    invoke-static {v1, v2}, Lin/juspay/hypersdk/core/JBridge;->access$802(Lin/juspay/hypersdk/core/JBridge;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$800(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    move-result-object v0

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$29$1;

    invoke-direct {v1, p0}, Lin/juspay/hypersdk/core/JBridge$29$1;-><init>(Lin/juspay/hypersdk/core/JBridge$29;)V

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->setBarcodeCallBack(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$800(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->onResume()V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$800(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->decode()V

    return-void
.end method
