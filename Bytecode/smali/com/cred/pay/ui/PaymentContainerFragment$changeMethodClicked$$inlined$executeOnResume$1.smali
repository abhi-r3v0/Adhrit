.class public final Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight;
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
.field private synthetic ICustomTabsCallback:Lo/getMaxAvailableHeight;

.field private synthetic extraCallback:Z

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Ljava/util/Map;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMaxAvailableHeight;ZLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    iput-boolean p4, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->extraCallback:Z

    iput-object p5, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v0, "childFragmentManager"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1896
    iget-object p1, p1, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p1}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    const-string v0, "childFragmentManager.fragments"

    .line 55
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 57
    instance-of v5, v4, Lo/getAllExperimentsInAnalytics;

    if-eqz v5, :cond_0

    .line 58
    instance-of v5, v4, Lo/removeTabAt;

    if-eqz v5, :cond_2

    .line 61
    iget-object v2, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 2000
    iget-object v2, v2, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    .line 2037
    iget-object v2, v2, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v2, :cond_1

    .line 2040
    iget-object v2, v2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz v2, :cond_1

    .line 2061
    iget-boolean v2, v2, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->ICustomTabsCallback$Stub:Z

    if-ne v2, v1, :cond_1

    .line 63
    check-cast v4, Lo/removeTabAt;

    invoke-virtual {v4, v1}, Lo/removeTabAt;->onNavigationEvent(Z)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 65
    :cond_2
    instance-of v5, v4, Lo/setSelected;

    if-eqz v5, :cond_3

    .line 66
    check-cast v4, Lo/setSelected;

    invoke-virtual {v4}, Lo/setSelected;->onPostMessage()V

    goto :goto_0

    .line 67
    :cond_3
    check-cast v4, Lo/getAllExperimentsInAnalytics;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v4}, Lo/onAudioInfoChanged;->m_()V

    goto :goto_0

    .line 73
    :cond_4
    iget-boolean p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->extraCallback:Z

    if-eqz p1, :cond_a

    const-string p1, "payment_farm"

    const-string v4, "recommendation"

    if-eqz v2, :cond_5

    move-object v2, p1

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, v4

    :goto_3
    const/4 v3, 0x4

    new-array v4, v3, [Lo/addWrite;

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string v6, "destination"

    invoke-direct {v5, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v0

    .line 4043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v2, "source"

    invoke-direct {v0, v2, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v4, v1

    const/4 p1, 0x2

    .line 84
    iget-object v0, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 5000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 5145
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {v0}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v2

    .line 6043
    :goto_4
    new-instance v5, Lo/addWrite;

    const-string v6, "payment_instrument_group"

    invoke-direct {v5, v6, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, p1

    const/4 p1, 0x3

    .line 85
    iget-object v0, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 7000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 7145
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v0, :cond_8

    .line 85
    invoke-virtual {v0}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v2

    .line 8043
    :cond_8
    new-instance v0, Lo/addWrite;

    const-string v5, "payment_instrument_id"

    invoke-direct {v0, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v4, p1

    const-string p1, "pairs"

    .line 76
    invoke-static {v4, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 81
    iget-object v0, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast v0, Ljava/util/Map;

    const-string p1, "payment_failure_change_method_click"

    invoke-static {p1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    :cond_a
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
