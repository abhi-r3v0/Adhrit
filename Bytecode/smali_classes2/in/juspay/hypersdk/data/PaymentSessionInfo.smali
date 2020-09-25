.class public Lin/juspay/hypersdk/data/PaymentSessionInfo;
.super Ljava/lang/Object;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "PaymentSessionInfo"


# instance fields
.field private acsJsHash:Ljava/lang/String;

.field private godelDisabled:Z

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private paymentDetails:Lorg/json/JSONObject;

.field private paymentFragment:Lin/juspay/hypersdk/HyperFragment;

.field private sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

.field private final sessionDetails:Lorg/json/JSONObject;

.field private sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lin/juspay/hypersdk/HyperFragment;Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionDetails:Lorg/json/JSONObject;

    iput-object p1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentFragment:Lin/juspay/hypersdk/HyperFragment;

    iput-object p2, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p2}, Lin/juspay/hypersdk/core/JuspayServices;->getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {p2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    return-void
.end method

.method public static getBuildVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->godel_build_version:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGodelRemotesVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->godel_remotes_version:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGodelTrackingDelay()J
    .locals 3

    const-string v0, "weblab"

    :try_start_0
    iget-object v1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v1, "godelTrackerExitDelayMills"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v1, Lin/juspay/hypersdk/data/PaymentSessionInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error reading godelTrackerExitDelayMills value from config"

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static getGodelVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->godel_version:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private trackExtraArguments(Lorg/json/JSONObject;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "udf_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p2

    move-object v6, p2

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    sget-object v1, Lin/juspay/hypersdk/data/PaymentSessionInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "payment_session_info"

    const-string v5, "Exception trying to track merchant arguments"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public addToSessionDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionDetails:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    sget-object v1, Lin/juspay/hypersdk/data/PaymentSessionInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "payment_session_info"

    const-string v5, "Exception when adding to sessionDetails"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public createSessionDataMap()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SessionInfo;->createSessionDataMap()V

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SessionInfo;->getSessionData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "godel_version"

    invoke-static {}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getGodelVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "godel_build_version"

    invoke-static {}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "godel_remotes_version"

    invoke-static {}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getGodelRemotesVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_godel"

    invoke-virtual {p0}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->isGodelDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v1, v0}, Lin/juspay/hypersdk/data/SessionInfo;->updateSessionData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    sget-object v2, Lin/juspay/hypersdk/data/PaymentSessionInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "payment_session_info"

    const-string v6, "Exception while creatingSession Data Map"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public extractPaymentDetails(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getPaymentDetails(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentDetails:Lorg/json/JSONObject;

    return-void
.end method

.method public getAcsJsHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->acsJsHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDetails()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentDetails:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getPaymentDetails(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 12

    const-string v0, "remarks"

    const-string v1, "transaction_id"

    const-string v2, "order_id"

    const-string v3, "merchant_id"

    const-string v4, "client_id"

    const-string v5, "customer_phone_number"

    const-string v6, "customer_email"

    const-string v7, "card_brand"

    const-string v8, "bank"

    const-string v9, "amount"

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v9, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    const-string v11, "UNKNOWN"

    invoke-virtual {v9, v8, v11}, Lin/juspay/hypersdk/data/SessionInfo;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "card_token"

    const-string v8, "cardToken"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "card_last_four_digits"

    const-string v8, "lastSixCardDigits"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "display_note"

    const-string v1, "displayNote"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v10, p1}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->trackExtraArguments(Lorg/json/JSONObject;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    sget-object v1, Lin/juspay/hypersdk/data/PaymentSessionInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "payment_session_info"

    const-string v5, "Exception while creating paymentDetails"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public getSessionDetails()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionDetails:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSslWhiteListedDomainsRegex()Ljava/lang/String;
    .locals 4

    const-string v0, "sslWhiteListedDomainsRegex"

    const-string v1, ""

    :try_start_0
    iget-object v2, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v2}, Lin/juspay/hypersdk/data/SessionInfo;->getBundleParams()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public isGodelDisabled()Z
    .locals 10

    const-string v0, "weblab"

    const-string v1, "GODEL"

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v3}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v3}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v3}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->godelDisabled:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    move-object v9, v0

    iget-object v3, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    sget-object v4, Lin/juspay/hypersdk/data/PaymentSessionInfo;->LOG_TAG:Ljava/lang/String;

    const-string v5, "action"

    const-string v6, "system"

    const-string v7, "payment_session_info"

    const-string v8, "Exception while retrieving Godel value"

    invoke-virtual/range {v3 .. v9}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public setAcsJsHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->acsJsHash:Ljava/lang/String;

    return-void
.end method

.method public setGodelDisabled(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->godelDisabled:Z

    iget-object v1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "payment_session_info"

    const-string v5, "godel_switching_off"

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPaymentDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentDetails:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentDetails:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentDetails:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    sget-object v1, Lin/juspay/hypersdk/data/PaymentSessionInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "payment_session_info"

    const-string v5, "Exception while trying to set payment details"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setPaymentDetails(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/data/PaymentSessionInfo;->paymentDetails:Lorg/json/JSONObject;

    return-void
.end method
