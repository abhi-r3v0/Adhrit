.class Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;-><init>(Landroid/app/Activity;Lin/juspay/hypersdk/core/JBridge;Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

.field final synthetic val$callback:Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Landroid/os/Handler$Callback;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    iput-object p2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;->val$callback:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    new-instance v1, Lcom/axis/axismerchantsdk/AxisUpi;

    iget-object v2, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;->this$0:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    invoke-static {v2}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$100(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1$1;

    invoke-direct {v3, p0}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1$1;-><init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;)V

    invoke-direct {v1, v2, v3}, Lcom/axis/axismerchantsdk/AxisUpi;-><init>(Landroid/content/Context;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->access$002(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;Lcom/axis/axismerchantsdk/AxisUpi;)Lcom/axis/axismerchantsdk/AxisUpi;

    return-void
.end method
