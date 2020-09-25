.class public final Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;->onMessageChannelReady(Ljava/lang/String;)V
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
.field private synthetic extraCallback:Lo/getSpanGroupIndex;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getSpanGroupIndex;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getSpanGroupIndex;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    .locals 12

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x6e8d8031

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const v1, 0x341314

    if-eq v0, v1, :cond_1

    const v1, 0x67622a8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v0, "retry"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 65
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object p1

    .line 1055
    iput-object v2, p1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1056
    iget-object v0, p1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v0, p1, Lo/setRecycleChildrenOnDetach;->warmup:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->ICustomTabsCallback(Lo/getSpanGroupIndex;)V

    goto :goto_1

    :cond_1
    const-string v0, "okay"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 69
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getSpanGroupIndex;

    new-instance v0, Lo/computeHorizontalScrollRange$getInterfaceDescriptor;

    new-instance v1, Lo/onDetach$INotificationSideChannel$Default;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v2}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v2

    .line 1069
    iget-object v2, v2, Lo/setRecycleChildrenOnDetach;->mayLaunchUrl:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_2

    move-object v2, v3

    .line 70
    :cond_2
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v4}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v4

    .line 2067
    iget-object v4, v4, Lo/setRecycleChildrenOnDetach;->updateVisuals:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    const-string v4, "drawdown"

    .line 69
    invoke-direct {v1, v2, v3, v4}, Lo/onDetach$INotificationSideChannel$Default;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/computeHorizontalScrollRange$getInterfaceDescriptor;-><init>(Lo/onDetach$INotificationSideChannel$Default;)V

    check-cast v0, Lo/computeHorizontalScrollRange;

    invoke-virtual {p1, v0}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/computeHorizontalScrollRange;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "support"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 74
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->extraCallback:Lo/getSpanGroupIndex;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    const v1, 0x7f1304ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-string/jumbo v0, "support/articles/43000566210"

    invoke-static {v2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f5

    const-string/jumbo v4, "web"

    invoke-static/range {v3 .. v11}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 27
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
