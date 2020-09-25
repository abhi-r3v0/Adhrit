.class public final Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearOnChildAttachStateChangeListeners;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardFragment$onViewCreated$6",
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
.field private synthetic extraCallback:Landroidx/recyclerview/widget/GridLayoutManager;

.field private synthetic onPostMessage:Lo/clearOnChildAttachStateChangeListeners;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            ")V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    iput-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;->extraCallback:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 210
    :cond_0
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;->extraCallback:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 211
    iget-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p2}, Lo/clearOnChildAttachStateChangeListeners;->extraCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p2

    .line 2000
    iget-object p2, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/checkSpanForGap;

    .line 2151
    iget-object p2, p2, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 211
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3

    if-lez p1, :cond_3

    .line 212
    iget-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p2}, Lo/clearOnChildAttachStateChangeListeners;->extraCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p2

    .line 4000
    iget-object p2, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/checkSpanForGap;

    .line 4151
    iget-object p2, p2, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 212
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager;

    .line 214
    instance-of p2, p1, Lo/setViewCacheExtension;

    if-eqz p2, :cond_3

    check-cast p1, Lo/setViewCacheExtension;

    .line 5046
    iget-object p2, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 214
    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getRank()Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(Lo/clearOnChildAttachStateChangeListeners;)I

    move-result v1

    if-le p2, v1, :cond_3

    .line 215
    iget-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    .line 6046
    iget-object p1, p1, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 215
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getRank()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_2
    invoke-static {p2, v0}, Lo/clearOnChildAttachStateChangeListeners;->onMessageChannelReady(Lo/clearOnChildAttachStateChangeListeners;I)V

    :cond_3
    return-void
.end method
