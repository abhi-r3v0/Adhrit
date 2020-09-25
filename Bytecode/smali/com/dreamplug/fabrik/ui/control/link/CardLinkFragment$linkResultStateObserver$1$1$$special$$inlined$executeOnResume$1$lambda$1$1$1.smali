.class public final Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release",
        "com/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$1$1$onAnimationEnd$1$$special$$inlined$executeOnResume$1"
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

.field private synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object p1, p1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object p1

    .line 1025
    iget-object p1, p1, Lo/getCurrentList;->onMessageChannelReady:Lo/setActive;

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 53
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 54
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    .line 2000
    iget-object v2, v2, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 54
    invoke-static {v2, v1, v0, v3, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 55
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v1, v1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v1, v1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v1}, Lo/AsyncDifferConfig$Builder;->newSession(Lo/AsyncDifferConfig$Builder;)Z

    move-result v1

    const-string v2, "card_link_success"

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v1, v1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v1, v1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    .line 3000
    iget-object v1, v1, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 56
    new-instance v3, Lo/registerOnLoadCanceledListener$ICustomTabsCallback;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1, v2}, Lo/registerOnLoadCanceledListener$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    new-instance p1, Lo/onGetChildDrawingOrder$INotificationSideChannel;

    invoke-direct {p1, v3}, Lo/onGetChildDrawingOrder$INotificationSideChannel;-><init>(Lo/registerOnLoadCanceledListener$ICustomTabsCallback;)V

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {v1, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_1

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v1, v1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v1, v1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v1}, Lo/AsyncDifferConfig$Builder;->ICustomTabsService(Lo/AsyncDifferConfig$Builder;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v1, v1, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v1, v1, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    .line 4000
    iget-object v1, v1, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    .line 59
    new-instance v3, Lo/cancelLoad$onMessageChannelReady;

    .line 60
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    .line 59
    :cond_2
    invoke-direct {v3, v4, v2, v0, p1}, Lo/cancelLoad$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p1, "data"

    invoke-static {v3, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4405
    new-instance p1, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {p1, v3}, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/cancelLoad$onMessageChannelReady;)V

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {v1, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 66
    :cond_3
    :goto_1
    sget-object p1, Lo/onStopLoading;->onNavigationEvent:Lo/onStopLoading;

    invoke-static {v0}, Lo/onStopLoading;->onNavigationEvent(Z)V

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
