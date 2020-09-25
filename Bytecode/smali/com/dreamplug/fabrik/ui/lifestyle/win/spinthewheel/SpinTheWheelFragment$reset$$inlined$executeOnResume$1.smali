.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetChildrenHorizontal;->onTransact()V
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
.field private synthetic ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/offsetChildrenHorizontal;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->spinTheWheel:I

    invoke-virtual {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getDecoratedBoundsWithMargins;

    .line 2030
    iget-object p1, p1, Lo/getDecoratedBoundsWithMargins;->ICustomTabsCallback:Lo/offsetChildrenVertical;

    .line 3026
    iget-boolean p1, p1, Lo/offsetChildrenVertical;->onMessageChannelReady:Z

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->warmup(Lo/offsetChildrenHorizontal;)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback$Stub$Proxy(Lo/offsetChildrenHorizontal;)V

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->imageRevealView:I

    invoke-virtual {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    invoke-virtual {p1}, Lo/setSpeed;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x12c

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->ICustomTabsService(Lo/offsetChildrenHorizontal;)V

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->spinTheWheel:I

    invoke-virtual {p1, v2}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getDecoratedBoundsWithMargins;

    .line 3097
    iget-object p1, p1, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    const/4 v2, 0x0

    .line 3502
    iput-boolean v2, p1, Lo/dispatchOnScrolled;->onPostMessage:Z

    .line 3503
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3504
    iget-object p1, p1, Lo/dispatchOnScrolled;->onNavigationEvent:Lo/offsetChildrenVertical;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/offsetChildrenVertical;->ICustomTabsCallback()V

    .line 62
    :cond_0
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 63
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    invoke-static {v3}, Lo/offsetChildrenHorizontal;->extraCallback(Lo/offsetChildrenHorizontal;)Lo/onChildAttachedToWindow;

    move-result-object v3

    .line 4030
    iget-object v3, v3, Lo/onChildAttachedToWindow;->onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback;

    .line 63
    invoke-virtual {p1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/MediaBrowserCompat$SubscriptionCallback;)V

    const v3, 0x7f0b0708

    .line 4528
    invoke-virtual {p1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v2, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v3, 0x7f0b070b

    .line 5528
    invoke-virtual {p1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v2, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v3, 0x7f0b0684

    .line 6528
    invoke-virtual {p1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    iput v2, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 67
    new-instance v2, Lo/sendQueueTitle;

    invoke-direct {v2}, Lo/sendQueueTitle;-><init>()V

    .line 68
    invoke-virtual {v2, v0, v1}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 69
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    check-cast v2, Lo/fromQueueItem;

    invoke-static {v0, v2}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 70
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 71
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->extraCallback(Lo/offsetChildrenHorizontal;)Lo/onChildAttachedToWindow;

    move-result-object p1

    .line 7139
    iget-object p1, p1, Lo/onChildAttachedToWindow;->onTransact:Lo/setActive;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->onNavigationEvent(Lo/offsetChildrenHorizontal;)Lo/evictionCount;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/evictionCount;->onMessageChannelReady()J

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->onNavigationEvent(Lo/offsetChildrenHorizontal;)Lo/evictionCount;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lo/evictionCount;->onPostMessage()V

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
