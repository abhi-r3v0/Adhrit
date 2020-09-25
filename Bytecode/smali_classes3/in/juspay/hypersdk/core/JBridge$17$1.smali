.class Lin/juspay/hypersdk/core/JBridge$17$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field oldScrollX:I

.field oldScrollY:I

.field final synthetic this$1:Lin/juspay/hypersdk/core/JBridge$17;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge$17;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->this$1:Lin/juspay/hypersdk/core/JBridge$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->oldScrollX:I

    iput p1, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->oldScrollY:I

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 5

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->this$1:Lin/juspay/hypersdk/core/JBridge$17;

    iget-object v0, v0, Lin/juspay/hypersdk/core/JBridge$17;->val$myView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->this$1:Lin/juspay/hypersdk/core/JBridge$17;

    iget-object v1, v1, Lin/juspay/hypersdk/core/JBridge$17;->val$myView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->oldScrollX:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->oldScrollY:I

    if-eq v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->oldScrollX:I

    iput v1, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->oldScrollY:I

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->this$1:Lin/juspay/hypersdk/core/JBridge$17;

    iget-object v2, v2, Lin/juspay/hypersdk/core/JBridge$17;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$17$1;->this$1:Lin/juspay/hypersdk/core/JBridge$17;

    iget-object v3, v3, Lin/juspay/hypersdk/core/JBridge$17;->val$callback:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
