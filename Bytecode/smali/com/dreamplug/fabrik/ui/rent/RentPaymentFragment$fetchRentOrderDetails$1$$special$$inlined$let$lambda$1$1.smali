.class public final Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;
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
        "com/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$1$1$$special$$inlined$executeOnResume$1"
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

.field private synthetic onMessageChannelReady:Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->onMessageChannelReady:Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->onMessageChannelReady:Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;

    iget-object p1, p1, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object p1, p1, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    invoke-static {p1}, Lo/onSmoothScrollerStopped;->onPostMessage(Lo/onSmoothScrollerStopped;)Lo/createFullSpanItemFromStart;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->onMessageChannelReady:Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;

    iget-object p1, p1, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object p1, p1, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->onMessageChannelReady:Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;

    iget-object v0, v0, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object v0, v0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 1000
    iget-object v0, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/stopSmoothScroller;

    .line 1019
    iget-object v0, v0, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    if-nez v0, :cond_1

    const-string v1, "extra"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1168
    :cond_1
    iget-object v0, v0, Lo/onDetach$cancel;->onMessageChannelReady:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 54
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->onMessageChannelReady:Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;

    iget-object v1, v1, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object v1, v1, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 2000
    iget-object v1, v1, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 2024
    iget-object v1, v1, Lo/stopSmoothScroller;->extraCallback:Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-static {p1, v0, v1, v2}, Lo/onSmoothScrollerStopped;->extraCallback(Lo/onSmoothScrollerStopped;Ljava/lang/String;D)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
