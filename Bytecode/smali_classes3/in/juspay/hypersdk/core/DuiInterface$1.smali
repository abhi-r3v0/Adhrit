.class Lin/juspay/hypersdk/core/DuiInterface$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/DuiInterface;->attachMerchantView(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/DuiInterface;

.field final synthetic val$containerId:I

.field final synthetic val$viewType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$1;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iput p2, p0, Lin/juspay/hypersdk/core/DuiInterface$1;->val$containerId:I

    iput-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface$1;->val$viewType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$1;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lin/juspay/hypersdk/core/DuiInterface$1;->val$containerId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$1;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v1, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v1

    if-eqz v0, :cond_1

    instance-of v2, v1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface$1;->val$viewType:Ljava/lang/String;

    invoke-static {v2}, Lin/juspay/hypersdk/core/MerchantViewType;->valueOf(Ljava/lang/String;)Lin/juspay/hypersdk/core/MerchantViewType;

    move-result-object v2

    check-cast v1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v1, v0, v2}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->getMerchantView(Landroid/view/ViewGroup;Lin/juspay/hypersdk/core/MerchantViewType;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$1;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Error while inserting in json"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
