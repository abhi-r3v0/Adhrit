.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetChildrenHorizontal;->ICustomTabsCallback()V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/offsetChildrenHorizontal;

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    const v2, 0x7f0b0708

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    .line 54
    invoke-virtual/range {v1 .. v6}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    const v0, 0x7f0b0708

    .line 2507
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    const/4 v0, 0x4

    const v1, 0x7f0b0684

    .line 56
    invoke-virtual {p1, v1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p1, v1, v2, v3, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "Resources.getSystem()"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v3, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    .line 3010
    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 58
    invoke-virtual {p1, v1, v2, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 59
    new-instance v0, Lo/sendQueueTitle;

    invoke-direct {v0}, Lo/sendQueueTitle;-><init>()V

    const-wide/16 v1, 0x12c

    .line 60
    invoke-virtual {v0, v1, v2}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 61
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    .line 62
    check-cast v0, Lo/fromQueueItem;

    .line 64
    new-instance v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1$onNavigationEvent;

    invoke-direct {v4, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;)V

    .line 65
    check-cast v4, Lo/fromQueueItem$onMessageChannelReady;

    invoke-virtual {v0, v4}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    .line 68
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v4, v5}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded;

    invoke-static {v4, v0}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 69
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v4}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 70
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-virtual {p1}, Lo/createFullSpanItemFromEnd;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 73
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/offsetChildrenHorizontal;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->tvCoinValue:I

    invoke-virtual {p1, v4}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-virtual {p1}, Lo/createFullSpanItemFromEnd;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v3, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
