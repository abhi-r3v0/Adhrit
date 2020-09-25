.class public final Lo/getMenuListView$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMenuListView;->onNavigationEvent(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getMenuListView$getInterfaceDescriptor;

.field private synthetic onPostMessage:Lo/getMenuListView;


# direct methods
.method constructor <init>(Lo/getMenuListView;Lo/getMenuListView$getInterfaceDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMenuListView$getInterfaceDescriptor;",
            ")V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lo/getMenuListView$warmup;->onPostMessage:Lo/getMenuListView;

    iput-object p2, p0, Lo/getMenuListView$warmup;->onMessageChannelReady:Lo/getMenuListView$getInterfaceDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 256
    iget-object p1, p0, Lo/getMenuListView$warmup;->onPostMessage:Lo/getMenuListView;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->animationContainer:I

    invoke-virtual {p1, v0}, Lo/getMenuListView;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lo/getMenuListView$warmup;->onPostMessage:Lo/getMenuListView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback;->checkout_fadeout:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object p1, p0, Lo/getMenuListView$warmup;->onPostMessage:Lo/getMenuListView;

    .line 1042
    iget-object p1, p1, Lo/getMenuListView;->onMessageChannelReady:Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;

    if-eqz p1, :cond_0

    .line 2038
    iget-boolean p1, p1, Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;->onPostMessage:Z

    if-nez p1, :cond_0

    .line 258
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 262
    :cond_0
    iget-object p1, p0, Lo/getMenuListView$warmup;->onMessageChannelReady:Lo/getMenuListView$getInterfaceDescriptor;

    .line 2231
    iget-object v0, p1, Lo/getMenuListView$getInterfaceDescriptor;->onPostMessage:Lo/getMenuListView;

    invoke-static {v0}, Lo/getMenuListView;->onPostMessage(Lo/getMenuListView;)Lo/getMenuListView$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lo/getMenuListView$getInterfaceDescriptor;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    invoke-interface {v0, p1}, Lo/getMenuListView$onPostMessage;->onNavigationEvent(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 2

    .line 2259
    iget-object v0, p0, Lo/getMenuListView$warmup;->onMessageChannelReady:Lo/getMenuListView$getInterfaceDescriptor;

    .line 3231
    iget-object v1, v0, Lo/getMenuListView$getInterfaceDescriptor;->onPostMessage:Lo/getMenuListView;

    invoke-static {v1}, Lo/getMenuListView;->onPostMessage(Lo/getMenuListView;)Lo/getMenuListView$onPostMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/getMenuListView$getInterfaceDescriptor;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    invoke-interface {v1, v0}, Lo/getMenuListView$onPostMessage;->onNavigationEvent(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V

    :cond_0
    return-void
.end method
