.class public final Lo/onNewIntent;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u0017H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0008\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/manage/ManageCardsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "adapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "getAdapter",
        "()Lcom/dreamplug/utils/list/VerticalAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "manageViewModel",
        "Lcom/dreamplug/fabrik/ui/cm/manage/ManageCardViewModel;",
        "getManageViewModel",
        "()Lcom/dreamplug/fabrik/ui/cm/manage/ManageCardViewModel;",
        "manageViewModel$delegate",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "router",
        "Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "getRouter",
        "()Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "router$delegate",
        "stateObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/fabrik/ui/cm/manage/ManageCardState;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "setState",
        "state",
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

.field private asInterface:Ljava/util/HashMap;

.field private final extraCallback:Lo/isSameListener;

.field private final onMessageChannelReady:Lo/isSameListener;

.field private final onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onPostMessage:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/dispatchFragmentsOnCreateView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0e00b9

    .line 23
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 82
    new-instance v0, Lo/onNewIntent$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/onNewIntent$onNavigationEvent;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 82
    iput-object v2, p0, Lo/onNewIntent;->extraCallback:Lo/isSameListener;

    .line 26
    new-instance v0, Lo/onNewIntent$extraCallback;

    invoke-direct {v0, p0}, Lo/onNewIntent$extraCallback;-><init>(Lo/onNewIntent;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/onNewIntent;->onPostMessage:Lo/setPlaybackToRemote;

    .line 31
    new-instance v0, Lo/onNewIntent$onPostMessage;

    invoke-direct {v0, p0}, Lo/onNewIntent$onPostMessage;-><init>(Lo/onNewIntent;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 31
    iput-object v2, p0, Lo/onNewIntent;->ICustomTabsCallback:Lo/isSameListener;

    .line 36
    sget-object v0, Lo/onNewIntent$onMessageChannelReady;->ICustomTabsCallback:Lo/onNewIntent$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 36
    iput-object v1, p0, Lo/onNewIntent;->onMessageChannelReady:Lo/isSameListener;

    .line 70
    new-instance v0, Lo/onNewIntent$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/onNewIntent$ICustomTabsCallback;-><init>(Lo/onNewIntent;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/onNewIntent;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/onNewIntent;Lo/dispatchFragmentsOnCreateView;)V
    .locals 2

    .line 8056
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-direct {p0, v0}, Lo/onNewIntent;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    const-string v1, "loaderView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 9017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8058
    instance-of v0, p1, Lo/dispatchFragmentsOnCreateView$onPostMessage;

    if-eqz v0, :cond_0

    .line 8059
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->actionsList:I

    invoke-direct {p0, v0}, Lo/onNewIntent;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/startActivity;

    const-string v1, "actionsList"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object v1, p0, Lo/onNewIntent;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/repositionToWrapContentIfNecessary;

    .line 8059
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11000
    iget-object p0, p0, Lo/onNewIntent;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/repositionToWrapContentIfNecessary;

    .line 8060
    check-cast p1, Lo/dispatchFragmentsOnCreateView$onPostMessage;

    .line 11098
    iget-object p1, p1, Lo/dispatchFragmentsOnCreateView$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    const-string v0, "value"

    .line 8060
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13000
    iget-object p0, p0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/checkSpanForGap;

    .line 12038
    invoke-virtual {p0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static final synthetic extraCallback(Lo/onNewIntent;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/onNewIntent;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/onNewIntent;)Lo/getDimensionPixelOffset;
    .locals 0

    .line 14000
    iget-object p0, p0, Lo/onNewIntent;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getDimensionPixelOffset;

    return-object p0
.end method

.method private onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/onNewIntent;->asInterface:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onNewIntent;->asInterface:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/onNewIntent;->asInterface:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/onNewIntent;->asInterface:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 41
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ManageCardsFragment"

    const/4 v3, 0x0

    .line 1029
    invoke-interface {v0, v2, v1, v3}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 41
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 15000
    iget-object v0, p0, Lo/onNewIntent;->asInterface:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-direct {p0, p1}, Lo/onNewIntent;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    const-string p2, "loaderView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$visible"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->actionsList:I

    invoke-direct {p0, p1}, Lo/onNewIntent;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/startActivity;

    const-string p2, "actionsList"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object p2, p0, Lo/onNewIntent;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/repositionToWrapContentIfNecessary;

    .line 50
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4000
    iget-object p1, p0, Lo/onNewIntent;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/supportStartPostponedEnterTransition;

    .line 4023
    iget-object p1, p1, Lo/supportStartPostponedEnterTransition;->onNavigationEvent:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    iget-object v0, p0, Lo/onNewIntent;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 5000
    iget-object p1, p0, Lo/onNewIntent;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/supportStartPostponedEnterTransition;

    .line 6000
    iget-object p2, p1, Lo/supportStartPostponedEnterTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMainThreadExecutor;

    .line 5061
    invoke-interface {p2}, Lo/getMainThreadExecutor;->onMessageChannelReady()Lo/clearScrap;

    move-result-object p2

    .line 5062
    new-instance v0, Lo/supportStartPostponedEnterTransition$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/supportStartPostponedEnterTransition$onMessageChannelReady;-><init>(Lo/supportStartPostponedEnterTransition;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p2, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
