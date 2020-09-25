.class public final Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight$onTransact;
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
.field private synthetic extraCallback:Lo/getMaxAvailableHeight$onTransact;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Lo/fromPathMerge;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMaxAvailableHeight$onTransact;Lo/fromPathMerge;)V
    .locals 0

    iput-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getMaxAvailableHeight$onTransact;

    iput-object p4, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/fromPathMerge;

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
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getMaxAvailableHeight$onTransact;

    iget-object p1, p1, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v0, "childFragmentManager"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1896
    iget-object p1, p1, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p1}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    const-string v0, "childFragmentManager.fragments"

    .line 53
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 54
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 53
    instance-of v0, v0, Lo/createDrawableIfNeeded;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_7

    .line 57
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getMaxAvailableHeight$onTransact;

    iget-object p1, p1, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 2000
    iget-object p1, p1, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 2035
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsCallback:Lo/onMoveStarting$onNavigationEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2258
    iget-object p1, p1, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz p1, :cond_3

    .line 3013
    iget-object p1, p1, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_4

    .line 3070
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast p1, Ljava/util/List;

    .line 57
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cred/pay/repository/models/VpaAccount;

    .line 4048
    iget-object v3, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 4072
    iget-object v3, v3, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 58
    iget-object v4, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/fromPathMerge;

    .line 5069
    iget-object v4, v4, Lo/fromPathMerge;->ICustomTabsCallback:Ljava/lang/Object;

    .line 58
    check-cast v4, Lo/snapFromFling$extraCallback;

    if-eqz v4, :cond_6

    .line 6054
    iget-object v4, v4, Lo/snapFromFling$extraCallback;->extraCallback:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v4, v0

    .line 58
    :goto_3
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    iget-object v3, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getMaxAvailableHeight$onTransact;

    iget-object v3, v3, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 7000
    iget-object v3, v3, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    .line 59
    new-instance v4, Lcom/cred/pay/repository/models/CredUpiInstrument;

    const/16 v5, 0x1e

    invoke-direct {v4, v2, v5}, Lcom/cred/pay/repository/models/CredUpiInstrument;-><init>(Lcom/cred/pay/repository/models/VpaAccount;I)V

    check-cast v4, Lo/isInputMethodNotNeeded;

    const-string/jumbo v2, "setting m-pin"

    invoke-virtual {v3, v4, v2, v1}, Lo/MenuItemHoverListener;->onPostMessage(Lo/isInputMethodNotNeeded;Ljava/lang/String;Z)V

    goto :goto_2

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
