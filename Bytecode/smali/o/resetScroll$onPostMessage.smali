.class public final Lo/resetScroll$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/resetScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/store/landing/StoreLandingViewModel$fetchRewardRedeemInitData$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;",
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
.field private synthetic extraCallback:Lo/resetScroll;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/resetScroll;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lo/resetScroll$onPostMessage;->extraCallback:Lo/resetScroll;

    iput-object p2, p0, Lo/resetScroll$onPostMessage;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/resetScroll$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string/jumbo v3, "something went wrong. please check back in some time"

    if-eqz v2, :cond_1

    .line 114
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 114
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;

    if-eqz v1, :cond_0

    .line 116
    iget-object v2, v0, Lo/resetScroll$onPostMessage;->extraCallback:Lo/resetScroll;

    invoke-static {v2}, Lo/resetScroll;->onNavigationEvent(Lo/resetScroll;)Lo/setActive;

    move-result-object v2

    iget-object v4, v0, Lo/resetScroll$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v5, v0, Lo/resetScroll$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "$this$asRedeemRequestData"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "rewardId"

    invoke-static {v4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cardId"

    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    new-instance v15, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    const/4 v6, 0x0

    .line 1404
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;->onNavigationEvent:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1406
    iget-object v12, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    const/4 v13, 0x0

    .line 1408
    iget-object v14, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    const/16 v1, 0x2f4

    const/16 v16, 0x0

    move-object v3, v15

    move-object/from16 v17, v15

    move v15, v1

    .line 1315
    invoke-direct/range {v3 .. v16}, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v17

    .line 116
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 118
    :cond_0
    iget-object v1, v0, Lo/resetScroll$onPostMessage;->extraCallback:Lo/resetScroll;

    .line 2040
    iget-object v1, v1, Lo/resetScroll;->onTransact:Lo/setActive;

    .line 118
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_1
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    new-array v4, v2, [Lo/addWrite;

    const/4 v5, 0x0

    .line 124
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 3014
    iget-object v6, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 124
    check-cast v6, Lcom/dreamplug/utils/model/BaseResponse;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v7

    .line 3043
    :goto_0
    new-instance v8, Lo/addWrite;

    const-string v9, "error_code"

    invoke-direct {v8, v9, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v4, v5

    const/4 v5, 0x1

    .line 4014
    iget-object v6, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 125
    check-cast v6, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 4043
    :cond_3
    new-instance v6, Lo/addWrite;

    const-string v8, "error_details"

    invoke-direct {v6, v8, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    const-string v5, "pairs"

    .line 123
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "discover_proceed_error"

    .line 123
    invoke-static {v2, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 5014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, v0, Lo/resetScroll$onPostMessage;->extraCallback:Lo/resetScroll;

    .line 5040
    iget-object v2, v2, Lo/resetScroll;->onTransact:Lo/setActive;

    .line 6014
    iget-object v3, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 7014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 128
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 130
    :cond_4
    iget-object v1, v0, Lo/resetScroll$onPostMessage;->extraCallback:Lo/resetScroll;

    .line 7040
    iget-object v1, v1, Lo/resetScroll;->onTransact:Lo/setActive;

    .line 130
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
