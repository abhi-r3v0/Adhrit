.class public final Lo/addItemDecoration$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardViewModel$getWinnerstatus$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;",
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
.field final synthetic onNavigationEvent:Lo/addItemDecoration;


# direct methods
.method constructor <init>(Lo/addItemDecoration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lo/addItemDecoration$onRelationshipValidationResult;->onNavigationEvent:Lo/addItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 274
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 274
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;

    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lo/addItemDecoration$onRelationshipValidationResult;->onNavigationEvent:Lo/addItemDecoration;

    .line 1037
    iget-object v0, v0, Lo/addItemDecoration;->ICustomTabsCallback:Lo/setActive;

    .line 275
    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v10, Lo/getDecoratedMeasurementInOther;

    .line 1094
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;->extraCallback:Ljava/lang/String;

    .line 1095
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;->ICustomTabsCallback:Ljava/lang/String;

    .line 278
    new-instance v2, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;

    invoke-direct {v2, p1, p0}, Lo/addItemDecoration$onRelationshipValidationResult$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;Lo/addItemDecoration$onRelationshipValidationResult;)V

    move-object v5, v2

    check-cast v5, Lo/onDisconnectSetValue;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2093
    iget-object v8, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/WinnerStatusResponse;->onMessageChannelReady:Ljava/lang/String;

    const/16 v9, 0x18

    move-object v2, v10

    .line 275
    invoke-direct/range {v2 .. v9}, Lo/getDecoratedMeasurementInOther;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;ILjava/lang/String;I)V

    invoke-direct {v1, v10}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 289
    :cond_1
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lo/addItemDecoration$onRelationshipValidationResult;->onNavigationEvent:Lo/addItemDecoration;

    .line 3059
    iget-object v0, v0, Lo/addItemDecoration;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 290
    new-instance v1, Lo/throwIfInMutationOperation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 290
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
