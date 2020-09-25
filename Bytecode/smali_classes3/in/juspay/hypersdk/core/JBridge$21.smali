.class Lin/juspay/hypersdk/core/JBridge$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->startLottieAnimation(ILjava/lang/String;ZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$animation:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$loop:Z

.field final synthetic val$max:F

.field final synthetic val$min:F

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;ILjava/lang/String;ZFFLin/juspay/hypersdk/core/SdkTracker;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$21;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput p2, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$id:I

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$animation:Ljava/lang/String;

    iput-boolean p4, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$loop:Z

    iput p5, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$min:F

    iput p6, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$max:F

    iput-object p7, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$21;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$id:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$animation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-boolean v1, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$loop:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget v1, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$min:F

    iget v2, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$max:F

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxProgress(FF)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$21;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while playing Lottie animation"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
