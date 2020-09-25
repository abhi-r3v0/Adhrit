.class public final Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSmoothScrollerStopped;->onNavigationEvent(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
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

.field private synthetic onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/onSmoothScrollerStopped;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onSmoothScrollerStopped;Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onPostMessage:Lo/onSmoothScrollerStopped;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    .line 1015
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusData;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1034
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/OrderStatusData;->asInterface:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 55
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onPostMessage:Lo/onSmoothScrollerStopped;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    .line 2015
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusData;

    if-eqz v2, :cond_2

    .line 2026
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/OrderStatusData;->ICustomTabsCallback:Ljava/lang/Double;

    if-nez v2, :cond_4

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    .line 3015
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusData;

    if-eqz v2, :cond_3

    .line 3024
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/OrderStatusData;->onPostMessage:Ljava/lang/Double;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 57
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_2

    :cond_5
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 56
    :goto_2
    invoke-static {v1, v2, v3}, Lo/onSmoothScrollerStopped;->onNavigationEvent(Lo/onSmoothScrollerStopped;D)Lo/onAddFocusables$extraCallback;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 53
    new-instance v3, Lo/onAddFocusables;

    const-string v4, "RENT"

    invoke-direct {v3, v4, p1, v1, v2}, Lo/onAddFocusables;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/onAddFocusables$extraCallback;Ljava/util/Map;)V

    .line 60
    sget-object p1, Lo/setTextOff;->onNavigationEvent:Lo/setTextOff;

    move-object p1, v3

    check-cast p1, Lo/getSplitTrack;

    const-string v1, "paymentData"

    invoke-static {v1, p1}, Lo/setTextOff;->extraCallback(Ljava/lang/String;Lo/getSplitTrack;)V

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onPostMessage:Lo/onSmoothScrollerStopped;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v3, p1}, Lo/onAddFocusables;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    .line 62
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onPostMessage:Lo/onSmoothScrollerStopped;

    .line 4000
    iget-object p1, p1, Lo/onSmoothScrollerStopped;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 62
    invoke-static {p1, v0, v2, v2, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
