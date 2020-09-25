.class Lin/juspay/hypersdk/core/JBridge$26;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->blurBackground(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$blurRadius:I

.field final synthetic val$childView:Landroid/view/View;

.field final synthetic val$mRS:Landroid/renderscript/RenderScript;

.field final synthetic val$merchantView:Landroid/view/View;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Landroid/renderscript/RenderScript;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$26;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$26;->val$mRS:Landroid/renderscript/RenderScript;

    iput p3, p0, Lin/juspay/hypersdk/core/JBridge$26;->val$blurRadius:I

    iput-object p4, p0, Lin/juspay/hypersdk/core/JBridge$26;->val$merchantView:Landroid/view/View;

    iput-object p5, p0, Lin/juspay/hypersdk/core/JBridge$26;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lin/juspay/hypersdk/core/BlurProcessor;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$26;->val$mRS:Landroid/renderscript/RenderScript;

    iget v2, p0, Lin/juspay/hypersdk/core/JBridge$26;->val$blurRadius:I

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$26;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v3}, Lin/juspay/hypersdk/core/JBridge;->access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lin/juspay/hypersdk/core/BlurProcessor;-><init>(Landroid/renderscript/RenderScript;ILandroid/app/Activity;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$26;->val$merchantView:Landroid/view/View;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$26;->val$childView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/BlurProcessor;->blurView(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
