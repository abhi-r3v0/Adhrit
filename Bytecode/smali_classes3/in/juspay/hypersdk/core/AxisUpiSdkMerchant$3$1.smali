.class Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    iget-object v0, v0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$requestId:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    iget-object p3, p3, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$newResponse:Lorg/json/JSONObject;

    const-string v0, "request_id"

    iget-object v1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    iget-object v1, v1, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$requestId:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    iget-object p3, p3, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$newResponse:Lorg/json/JSONObject;

    const-string v0, "command"

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    iget-object p2, p2, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$newResponse:Lorg/json/JSONObject;

    const-string p3, "response"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    iget-object p2, p2, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$newResponse:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    iget-object p2, p2, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$callback:Landroid/os/Handler$Callback;

    invoke-interface {p2, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
