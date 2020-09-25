.class Lin/juspay/hypersdk/core/GodelServiceResponseHandler;
.super Landroid/os/Handler;


# static fields
.field private static final TAG:Ljava/lang/String; = "GodelServiceResponseHandler"


# instance fields
.field private browserFragment:Lin/juspay/hypersdk/HyperFragment;

.field private callBackFnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lin/juspay/hypersdk/HyperFragment;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->callBackFnName:Ljava/lang/String;

    iput-object p2, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->callBackFnName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lin/juspay/hypersdk/core/PaymentUtils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "code"

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    iget-object v2, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->callBackFnName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "mpin_util"

    const-string v5, "missing"

    const-string v6, "duiInterface"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "GodelServiceResponseHandler"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "mpin_util"

    const-string v6, "Exception while trying to handle message"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    iput-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;->callBackFnName:Ljava/lang/String;

    return-void
.end method
