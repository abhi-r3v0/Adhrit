.class Lin/juspay/hypersdk/core/JBridge$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->loadViesAnimationFor(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$24;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    new-instance v1, Lcom/visa/SensoryBrandingView;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v2}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/visa/SensoryBrandingView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/JBridge;->access$602(Lin/juspay/hypersdk/core/JBridge;Lcom/visa/SensoryBrandingView;)Lcom/visa/SensoryBrandingView;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v0

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visa/SensoryBrandingView;->setBackdropColor(I)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visa/SensoryBrandingView;->setSoundEnabled(Z)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$24;->val$id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$24;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v2}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
