.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchOnScrollStateChanged;->onTransact()V
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
.field private synthetic onMessageChannelReady:Lo/dispatchOnScrollStateChanged;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/dispatchOnScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/dispatchOnScrollStateChanged;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    .locals 12

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p1, Lo/sendQueueTitle;

    invoke-direct {p1}, Lo/sendQueueTitle;-><init>()V

    .line 54
    invoke-static {}, Lo/dispatchOnScrollStateChanged;->onMessageChannelReady()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 56
    new-instance v0, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v0}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/dispatchOnScrollStateChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v1, v2}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    const v1, 0x7f0b0932

    .line 2528
    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v1, 0x7f0b00fd

    .line 3528
    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v1

    iput v2, v1, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v1, 0x7f0b08a9

    .line 4528
    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "Resources.getSystem()"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v6, 0x1

    const/high16 v7, 0x43480000    # 200.0f

    .line 5010
    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const v7, 0x7f0b0497

    const/4 v8, 0x3

    .line 62
    invoke-virtual {v0, v7, v8, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 63
    invoke-virtual {v0, v7, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    .line 64
    invoke-virtual {v0, v7, v8, v4, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    const v3, 0x7f0b00fb

    .line 65
    invoke-virtual {v0, v3, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    .line 66
    invoke-virtual {v0, v3, v8, v4, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 5528
    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v9

    iput v4, v9, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v4, 0x7f0b053b

    .line 5538
    invoke-virtual {v0, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v4

    const/4 v9, 0x0

    iput v9, v4, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    const v4, 0x7f0b0467

    .line 69
    invoke-virtual {v0, v4, v8}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    const v9, 0x7f0b03d9

    .line 70
    invoke-virtual {v0, v4, v2, v9, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/high16 v10, 0x41f00000    # 30.0f

    .line 6010
    invoke-static {v6, v10, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    .line 71
    invoke-virtual {v0, v4, v2, v9}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    const v9, 0x7f0b0435

    .line 72
    invoke-virtual {v0, v9, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/high16 v11, 0x41200000    # 10.0f

    .line 7010
    invoke-static {v6, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 73
    invoke-virtual {v0, v9, v8, v10}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 74
    invoke-virtual {v0, v9, v8, v4, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 75
    invoke-virtual {v0, v9, v2, v3, v8}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 76
    invoke-virtual {v0, v1, v8, v9, v8}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 77
    invoke-virtual {v0, v3, v2, v9, v8}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v4, 0x41c00000    # 24.0f

    .line 8010
    invoke-static {v6, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 78
    invoke-virtual {v0, v7, v8, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 79
    invoke-virtual {v0, v7, v8, v3, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    const v1, 0x7f0b01c0

    .line 80
    invoke-virtual {v0, v7, v2, v1, v8}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 9009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v9, 0x41700000    # 15.0f

    .line 9010
    invoke-static {v6, v9, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 81
    invoke-virtual {v0, v1, v8, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 10009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 10010
    invoke-static {v6, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 83
    invoke-virtual {v0, v1, v8, v7, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    const v3, 0x7f0b00ff

    .line 84
    invoke-virtual {v0, v1, v2, v3, v8}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 85
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/dispatchOnScrollStateChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v1, v2}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    check-cast p1, Lo/fromQueueItem;

    invoke-static {v1, p1}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 86
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {p1, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 88
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->getInterfaceDescriptor(Lo/dispatchOnScrollStateChanged;)V

    .line 89
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/dispatchOnScrollStateChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineForeGround:I

    invoke-virtual {p1, v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "machineForeGround"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v6, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
