.class Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1$1;->this$1:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;

    iget-object p1, p1, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant$1;->val$callback:Landroid/os/Handler$Callback;

    invoke-interface {p1, p2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    return-void
.end method
