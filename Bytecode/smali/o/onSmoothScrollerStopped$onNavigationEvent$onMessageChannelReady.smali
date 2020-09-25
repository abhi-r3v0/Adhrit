.class public final Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSmoothScrollerStopped$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
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
        "invoke",
        "com/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onSmoothScrollerStopped$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 8

    .line 1115
    iget-object v0, p0, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object v0, v0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1260
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1261
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_5

    .line 1116
    iget-object v2, p0, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object v2, v2, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    invoke-static {v2}, Lo/onSmoothScrollerStopped;->onPostMessage(Lo/onSmoothScrollerStopped;)Lo/createFullSpanItemFromStart;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/onAudioInfoChanged;->m_()V

    .line 1117
    :cond_1
    iget-object v2, p0, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object v2, v2, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    iget-object v4, p0, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object v4, v4, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 3000
    iget-object v4, v4, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/stopSmoothScroller;

    .line 3019
    iget-object v4, v4, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    if-nez v4, :cond_2

    const-string v6, "extra"

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3168
    :cond_2
    iget-object v4, v4, Lo/onDetach$cancel;->onMessageChannelReady:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 1117
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    iget-object v6, p0, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lo/onSmoothScrollerStopped$onNavigationEvent;

    iget-object v6, v6, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 4000
    iget-object v6, v6, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/stopSmoothScroller;

    .line 4024
    iget-object v6, v6, Lo/stopSmoothScroller;->extraCallback:Ljava/lang/Double;

    if-eqz v6, :cond_4

    .line 1117
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    goto :goto_0

    :cond_4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-static {v2, v4, v6, v7}, Lo/onSmoothScrollerStopped;->extraCallback(Lo/onSmoothScrollerStopped;Ljava/lang/String;D)V

    .line 1263
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 1264
    :cond_5
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_6

    .line 1265
    new-instance v2, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1266
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1268
    :cond_6
    :goto_1
    new-instance v1, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady$1;

    invoke-direct {v1, v3, v0}, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady$1;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 39
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
