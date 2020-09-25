.class Lin/juspay/hypersdk/core/DuiInterface$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/DuiInterface;->runInJuspayBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/DuiInterface;

.field final synthetic val$args:Ljava/lang/String;

.field final synthetic val$cb:Ljava/lang/String;

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->val$args:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->val$cb:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v0

    instance-of v0, v0, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->val$args:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v1, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v1

    check-cast v1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    new-instance v2, Lin/juspay/hypersdk/core/DuiInterface$6$1;

    invoke-direct {v2, p0}, Lin/juspay/hypersdk/core/DuiInterface$6$1;-><init>(Lin/juspay/hypersdk/core/DuiInterface$6;)V

    invoke-interface {v1, v0, v2}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$6;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "DuiInterface"

    const-string v3, "lifecycle"

    const-string v4, "hypersdk"

    const-string v5, "run_in_juspay_browser"

    const-string v6, "Exception in onEvent handler"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
