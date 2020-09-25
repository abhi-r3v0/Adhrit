.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback$Stub()V
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
.field private synthetic ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field final synthetic onNavigationEvent:Lo/dispatchOnScrollStateChanged;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/dispatchOnScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    const v0, 0x7f0b0932

    .line 2528
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v0, 0x7f0b00fd

    .line 3528
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v0

    iput v1, v0, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "Resources.getSystem()"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    const/high16 v3, 0x43480000    # 200.0f

    .line 4010
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v3, 0x3

    const v4, 0x7f0b0497

    .line 57
    invoke-virtual {p1, v4, v3, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 58
    invoke-virtual {p1, v4, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v4, v3, v0, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    const v4, 0x7f0b00fb

    .line 60
    invoke-virtual {p1, v4, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    .line 61
    invoke-virtual {p1, v4, v3, v0, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 63
    new-instance v0, Lo/sendQueueTitle;

    invoke-direct {v0}, Lo/sendQueueTitle;-><init>()V

    .line 64
    invoke-static {}, Lo/dispatchOnScrollStateChanged;->onMessageChannelReady()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 65
    check-cast v0, Lo/fromQueueItem;

    .line 67
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;)V

    .line 68
    check-cast v1, Lo/fromQueueItem$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    .line 70
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v1, v3}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v0}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 71
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$issueTicket$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v2, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
