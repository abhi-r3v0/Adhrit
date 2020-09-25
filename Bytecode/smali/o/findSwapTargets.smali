.class public final Lo/findSwapTargets;
.super Lo/updateRemainingSpans;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/findSwapTargets$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0011H\u0016J\u001a\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog;",
        "Lcom/dreamplug/widget/FullScreenDialogFragment;",
        "()V",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashWorkFlowExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashWorkFlowExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "parentViewModel",
        "Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashSharedViewModel;",
        "getParentViewModel",
        "()Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashSharedViewModel;",
        "parentViewModel$delegate",
        "progressDialog",
        "Lcom/dreamplug/widget/CredProgressDialog;",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onViewCreated",
        "view",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private extraCallback:Lo/createFullSpanItemFromStart;

.field private final onNavigationEvent:Lo/isSameListener;

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lo/updateRemainingSpans;-><init>()V

    .line 27
    new-instance v0, Lo/findSwapTargets$onPostMessage;

    invoke-direct {v0, p0}, Lo/findSwapTargets$onPostMessage;-><init>(Lo/findSwapTargets;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 27
    iput-object v2, p0, Lo/findSwapTargets;->ICustomTabsCallback:Lo/isSameListener;

    .line 30
    new-instance v0, Lo/findSwapTargets$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/findSwapTargets$onMessageChannelReady;-><init>(Lo/findSwapTargets;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 30
    iput-object v1, p0, Lo/findSwapTargets;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/findSwapTargets;)Lo/createFullSpanItemFromStart;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/findSwapTargets;->extraCallback:Lo/createFullSpanItemFromStart;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/findSwapTargets;)Lo/setRecycleChildrenOnDetach;
    .locals 0

    .line 11000
    iget-object p0, p0, Lo/findSwapTargets;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setRecycleChildrenOnDetach;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/findSwapTargets;)Lo/onDetach$write;
    .locals 0

    .line 12000
    iget-object p0, p0, Lo/findSwapTargets;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onDetach$write;

    return-object p0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 73
    invoke-super {p0, p1, p2, p3}, Lo/updateRemainingSpans;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0x9c44

    if-eq p1, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p1, -0x1

    const/4 p3, 0x0

    const-string v0, "lifecycle"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, p1, :cond_6

    if-eqz p2, :cond_1

    goto/16 :goto_4

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance p2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v2, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 105
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object p3, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p3

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {p3, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p3

    if-ltz p3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_4

    .line 2025
    iget-object p3, p0, Lo/findSwapTargets;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz p3, :cond_3

    .line 79
    invoke-virtual {p3}, Lo/onAudioInfoChanged;->m_()V

    .line 80
    :cond_3
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    .line 108
    iput-boolean v1, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p3

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p3, v1, :cond_5

    .line 110
    new-instance p3, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$1;

    invoke-direct {p3, p1, p2, p0}, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/findSwapTargets;)V

    check-cast p3, Lo/createCallback;

    iput-object p3, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 111
    iget-object p2, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 113
    :cond_5
    :goto_0
    new-instance p2, Lo/findSwapTargets$ICustomTabsCallback;

    invoke-direct {p2, v0, p1}, Lo/findSwapTargets$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    .line 84
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance p2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v2, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 115
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object p3, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p3

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {p3, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p3

    if-ltz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_1

    :cond_7
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_d

    .line 3025
    iget-object p3, p0, Lo/findSwapTargets;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz p3, :cond_8

    .line 85
    invoke-virtual {p3}, Lo/onAudioInfoChanged;->m_()V

    .line 5000
    :cond_8
    iget-object p3, p0, Lo/findSwapTargets;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/setRecycleChildrenOnDetach;

    if-eqz p3, :cond_c

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    if-eqz v3, :cond_b

    check-cast v3, Lo/getSpanGroupIndex;

    .line 88
    new-instance v5, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    const/4 v6, 0x2

    new-array v6, v6, [Lo/addWrite;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5043
    new-instance v8, Lo/addWrite;

    const-string/jumbo v9, "user_consent"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v2

    .line 88
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6043
    new-instance v8, Lo/addWrite;

    const-string/jumbo v9, "reset"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v1

    .line 88
    invoke-static {v6}, Lo/lambda$onError$1;->onMessageChannelReady([Lo/addWrite;)Ljava/util/Map;

    move-result-object v6

    .line 8000
    iget-object v7, p0, Lo/findSwapTargets;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/onDetach$write;

    if-nez v7, :cond_9

    .line 88
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 8131
    :cond_9
    iget-object v7, v7, Lo/onDetach$write;->ICustomTabsCallback:Ljava/lang/String;

    .line 88
    invoke-virtual {p3}, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v5, v6, v7, p3}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3, v5}, Lo/getSpanGroupIndex;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_a

    check-cast p3, Lo/getSpanGroupIndex;

    new-instance v3, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    new-instance v4, Lo/onDetach$read;

    invoke-direct {v4, v2}, Lo/onDetach$read;-><init>(Z)V

    invoke-direct {v3, v4}, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/onDetach$read;)V

    check-cast v3, Lo/computeHorizontalScrollRange;

    invoke-virtual {p3, v3}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/computeHorizontalScrollRange;)V

    .line 90
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    goto :goto_2

    .line 89
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_c
    :goto_2
    iput-boolean v1, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_3

    .line 119
    :cond_d
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p3

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p3, v1, :cond_e

    .line 120
    new-instance p3, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;

    invoke-direct {p3, p1, p2, p0}, Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/findSwapTargets;)V

    check-cast p3, Lo/createCallback;

    iput-object p3, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 121
    iget-object p2, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 123
    :cond_e
    :goto_3
    new-instance p2, Lo/findSwapTargets$extraCallback;

    invoke-direct {p2, v0, p1}, Lo/findSwapTargets$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :goto_4
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e01b8

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateRemainingSpans;->onDestroyView()V

    .line 13000
    iget-object v0, p0, Lo/findSwapTargets;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/findSwapTargets;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/findSwapTargets;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/findSwapTargets;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/findSwapTargets;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/findSwapTargets;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 63
    invoke-super {p0}, Lo/updateRemainingSpans;->onStart()V

    .line 64
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x106000d

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1, p2}, Lo/updateRemainingSpans;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    new-instance p1, Lo/createFullSpanItemFromStart;

    invoke-direct {p1}, Lo/createFullSpanItemFromStart;-><init>()V

    iput-object p1, p0, Lo/findSwapTargets;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 44
    :cond_0
    iget-object p1, p0, Lo/findSwapTargets;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    const-string v0, "progress"

    invoke-virtual {p1, p2, v0}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 1000
    :cond_1
    iget-object p1, p0, Lo/findSwapTargets;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$write;

    if-eqz p1, :cond_2

    .line 1131
    iget-object p1, p1, Lo/onDetach$write;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    if-eqz p1, :cond_2

    .line 1152
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 47
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lo/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    new-instance v0, Lo/setPopupClipToScreenEnabled;

    .line 50
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getOrderId()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getEndUrls()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const-string v5, "1.0"

    move-object v2, v0

    .line 49
    invoke-direct/range {v2 .. v8}, Lo/setPopupClipToScreenEnabled;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    check-cast v0, Landroid/os/Parcelable;

    const-string p1, "extraInfo"

    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p1, 0x9c44

    .line 47
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    const-string/jumbo p1, "stash_withdrawal_mandate_netbanking_screen_load"

    .line 58
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    return-void
.end method
