.class Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->executeOnSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

.field final synthetic val$callback:Landroid/os/Handler$Callback;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$newResponse:Lorg/json/JSONObject;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$requestPayload:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Handler$Callback;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    iput-object p2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$requestPayload:Lorg/json/JSONObject;

    iput-object p4, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$requestId:Ljava/lang/String;

    iput-object p5, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$newResponse:Lorg/json/JSONObject;

    iput-object p6, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$callback:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    invoke-static {v0}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$000(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Lcom/axis/axismerchantsdk/AxisUpi;

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$command:Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$requestPayload:Lorg/json/JSONObject;

    iget-object v2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->val$requestId:Ljava/lang/String;

    iget-object v3, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    invoke-static {v3}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$100(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;

    invoke-direct {v4, p0}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3$1;-><init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$3;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/axis/axismerchantsdk/AxisUpi;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    return-void
.end method
