.class public final Lo/scrollHorizontallyBy$onMessageChannelReady;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/scrollHorizontallyBy;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/getSpanIndex;Lo/setRecycleChildrenOnDetach;Landroidx/fragment/app/Fragment;)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/LendingTenureViewPresenter$2$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/scrollHorizontallyBy;


# direct methods
.method constructor <init>(Lo/scrollHorizontallyBy;)V
    .locals 0

    iput-object p1, p0, Lo/scrollHorizontallyBy$onMessageChannelReady;->ICustomTabsCallback:Lo/scrollHorizontallyBy;

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x2

    new-array p2, p1, [Lo/addWrite;

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lo/scrollHorizontallyBy$onMessageChannelReady;->ICustomTabsCallback:Lo/scrollHorizontallyBy;

    .line 1037
    iget-object v2, v2, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 1058
    iget-object v2, v2, Lo/getSpanIndex;->updateVisuals:Ljava/lang/Integer;

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "selected_tenure"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p2, v1

    .line 77
    iget-object v1, p0, Lo/scrollHorizontallyBy$onMessageChannelReady;->ICustomTabsCallback:Lo/scrollHorizontallyBy;

    .line 3037
    iget-object v1, v1, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 3079
    iget-object v1, v1, Lo/getSpanIndex;->getDefaultImpl:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string v3, "count"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p2, v0

    const-string v0, "pairs"

    .line 77
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "stash_tenure_screen_last_card_seen"

    .line 77
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_0
    return-void
.end method
