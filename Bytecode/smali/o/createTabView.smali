.class public final Lo/createTabView;
.super Lo/getAllExperimentsInAnalytics;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\"\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001c\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/cardlist/CardListFragment;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "()V",
        "adapter",
        "Lcom/cred/pay/ui/instrumentlisting/adapter/InstrumentListAdapter;",
        "loadingUtil",
        "Lcom/cred/pay/ui/utils/PaymentLoadingUtil;",
        "parentViewModel",
        "Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "getParentViewModel",
        "()Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "parentViewModel$delegate",
        "Lkotlin/Lazy;",
        "getTheme",
        "",
        "initLoadingUtil",
        "",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onClick",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:Ljava/util/HashMap;

.field private final onMessageChannelReady:Lo/isSameListener;

.field private onNavigationEvent:Lo/getTintListFromCache;

.field private onPostMessage:Lo/setAppSearchData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 31
    new-instance v0, Lo/createTabView$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/createTabView$onNavigationEvent;-><init>(Lo/createTabView;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 31
    iput-object v1, p0, Lo/createTabView;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/createTabView;)Lo/setAppSearchData;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/createTabView;->onPostMessage:Lo/setAppSearchData;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/createTabView;)Lo/MenuItemHoverListener;
    .locals 0

    .line 8000
    iget-object p0, p0, Lo/createTabView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/MenuItemHoverListener;

    return-object p0
.end method

.method private onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/createTabView;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/createTabView;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/createTabView;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/createTabView;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 45
    new-instance v0, Lo/createTabView$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/createTabView$onMessageChannelReady;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 50
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final asBinder()I
    .locals 1

    .line 35
    sget v0, Lo/onItemHoverEnter$onRelationshipValidationResult;->FabrikBottomSheetDialogTheme:I

    return v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    new-instance p1, Lo/getTintListFromCache;

    move-object v0, p0

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p1, v0}, Lo/getTintListFromCache;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p1, p0, Lo/createTabView;->onNavigationEvent:Lo/getTintListFromCache;

    .line 56
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->recommendations:I

    invoke-direct {p0, p1}, Lo/createTabView;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recommendations"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 57
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->recommendations:I

    invoke-direct {p0, p1}, Lo/createTabView;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/createTabView;->onNavigationEvent:Lo/getTintListFromCache;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2000
    iget-object p1, p0, Lo/createTabView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    if-eqz p1, :cond_2

    .line 2048
    iget-object p1, p1, Lo/MenuItemHoverListener;->newSession:Lcom/cred/pay/repository/models/PaymentMethod;

    if-eqz p1, :cond_2

    .line 3025
    iget-object p1, p1, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 59
    check-cast p1, Ljava/lang/Iterable;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3039
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 111
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    check-cast v1, Lo/isInputMethodNotNeeded;

    .line 60
    new-instance v2, Lo/getTintMode;

    invoke-direct {v2, v1}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :cond_2
    if-nez v1, :cond_3

    .line 3070
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 63
    :cond_3
    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    .line 64
    iget-object p1, p0, Lo/createTabView;->onNavigationEvent:Lo/getTintListFromCache;

    if-eqz p1, :cond_5

    const-string/jumbo v0, "value"

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {p1, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    .line 69
    :cond_5
    :goto_2
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->flAddNew:I

    invoke-direct {p0, p1}, Lo/createTabView;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v0, "flAddNew"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/createTabView$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/createTabView$ICustomTabsCallback;-><init>(Lo/createTabView;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 5085
    new-instance p1, Lo/setAppSearchData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lo/onChildrenLoaded;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {p1, v0, v1, v2, v3}, Lo/setAppSearchData;-><init>(Lo/onChildrenLoaded;ZFI)V

    iput-object p1, p0, Lo/createTabView;->onPostMessage:Lo/setAppSearchData;

    .line 6000
    iget-object p1, p0, Lo/createTabView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    if-eqz p1, :cond_6

    .line 6051
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    if-eqz p1, :cond_6

    .line 5086
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/createTabView$onPostMessage;

    invoke-direct {v1, p0}, Lo/createTabView$onPostMessage;-><init>(Lo/createTabView;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    :cond_6
    return-void

    .line 5085
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 38
    sget-object v0, Lo/merge;->extraCallback:Lo/merge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "InstrumentRecommendationsFragment"

    .line 1029
    invoke-interface {v0, v3, v1, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 39
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lo/onItemHoverEnter$onRelationshipValidationResult;->FabrikBottomSheetDialogTheme:I

    invoke-virtual {p0, v2, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    sget v0, Lo/onItemHoverEnter$onPostMessage;->black_70:I

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 107
    :cond_0
    sget p3, Lo/onItemHoverEnter$onTransact;->fragment_card_instrument_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 9000
    iget-object v0, p0, Lo/createTabView;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 1

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x72dd30f6

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "select_instrument"

    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    instance-of p1, p2, Lo/getTintMode;

    if-eqz p1, :cond_1

    .line 7000
    iget-object p1, p0, Lo/createTabView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    if-eqz p1, :cond_1

    .line 79
    check-cast p2, Lo/getTintMode;

    .line 7014
    iget-object p2, p2, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    const-string p3, "card list"

    .line 79
    invoke-virtual {p1, p2, p3}, Lo/MenuItemHoverListener;->onPostMessage(Lo/isInputMethodNotNeeded;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
