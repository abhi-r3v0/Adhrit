.class Lin/juspay/hypersdk/core/DuiInterface$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lin/juspay/hypersdk/data/JuspayResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/DuiInterface$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lin/juspay/hypersdk/core/DuiInterface$6;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface$6;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$6$1;->this$1:Lin/juspay/hypersdk/core/DuiInterface$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 7

    const-string v0, "payload"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    const-string v3, "onError"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$6$1;->this$1:Lin/juspay/hypersdk/core/DuiInterface$6;

    iget-object p1, p1, Lin/juspay/hypersdk/core/DuiInterface$6;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$6$1;->this$1:Lin/juspay/hypersdk/core/DuiInterface$6;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface$6;->val$cb:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$6$1;->this$1:Lin/juspay/hypersdk/core/DuiInterface$6;

    iget-object v0, p1, Lin/juspay/hypersdk/core/DuiInterface$6;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "lifecycle"

    const-string v3, "hypersdk"

    const-string v4, "run_in_juspay_browser"

    const-string v5, "Exception while manipulating JSON"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lin/juspay/hypersdk/core/PaymentUtils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/DuiInterface$6$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7

    const-string v0, "payload"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    const-string v3, "onResponse"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$6$1;->this$1:Lin/juspay/hypersdk/core/DuiInterface$6;

    iget-object p1, p1, Lin/juspay/hypersdk/core/DuiInterface$6;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$6$1;->this$1:Lin/juspay/hypersdk/core/DuiInterface$6;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface$6;->val$cb:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$6$1;->this$1:Lin/juspay/hypersdk/core/DuiInterface$6;

    iget-object v0, p1, Lin/juspay/hypersdk/core/DuiInterface$6;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "lifecycle"

    const-string v3, "hypersdk"

    const-string v4, "run_in_juspay_browser"

    const-string v5, "Exception while manipulating JSON"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
