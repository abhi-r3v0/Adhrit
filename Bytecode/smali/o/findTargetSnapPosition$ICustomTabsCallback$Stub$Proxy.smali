.class public final Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findTargetSnapPosition;->onPostMessage(ZZLjava/lang/String;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerVM$submitScore$2",
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
.field private synthetic onPostMessage:Lo/findTargetSnapPosition;


# direct methods
.method constructor <init>(Lo/findTargetSnapPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 5
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

    .line 260
    iget-object v0, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    .line 1027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    const-string v1, "dataModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 2023
    iput-boolean v2, v0, Lo/estimateNextPositionDiffForFling;->asInterface:Z

    .line 261
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_c

    .line 262
    iget-object v0, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    .line 2027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    .line 3021
    iput-object v3, v0, Lo/estimateNextPositionDiffForFling;->asBinder:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    .line 3027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 263
    :cond_2
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 4009
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 263
    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v4, :cond_3

    .line 4010
    iget v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->onPostMessage:I

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 4019
    :goto_0
    iput v4, v0, Lo/estimateNextPositionDiffForFling;->onTransact:I

    .line 264
    iget-object v0, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    .line 4027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5009
    :cond_4
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 264
    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v4, :cond_5

    .line 5012
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v4, v3

    .line 5018
    :goto_1
    iput-object v4, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsCallback:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    .line 5027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_6

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6009
    :cond_6
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 265
    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v4, :cond_7

    .line 6014
    iget-boolean v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->extraCallback:Z

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 6017
    :goto_2
    iput-boolean v4, v0, Lo/estimateNextPositionDiffForFling;->onMessageChannelReady:Z

    .line 266
    iget-object v0, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    .line 6027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_8

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 7009
    :cond_8
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 266
    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz v4, :cond_9

    .line 7018
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;

    if-eqz v4, :cond_9

    .line 7027
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;->onNavigationEvent:Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    .line 266
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 8016
    :cond_9
    iput-boolean v2, v0, Lo/estimateNextPositionDiffForFling;->onPostMessage:Z

    .line 268
    iget-object v0, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    .line 8027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_a

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9009
    :cond_a
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 268
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;

    if-eqz p1, :cond_b

    .line 9018
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/UserGameDetails;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;

    if-eqz p1, :cond_b

    .line 9025
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/AllotmentResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 9030
    :cond_b
    iput-object v3, v0, Lo/estimateNextPositionDiffForFling;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 269
    iget-object p1, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    invoke-static {p1}, Lo/findTargetSnapPosition;->ICustomTabsCallback(Lo/findTargetSnapPosition;)V

    goto :goto_3

    .line 270
    :cond_c
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_d

    .line 271
    iget-object v0, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/findTargetSnapPosition;->extraCallback(Lo/findTargetSnapPosition;Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;)V

    .line 273
    :cond_d
    :goto_3
    iget-object p1, p0, Lo/findTargetSnapPosition$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/findTargetSnapPosition;

    invoke-static {p1}, Lo/findTargetSnapPosition;->onPostMessage(Lo/findTargetSnapPosition;)V

    return-void
.end method
