.class public final Lo/onItemsRemoved$onPostMessage$1;
.super Lo/recalculatePositionOfItemAt;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onItemsRemoved$onPostMessage;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/lending/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onNavigationEvent:Lo/onItemsRemoved$onPostMessage;


# direct methods
.method constructor <init>(Lo/onItemsRemoved$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lo/onItemsRemoved$onPostMessage$1;->onNavigationEvent:Lo/onItemsRemoved$onPostMessage;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 203
    iget-object p1, p0, Lo/onItemsRemoved$onPostMessage$1;->onNavigationEvent:Lo/onItemsRemoved$onPostMessage;

    iget-object p1, p1, Lo/onItemsRemoved$onPostMessage;->onPostMessage:Lo/onItemsRemoved;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 219
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 220
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lo/onItemsRemoved$onPostMessage$1;->onNavigationEvent:Lo/onItemsRemoved$onPostMessage;

    iget-object v1, v1, Lo/onItemsRemoved$onPostMessage;->onPostMessage:Lo/onItemsRemoved;

    invoke-static {v1}, Lo/onItemsRemoved;->onNavigationEvent(Lo/onItemsRemoved;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 222
    iput-boolean v4, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_2

    .line 224
    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/dreamplug/fabrik/ui/lending/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onItemsRemoved$onPostMessage$1;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 225
    iget-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 227
    :cond_2
    :goto_0
    new-instance v0, Lo/onItemsRemoved$onPostMessage$1$onNavigationEvent;

    invoke-direct {v0, v2, p1}, Lo/onItemsRemoved$onPostMessage$1$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final run()V
    .locals 1

    .line 2205
    iget-object v0, p0, Lo/onItemsRemoved$onPostMessage$1;->onNavigationEvent:Lo/onItemsRemoved$onPostMessage;

    iget-object v0, v0, Lo/onItemsRemoved$onPostMessage;->onPostMessage:Lo/onItemsRemoved;

    invoke-static {v0}, Lo/onItemsRemoved;->onPostMessage(Lo/onItemsRemoved;)V

    return-void
.end method
