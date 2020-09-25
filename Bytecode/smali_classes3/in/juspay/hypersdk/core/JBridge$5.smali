.class Lin/juspay/hypersdk/core/JBridge$5;
.super Ljava/lang/Object;

# interfaces
.implements Lamazonpay/silentpay/APayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->getAmazonBalance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$cb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$5;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$5;->val$cb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lamazonpay/silentpay/APayError;)V
    .locals 1

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$5;->val$cb:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$5;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {p1}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$5;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {p1}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lin/juspay/hypersdk/core/JBridge$5$2;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/core/JBridge$5$2;-><init>(Lin/juspay/hypersdk/core/JBridge$5;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lamazonpay/silentpay/GetBalanceResponse;->fromBundle(Landroid/os/Bundle;)Lamazonpay/silentpay/GetBalanceResponse;

    move-result-object p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$5;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$5$1;

    invoke-direct {v1, p0, p1}, Lin/juspay/hypersdk/core/JBridge$5$1;-><init>(Lin/juspay/hypersdk/core/JBridge$5;Lamazonpay/silentpay/GetBalanceResponse;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
