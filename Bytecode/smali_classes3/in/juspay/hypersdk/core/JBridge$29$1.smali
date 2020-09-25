.class Lin/juspay/hypersdk/core/JBridge$29$1;
.super Ljava/lang/Object;

# interfaces
.implements Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lin/juspay/hypersdk/core/JBridge$29;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge$29;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barcodeResult(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "JBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scanned QR Result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object v2, v2, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v2}, Lin/juspay/hypersdk/core/JBridge;->access$900(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object v2, v2, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object v4, v4, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v4}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    invoke-static {v2, v3}, Lin/juspay/hypersdk/core/JBridge;->access$902(Lin/juspay/hypersdk/core/JBridge;Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;)Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    :cond_0
    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object v2, v2, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v2}, Lin/juspay/hypersdk/core/JBridge;->access$900(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->setBeepEnabled(Z)V

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object v2, v2, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v2}, Lin/juspay/hypersdk/core/JBridge;->access$900(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    move-result-object v2

    invoke-virtual {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->playBeepSound()Landroid/media/MediaPlayer;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "error"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object p1, p1, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object v3, v3, Lin/juspay/hypersdk/core/JBridge$29;->val$callback:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object p1, p1, Lin/juspay/hypersdk/core/JBridge$29;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$29$1;->this$1:Lin/juspay/hypersdk/core/JBridge$29;

    iget-object v2, v2, Lin/juspay/hypersdk/core/JBridge$29;->val$callback:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "unknown_error"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "{\"error\":\"true\",\"data\":\"%s\"}"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public possibleResultPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
