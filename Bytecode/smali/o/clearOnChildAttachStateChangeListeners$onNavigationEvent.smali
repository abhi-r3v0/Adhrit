.class final Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearOnChildAttachStateChangeListeners;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners;)V
    .locals 0

    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 53
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 1067
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v0}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object v0

    iget-object v1, p0, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v1}, Lo/clearOnChildAttachStateChangeListeners;->onMessageChannelReady(Lo/clearOnChildAttachStateChangeListeners;)Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1408
    iget-object v1, v1, Lo/clearOnChildAttachStateChangeListeners$extraCallback;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 1067
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v2, "leaderboardId"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v2, v0, Lo/addItemDecoration;->onTransact:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getScrollState;

    .line 2251
    invoke-interface {v2, v1}, Lo/getScrollState;->onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v1

    .line 2252
    new-instance v2, Lo/addItemDecoration$onTransact;

    invoke-direct {v2, v0}, Lo/addItemDecoration$onTransact;-><init>(Lo/addItemDecoration;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 1068
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v0}, Lo/clearOnChildAttachStateChangeListeners;->extraCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1069
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    const-string v0, "loaderView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p1}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object p1

    .line 4056
    iget-object p1, p1, Lo/addItemDecoration;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1070
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->getUsers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v1, 0x3

    if-le p1, v1, :cond_3

    .line 1071
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->listTrailingBg:I

    invoke-virtual {p1, v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "listTrailingBg"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    :cond_3
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p1}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object v0

    .line 4057
    iget-object v0, v0, Lo/addItemDecoration;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;

    if-nez v0, :cond_4

    .line 1073
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-static {p1, v0}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;)V

    :cond_5
    return-void
.end method
