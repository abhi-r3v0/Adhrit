.class Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->executeOnSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

.field final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$2;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    iput-object p2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$2;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$2;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    invoke-static {v0}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$200(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Lin/juspay/hypersdk/core/JBridge;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$2;->val$callback:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
