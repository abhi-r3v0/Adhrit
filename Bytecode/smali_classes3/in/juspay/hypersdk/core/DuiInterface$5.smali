.class Lin/juspay/hypersdk/core/DuiInterface$5;
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

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->val$args:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->val$args:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v1, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v1, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v1

    instance-of v1, v1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v1, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v1

    check-cast v1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v1, v0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onStartWaitingDialogCreated(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$5;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "DuiInterface"

    const-string v3, "lifecycle"

    const-string v4, "hypersdk"

    const-string v5, "run_in_juspay_browser"

    const-string v6, "Exception while trying to find a view"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
