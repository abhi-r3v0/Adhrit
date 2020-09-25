.class public final Lo/findViewByPosition;
.super Lo/updateAnchorFromChildren;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifeStyleArchivedClaimedFragment;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimBaseFragment;",
        "()V",
        "emptyCtaClicked",
        "",
        "getClaimedRewardType",
        "",
        "getEmptyScreenData",
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView$EmptyScreenData;",
        "getEmptyView",
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView;",
        "getLoaderView",
        "Lcom/dreamplug/fabrik/helper/ui/widget/FabrikLoaderView;",
        "getRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
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
.field private ICustomTabsCallback$Stub:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/updateAnchorFromChildren;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/onViewStateRestored;
    .locals 1

    .line 74
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->emptyCardLayout:I

    invoke-virtual {p0, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onViewStateRestored;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "archived_expired"

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lo/updateAnchorFromChildren;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lifestyle_archived_reward_screen"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lo/getMaxCardElevation;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e01f4

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateAnchorFromChildren;->onDestroyView()V

    .line 4000
    iget-object v0, p0, Lo/findViewByPosition;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()Lo/onViewStateRestored$onNavigationEvent;
    .locals 16

    .line 86
    new-instance v6, Lo/onViewStateRestored$onNavigationEvent;

    .line 87
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130198

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130197

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130196

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    const-string v7, "lifestyle"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3fe

    invoke-static/range {v7 .. v15}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080433

    move-object v0, v6

    .line 86
    invoke-direct/range {v0 .. v5}, Lo/onViewStateRestored$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public final onNavigationEvent()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 78
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, v0}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/findViewByPosition;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/findViewByPosition;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/findViewByPosition;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/findViewByPosition;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/findViewByPosition;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Lo/updateAnchorFromChildren;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    new-instance p2, Lo/startActivityForResult;

    move-object v0, p0

    check-cast v0, Lo/startActivityForResult$onNavigationEvent;

    invoke-direct {p2, v0}, Lo/startActivityForResult;-><init>(Lo/startActivityForResult$onNavigationEvent;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 46
    new-instance p2, Lo/setGapStrategy;

    .line 48
    new-instance v3, Lo/getGapStrategy;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v6, v6}, Lo/getGapStrategy;-><init>(IIII)V

    .line 49
    new-instance v4, Lo/getGapStrategy;

    invoke-virtual {p0}, Lo/updateAnchorFromChildren;->onTransact()I

    move-result v0

    invoke-direct {v4, v6, v0, v6, v6}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, p2

    .line 46
    invoke-direct/range {v0 .. v5}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 45
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1081
    iget-object p2, p0, Lo/updateAnchorFromChildren;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_0

    const-string v0, "linearLayoutManager"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 52
    :cond_0
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1082
    iget-object p2, p0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez p2, :cond_1

    const-string v0, "claimedRewardAdapter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 53
    :cond_1
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    new-instance p2, Lo/updateAnchorFromChildren$onRelationshipValidationResult;

    invoke-direct {p2, p0}, Lo/updateAnchorFromChildren$onRelationshipValidationResult;-><init>(Lo/updateAnchorFromChildren;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 56
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "title"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13046a

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/findViewByPosition$onPostMessage;

    invoke-direct {p2, p0}, Lo/findViewByPosition$onPostMessage;-><init>(Lo/findViewByPosition;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 60
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->back:I

    invoke-virtual {p0, p1}, Lo/updateAnchorFromChildren;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/offsetPosition;

    const-string p2, "back"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/findViewByPosition$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/findViewByPosition$onMessageChannelReady;-><init>(Lo/findViewByPosition;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    const/4 p1, 0x1

    new-array p2, p1, [Lo/addWrite;

    .line 64
    sget-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "archived_expired"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "section count"

    invoke-direct {v1, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, v6

    const-string v0, "pairs"

    .line 63
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "your_reward_archived_rewards_Screen"

    .line 63
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
