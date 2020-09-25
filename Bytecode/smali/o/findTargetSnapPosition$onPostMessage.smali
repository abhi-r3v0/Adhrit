.class public final Lo/findTargetSnapPosition$onPostMessage;
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
        "com/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerVM$deductPlayerLife$1",
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
.field private synthetic onNavigationEvent:Lo/findTargetSnapPosition;

.field private synthetic onPostMessage:Lo/getServerTime;


# direct methods
.method constructor <init>(Lo/findTargetSnapPosition;Lo/getServerTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime;",
            ")V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    iput-object p2, p0, Lo/findTargetSnapPosition$onPostMessage;->onPostMessage:Lo/getServerTime;

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

    .line 221
    iget-object v0, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    .line 1027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    const-string v1, "dataModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 2025
    iput-boolean v2, v0, Lo/estimateNextPositionDiffForFling;->warmup:Z

    .line 222
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_d

    .line 223
    iget-object v0, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    .line 2027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 223
    :cond_1
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 3009
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 223
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 3020
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->onTransact:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 3021
    :goto_0
    iput-object v3, v0, Lo/estimateNextPositionDiffForFling;->asBinder:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    .line 3027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4009
    :cond_3
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 224
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v3, :cond_4

    .line 4010
    iget v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->onPostMessage:I

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 4019
    :goto_1
    iput v3, v0, Lo/estimateNextPositionDiffForFling;->onTransact:I

    .line 225
    iget-object v0, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    .line 4027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5009
    :cond_5
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 225
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v3, :cond_6

    .line 5012
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v3, v4

    .line 5018
    :goto_2
    iput-object v3, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsCallback:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    .line 5027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_7

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6009
    :cond_7
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 226
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v3, :cond_8

    .line 6014
    iget-boolean v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->extraCallback:Z

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 6017
    :goto_3
    iput-boolean v3, v0, Lo/estimateNextPositionDiffForFling;->onMessageChannelReady:Z

    .line 227
    iget-object v0, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    .line 6027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_9

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 7009
    :cond_9
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 227
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v3, :cond_a

    .line 7018
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;

    if-eqz v3, :cond_a

    .line 7027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;->onNavigationEvent:Ljava/lang/Boolean;

    if-eqz v3, :cond_a

    .line 227
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 8016
    :cond_a
    iput-boolean v2, v0, Lo/estimateNextPositionDiffForFling;->onPostMessage:Z

    .line 229
    iget-object v0, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    .line 8027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_b

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9009
    :cond_b
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 229
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz p1, :cond_c

    .line 9018
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;

    if-eqz p1, :cond_c

    .line 9025
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 9030
    :cond_c
    iput-object v4, v0, Lo/estimateNextPositionDiffForFling;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 230
    iget-object p1, p0, Lo/findTargetSnapPosition$onPostMessage;->onPostMessage:Lo/getServerTime;

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    goto :goto_4

    .line 231
    :cond_d
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_e

    .line 232
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 10014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 11014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 232
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 234
    :cond_e
    :goto_4
    iget-object p1, p0, Lo/findTargetSnapPosition$onPostMessage;->onNavigationEvent:Lo/findTargetSnapPosition;

    invoke-static {p1}, Lo/findTargetSnapPosition;->onPostMessage(Lo/findTargetSnapPosition;)V

    return-void
.end method
