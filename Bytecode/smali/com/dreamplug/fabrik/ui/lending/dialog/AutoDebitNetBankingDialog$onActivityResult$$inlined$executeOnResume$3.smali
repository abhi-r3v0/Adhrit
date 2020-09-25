.class public final Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findSwapTargets;->onActivityResult(IILandroid/content/Intent;)V
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

.field private synthetic onMessageChannelReady:Lo/findSwapTargets;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/findSwapTargets;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/findSwapTargets;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    .locals 9

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/findSwapTargets;

    invoke-static {p1}, Lo/findSwapTargets;->extraCallback(Lo/findSwapTargets;)Lo/createFullSpanItemFromStart;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/findSwapTargets;

    invoke-static {p1}, Lo/findSwapTargets;->onMessageChannelReady(Lo/findSwapTargets;)Lo/setRecycleChildrenOnDetach;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 55
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/findSwapTargets;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    if-eqz v1, :cond_3

    check-cast v1, Lo/getSpanGroupIndex;

    .line 56
    new-instance v3, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    const/4 v4, 0x2

    new-array v4, v4, [Lo/addWrite;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "user_consent"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v6, v4, v5

    .line 56
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "reset"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v0

    .line 56
    invoke-static {v4}, Lo/lambda$onError$1;->onMessageChannelReady([Lo/addWrite;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/findSwapTargets;

    invoke-static {v6}, Lo/findSwapTargets;->onNavigationEvent(Lo/findSwapTargets;)Lo/onDetach$write;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 2131
    :cond_1
    iget-object v6, v6, Lo/onDetach$write;->ICustomTabsCallback:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, v6, p1}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v3}, Lo/getSpanGroupIndex;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/findSwapTargets;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lo/getSpanGroupIndex;

    new-instance v1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    new-instance v2, Lo/onDetach$read;

    invoke-direct {v2, v5}, Lo/onDetach$read;-><init>(Z)V

    invoke-direct {v1, v2}, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/onDetach$read;)V

    check-cast v1, Lo/computeHorizontalScrollRange;

    invoke-virtual {p1, v1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/computeHorizontalScrollRange;)V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/findSwapTargets;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    goto :goto_0

    .line 57
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
