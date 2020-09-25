.class final synthetic Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$onRelationshipValidationResult;
.super Lo/startListening;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/startListening;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>(Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lo/startListening;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "fetchRewards"

    return-object v0
.end method

.method public final h_()Ljava/lang/String;
    .locals 1

    const-string v0, "fetchRewards()V"

    return-object v0
.end method

.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 26
    iget-object v0, p0, Lo/abortTransactionsAtNode;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

    .line 2036
    iget-boolean v1, v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->onMessageChannelReady:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2037
    iput-boolean v1, v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->onMessageChannelReady:Z

    .line 3000
    iget-object v1, v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/computeHorizontalScrollExtent;

    .line 3018
    iget-object v2, v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmResult;

    .line 4018
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmResult;->onNavigationEvent:Ljava/lang/String;

    .line 4113
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v3, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "all products"

    .line 4113
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object v3, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4113
    :goto_0
    invoke-interface {v1, v2, v3}, Lo/computeHorizontalScrollExtent;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object v1

    .line 2039
    new-instance v2, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;-><init>(Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 2057
    iput-object v1, v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->ICustomTabsCallback:Lo/clearScrap;

    .line 26
    :cond_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/getQueryViews;
    .locals 1

    const-class v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v0

    return-object v0
.end method
