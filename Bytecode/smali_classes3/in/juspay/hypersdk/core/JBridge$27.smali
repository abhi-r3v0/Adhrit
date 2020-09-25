.class Lin/juspay/hypersdk/core/JBridge$27;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->executeOnUpiSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$requestPayloadString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$27;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$27;->val$requestId:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$27;->val$command:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/core/JBridge$27;->val$requestPayloadString:Ljava/lang/String;

    iput-object p5, p0, Lin/juspay/hypersdk/core/JBridge$27;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "status"

    const-string v1, "failed"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$27;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {p1}, Lin/juspay/hypersdk/core/JBridge;->access$700(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    move-result-object p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$27;->val$requestId:Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$27;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$27;->val$requestPayloadString:Ljava/lang/String;

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$27;->val$callback:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->executeOnSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
