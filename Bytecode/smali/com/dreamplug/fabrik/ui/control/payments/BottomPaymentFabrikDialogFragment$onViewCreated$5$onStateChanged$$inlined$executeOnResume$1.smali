.class public final Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isRefreshPending$extraCommand;->onPostMessage(Landroid/view/View;I)V
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

.field final synthetic onMessageChannelReady:Lo/isRefreshPending$extraCommand;

.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isRefreshPending$extraCommand;I)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$extraCommand;

    iput p4, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:I

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    iget p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:I

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$extraCommand;

    iget-object p1, p1, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {p1, v0}, Lo/isRefreshPending;->extraCallback(Lo/isRefreshPending;Z)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$extraCommand;

    iget-object p1, p1, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {p1}, Lo/isRefreshPending;->onTransact(Lo/isRefreshPending;)Lo/refresh;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1$extraCallback;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    check-cast v1, Lo/getServerTime;

    .line 1089
    iget-object p1, p1, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(ZLo/getServerTime;)V

    .line 60
    :cond_0
    iget p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$extraCommand;

    iget-object p1, p1, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {p1, v2}, Lo/isRefreshPending;->extraCallback(Lo/isRefreshPending;Z)V

    .line 62
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$extraCommand;

    iget-object p1, p1, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->customDialogBackGround:I

    invoke-virtual {p1, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "customDialogBackGround"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$extraCommand;

    iget-object p1, p1, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {p1}, Lo/isRefreshPending;->onTransact(Lo/isRefreshPending;)Lo/refresh;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2089
    iget-object p1, p1, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(ZLo/getServerTime;)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v2, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
