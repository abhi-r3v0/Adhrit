.class public final Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/toLegacyStreamType;)V
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
        "com/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$1$1$onAnimationEnd$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    .line 347
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

    .line 352
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
    .locals 9

    .line 1353
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v0, v0, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v0, v0, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1474
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1475
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_6

    .line 1354
    iget-object v5, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v5, v5, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v5, v5, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v5}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v5

    .line 3025
    iget-object v5, v5, Lo/getCurrentList;->onMessageChannelReady:Lo/setActive;

    .line 3320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v7, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v5, v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 1354
    :goto_1
    check-cast v5, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz v5, :cond_5

    .line 1355
    iget-object v7, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v7, v7, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v7, v7, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    .line 4000
    iget-object v7, v7, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/getMoveDuration;

    const/4 v8, 0x5

    .line 1355
    invoke-static {v7, v4, v6, v2, v8}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1356
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v2}, Lo/AsyncDifferConfig$Builder;->newSession(Lo/AsyncDifferConfig$Builder;)Z

    move-result v2

    const-string v4, "card_link_success"

    if-eqz v2, :cond_2

    .line 1357
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    .line 5000
    iget-object v2, v2, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 1357
    new-instance v7, Lo/registerOnLoadCanceledListener$ICustomTabsCallback;

    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5, v4}, Lo/registerOnLoadCanceledListener$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5401
    new-instance v4, Lo/onGetChildDrawingOrder$INotificationSideChannel;

    invoke-direct {v4, v7}, Lo/onGetChildDrawingOrder$INotificationSideChannel;-><init>(Lo/registerOnLoadCanceledListener$ICustomTabsCallback;)V

    check-cast v4, Lo/getRemoveDuration;

    invoke-virtual {v2, v4}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_2

    .line 1359
    :cond_2
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v2}, Lo/AsyncDifferConfig$Builder;->ICustomTabsService(Lo/AsyncDifferConfig$Builder;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1360
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/AsyncDifferConfig$Builder$asBinder$3;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder$3;->onNavigationEvent:Lo/AsyncDifferConfig$Builder$asBinder;

    iget-object v2, v2, Lo/AsyncDifferConfig$Builder$asBinder;->extraCallback:Lo/AsyncDifferConfig$Builder;

    .line 6000
    iget-object v2, v2, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 1360
    new-instance v7, Lo/cancelLoad$onMessageChannelReady;

    .line 1361
    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v8

    .line 1364
    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, ""

    .line 1360
    :cond_3
    invoke-direct {v7, v8, v4, v6, v5}, Lo/cancelLoad$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v4, "data"

    invoke-static {v7, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6405
    new-instance v4, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v4, v7}, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/cancelLoad$onMessageChannelReady;)V

    check-cast v4, Lo/getRemoveDuration;

    invoke-virtual {v2, v4}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 1367
    :cond_4
    :goto_2
    sget-object v2, Lo/onStopLoading;->onNavigationEvent:Lo/onStopLoading;

    invoke-static {v6}, Lo/onStopLoading;->onNavigationEvent(Z)V

    .line 1477
    :cond_5
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_3

    .line 1478
    :cond_6
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_7

    .line 1479
    new-instance v2, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$lambda$1$1$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/control/link/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1$extraCallback;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1480
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1482
    :cond_7
    :goto_3
    new-instance v1, Lo/setMainThreadExecutor;

    invoke-direct {v1, v3, v0}, Lo/setMainThreadExecutor;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
