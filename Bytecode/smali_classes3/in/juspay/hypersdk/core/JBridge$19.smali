.class Lin/juspay/hypersdk/core/JBridge$19;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->gpay_isReadyToPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$errorCallback:Ljava/lang/String;

.field final synthetic val$response:Lorg/json/JSONObject;

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$19;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$response:Lorg/json/JSONObject;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$callback:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$errorCallback:Ljava/lang/String;

    iput-object p5, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lin/juspay/hypersdk/core/PaymentConstants;->GPAY_CONSTANT:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "inAppSdk"

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$response:Lorg/json/JSONObject;

    const-string v3, "in_app_sdk"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$response:Lorg/json/JSONObject;

    const-string v1, "upiIntent"

    const-string v3, "upi_intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$response:Lorg/json/JSONObject;

    const-string v1, "inAppSupported"

    const-string v3, "in_app_supported"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$19;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$callback:Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$response:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$response:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$19;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$errorCallback:Ljava/lang/String;

    const-string v3, "error_msg"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v4, "JBridge"

    const-string v5, "api_call"

    const-string v6, "external_sdk"

    const-string v7, "gpay_utils"

    const-string v8, "Error while checking GPay isReadyToPay"

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$19;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$19;->val$errorCallback:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v2
.end method
