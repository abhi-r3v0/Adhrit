.class public Lin/juspay/hypersdk/core/GodelJsInterface;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GodelJsInterface"


# instance fields
.field private final fragment:Lin/juspay/hypersdk/HyperFragment;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/HyperFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/core/GodelJsInterface;->fragment:Lin/juspay/hypersdk/HyperFragment;

    return-void
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/GodelJsInterface;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/GodelJsInterface;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v0

    instance-of v0, v0, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/core/GodelJsInterface;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v0

    check-cast v0, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "event"

    const-string v3, "godel_merchant_message"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "payload"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v8, p1

    iget-object p1, p0, Lin/juspay/hypersdk/core/GodelJsInterface;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object p1

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    const-string v3, "GodelJsInterface"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "jbridge"

    const-string v7, "exception on godelJsInterface"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V

    :cond_1
    return-void
.end method
