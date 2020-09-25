.class public final Lo/findTargetSnapPosition$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findTargetSnapPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerVM$fetchUserGameData$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic ICustomTabsCallback:Lo/findTargetSnapPosition;


# direct methods
.method constructor <init>(Lo/findTargetSnapPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 1027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    const-string v1, "dataModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 1028
    iput-boolean v2, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsCallback$Stub$Proxy:Z

    .line 329
    iget-object v0, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 2027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2029
    :cond_1
    iput-object p1, v0, Lo/estimateNextPositionDiffForFling;->postMessage:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 330
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_c

    .line 331
    iget-object v0, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 3027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 331
    :cond_2
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 4009
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 331
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v3, :cond_3

    .line 4010
    iget v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->onPostMessage:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 4019
    :goto_0
    iput v3, v0, Lo/estimateNextPositionDiffForFling;->onTransact:I

    .line 332
    iget-object v0, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 4027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5009
    :cond_4
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 332
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 5012
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v3, v4

    .line 5018
    :goto_1
    iput-object v3, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsCallback:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 5027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_6

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6009
    :cond_6
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 333
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v3, :cond_7

    .line 6014
    iget-boolean v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->extraCallback:Z

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 6017
    :goto_2
    iput-boolean v3, v0, Lo/estimateNextPositionDiffForFling;->onMessageChannelReady:Z

    .line 334
    iget-object v0, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 6027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_8

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 7009
    :cond_8
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 334
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v3, :cond_9

    .line 7018
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;

    if-eqz v3, :cond_9

    .line 7027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;->onNavigationEvent:Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    .line 334
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 8016
    :cond_9
    iput-boolean v2, v0, Lo/estimateNextPositionDiffForFling;->onPostMessage:Z

    .line 336
    iget-object v0, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 8027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_a

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9009
    :cond_a
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 336
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz p1, :cond_b

    .line 9018
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;

    if-eqz p1, :cond_b

    .line 9025
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 9030
    :cond_b
    iput-object v4, v0, Lo/estimateNextPositionDiffForFling;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 337
    iget-object p1, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    invoke-static {p1}, Lo/findTargetSnapPosition;->ICustomTabsCallback(Lo/findTargetSnapPosition;)V

    goto :goto_3

    .line 338
    :cond_c
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_d

    .line 339
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 10014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 11014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 339
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 340
    iget-object p1, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    .line 11026
    iget-object p1, p1, Lo/findTargetSnapPosition;->onPostMessage:Lo/setActive;

    .line 340
    new-instance v0, Lo/throwIfInMutationOperation;

    sget-object v1, Lo/clampApplyScroll;->onPostMessage:Lo/clampApplyScroll;

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 342
    :cond_d
    :goto_3
    iget-object p1, p0, Lo/findTargetSnapPosition$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    invoke-static {p1}, Lo/findTargetSnapPosition;->onPostMessage(Lo/findTargetSnapPosition;)V

    return-void
.end method
