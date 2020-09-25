.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchOnScrollStateChanged;->asBinder()V
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

.field final synthetic extraCallback:Lo/dispatchOnScrollStateChanged;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/dispatchOnScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->issueTicket:I

    invoke-virtual {p1, v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    const-string v0, "issueTicket"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/saveOldPosition;->setEnabled(Z)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineForeGround:I

    invoke-virtual {p1, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "machineForeGround"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object p1

    .line 1049
    iget-object p1, p1, Lo/findNestedRecyclerView;->getInterfaceDescriptor:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {}, Lo/dispatchOnScrollStateChanged;->extraCallback()Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    invoke-static {p1, v0}, Lo/dispatchOnScrollStateChanged;->extraCallback(Lo/dispatchOnScrollStateChanged;Lo/repositionToWrapContentIfNecessary;)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->horizontalTicketList:I

    invoke-virtual {p1, v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "horizontalTicketList"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(Lo/dispatchOnScrollStateChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {}, Lo/dispatchOnScrollStateChanged;->onPostMessage()Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    invoke-static {p1, v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(Lo/dispatchOnScrollStateChanged;Lo/repositionToWrapContentIfNecessary;)V

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ticketList:I

    invoke-virtual {p1, v0}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v0, "ticketList"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {v0}, Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->asBinder(Lo/dispatchOnScrollStateChanged;)V

    .line 62
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {v0}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object v0

    .line 2038
    iget-object v0, v0, Lo/findNestedRecyclerView;->asBinder:Lo/MediaBrowserCompat$SubscriptionCallback;

    .line 63
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/MediaBrowserCompat$SubscriptionCallback;)V

    .line 65
    new-instance v0, Lo/sendQueueTitle;

    invoke-direct {v0}, Lo/sendQueueTitle;-><init>()V

    .line 66
    invoke-static {}, Lo/dispatchOnScrollStateChanged;->onMessageChannelReady()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 67
    check-cast v0, Lo/fromQueueItem;

    .line 69
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1$onPostMessage;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1$onPostMessage;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;)V

    .line 70
    check-cast v1, Lo/fromQueueItem$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    .line 72
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v1, v2}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v0}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 73
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root:I

    invoke-virtual {v0, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$reset$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
