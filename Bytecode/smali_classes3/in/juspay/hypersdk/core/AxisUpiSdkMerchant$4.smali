.class Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$4;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$4;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    invoke-static {v0}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$000(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Lcom/axis/axismerchantsdk/AxisUpi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$4;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    invoke-static {v0}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$000(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Lcom/axis/axismerchantsdk/AxisUpi;

    .line 1132
    sget-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->destroy()V

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$4;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$002(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Lcom/axis/axismerchantsdk/AxisUpi;)Lcom/axis/axismerchantsdk/AxisUpi;

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$4;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$102(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Landroid/app/Activity;)Landroid/app/Activity;

    :cond_0
    return-void
.end method
