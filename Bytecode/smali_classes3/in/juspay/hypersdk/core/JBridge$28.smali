.class Lin/juspay/hypersdk/core/JBridge$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->startViesAnimationFor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$28;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$28;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$28;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visa/SensoryBrandingView;->animate()Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
