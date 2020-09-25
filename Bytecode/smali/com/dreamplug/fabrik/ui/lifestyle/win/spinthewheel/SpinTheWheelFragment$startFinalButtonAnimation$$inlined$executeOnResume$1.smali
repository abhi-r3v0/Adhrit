.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetChildrenHorizontal;->ICustomTabsCallback$Stub()V
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
.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/offsetChildrenHorizontal;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

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
    .locals 11

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tvCoinValue:I

    invoke-virtual {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "tvCoinValue"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v0, "desc"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->resultText:I

    invoke-virtual {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-virtual {p1}, Lo/createFullSpanItemFromEnd;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 58
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 59
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v2, v3}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-virtual {p1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 61
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-static {v2}, Lo/offsetChildrenHorizontal;->asBinder(Lo/offsetChildrenHorizontal;)Z

    move-result v2

    const v8, 0x7f0b0708

    if-nez v2, :cond_0

    const v3, 0x7f0b0708

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p1

    .line 62
    invoke-virtual/range {v2 .. v7}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 2507
    invoke-virtual {p1, v8}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const/high16 v3, 0x3e800000    # 0.25f

    iput v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    goto :goto_0

    :cond_0
    const v3, 0x7f0b0708

    const/4 v4, 0x3

    const v5, 0x7f0b040f

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    .line 65
    invoke-virtual/range {v2 .. v7}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 3507
    invoke-virtual {p1, v8}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    iput v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    :goto_0
    const v3, 0x7f0b0684

    const/4 v4, 0x3

    const v5, 0x7f0b092e

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    .line 68
    invoke-virtual/range {v2 .. v7}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    const/4 v4, 0x4

    const v5, 0x7f0b0752

    const/4 v6, 0x3

    .line 69
    invoke-virtual/range {v2 .. v7}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 70
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-static {v2}, Lo/offsetChildrenHorizontal;->asBinder(Lo/offsetChildrenHorizontal;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const v3, 0x7f0b0684

    .line 3898
    invoke-virtual {p1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v4

    iput v2, v4, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getServiceComponent:I

    .line 4507
    invoke-virtual {p1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    const v3, 0x7f0b0752

    const/4 v4, 0x3

    const v5, 0x7f0b0684

    const/4 v6, 0x4

    .line 72
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-static {v2}, Lo/offsetChildrenHorizontal;->asBinder(Lo/offsetChildrenHorizontal;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x41a00000    # 20.0f

    goto :goto_2

    :cond_2
    const/high16 v2, 0x41000000    # 8.0f

    .line 5009
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v9, "Resources.getSystem()"

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v10, 0x1

    .line 5010
    invoke-static {v10, v2, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v7, v2

    move-object v2, p1

    .line 72
    invoke-virtual/range {v2 .. v7}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    const v3, 0x7f0b0752

    const/4 v4, 0x4

    const v5, 0x7f0b00ff

    const/4 v6, 0x3

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v7, 0x40a00000    # 5.0f

    .line 6010
    invoke-static {v10, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v7, v2

    move-object v2, p1

    .line 73
    invoke-virtual/range {v2 .. v7}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    const v2, 0x7f0b0752

    .line 6507
    invoke-virtual {p1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v8, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->IPostMessageService:F

    .line 75
    new-instance v2, Lo/sendQueueTitle;

    invoke-direct {v2}, Lo/sendQueueTitle;-><init>()V

    .line 76
    invoke-virtual {v2, v0, v1}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 77
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    check-cast v2, Lo/fromQueueItem;

    invoke-static {v0, v2}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 78
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v1}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelFragment$startFinalButtonAnimation$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v10, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
