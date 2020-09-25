.class public Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;
.super Ljava/lang/Object;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private axisUpi:Lcom/axis/axismerchantsdk/AxisUpi;

.field private jBridge:Lin/juspay/hypersdk/core/JBridge;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lin/juspay/hypersdk/core/JBridge;Landroid/os/Handler$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AxisUpiSdkMerchant"

    iput-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->LOG_TAG:Ljava/lang/String;

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->jBridge:Lin/juspay/hypersdk/core/JBridge;

    const-string p2, "com.axis.axismerchantsdk.AxisUpi"

    invoke-static {p2}, Lin/juspay/hypersdk/core/PaymentUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;

    invoke-direct {p2, p0, p3}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;-><init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Landroid/os/Handler$Callback;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Lcom/axis/axismerchantsdk/AxisUpi;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->axisUpi:Lcom/axis/axismerchantsdk/AxisUpi;

    return-object p0
.end method

.method static synthetic access$002(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Lcom/axis/axismerchantsdk/AxisUpi;)Lcom/axis/axismerchantsdk/AxisUpi;
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->axisUpi:Lcom/axis/axismerchantsdk/AxisUpi;

    return-object p1
.end method

.method static synthetic access$100(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$102(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->activity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$200(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Lin/juspay/hypersdk/core/JBridge;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->jBridge:Lin/juspay/hypersdk/core/JBridge;

    return-object p0
.end method


# virtual methods
.method executeOnSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 8

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object p3, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->activity:Landroid/app/Activity;

    new-instance v7, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;-><init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Handler$Callback;)V

    invoke-virtual {p3, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const-string v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorDescription"

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "request_id"

    invoke-virtual {p3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "command"

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "response"

    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {p4, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method executeOnSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$2;

    invoke-direct {v0, p0, p4}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$2;-><init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->executeOnSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$4;

    invoke-direct {v1, p0}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$4;-><init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
