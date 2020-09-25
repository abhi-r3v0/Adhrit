.class public final Lo/findTargetSnapPosition$newSession;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;",
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001J(\u0010\u0005\u001a\u00020\u00062\u001e\u0010\u0007\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerVM$renewLives$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "",
        "",
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
.field final synthetic onMessageChannelReady:Lo/findTargetSnapPosition;


# direct methods
.method constructor <init>(Lo/findTargetSnapPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lo/findTargetSnapPosition$newSession;->onMessageChannelReady:Lo/findTargetSnapPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lo/findTargetSnapPosition$newSession;->onMessageChannelReady:Lo/findTargetSnapPosition;

    .line 1027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    const-string v1, "dataModel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 2014
    iput-boolean v2, v0, Lo/estimateNextPositionDiffForFling;->onNavigationEvent:Z

    .line 171
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 172
    iget-object v0, p0, Lo/findTargetSnapPosition$newSession;->onMessageChannelReady:Lo/findTargetSnapPosition;

    .line 2027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 172
    :cond_1
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 172
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v4, "lives_count"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3019
    :cond_2
    iput v2, v0, Lo/estimateNextPositionDiffForFling;->onTransact:I

    .line 173
    sget-object p1, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->ICustomTabsCallback()V

    .line 174
    iget-object p1, p0, Lo/findTargetSnapPosition$newSession;->onMessageChannelReady:Lo/findTargetSnapPosition;

    invoke-virtual {p1}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lo/findTargetSnapPosition$newSession;->onMessageChannelReady:Lo/findTargetSnapPosition;

    .line 3027
    iget-object v0, v0, Lo/findTargetSnapPosition;->onNavigationEvent:Lo/estimateNextPositionDiffForFling;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4027
    :cond_3
    iget-object v0, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsService:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 175
    instance-of v1, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-nez v1, :cond_4

    move-object v0, v3

    :cond_4
    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_5

    .line 5009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 175
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;

    if-eqz v0, :cond_5

    .line 5021
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    goto :goto_0

    :cond_5
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 5048
    iget v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onPostMessage:I

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v3

    :goto_1
    const-string v2, "coin_value"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 6046
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onMessageChannelReady:Ljava/lang/String;

    :cond_7
    const-string v0, "currency"

    .line 177
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "renew_lives"

    .line 174
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_6

    .line 179
    :cond_8
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_f

    .line 180
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 7014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 180
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v3

    :goto_2
    const-string v1, "inadequate_points"

    .line 182
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "inadequate_gems"

    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    .line 203
    :cond_a
    sget-object v4, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 10014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 11014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 203
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-static/range {v4 .. v10}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_6

    .line 183
    :cond_b
    :goto_3
    iget-object v2, p0, Lo/findTargetSnapPosition$newSession;->onMessageChannelReady:Lo/findTargetSnapPosition;

    .line 7026
    iget-object v2, v2, Lo/findTargetSnapPosition;->onPostMessage:Lo/setActive;

    .line 183
    new-instance v4, Lo/throwIfInMutationOperation;

    new-instance v13, Lo/getDecoratedMeasurementInOther;

    .line 8014
    iget-object v5, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 184
    check-cast v5, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_4

    :cond_c
    move-object v6, v3

    .line 9014
    :goto_4
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 185
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_d
    move-object v7, v3

    .line 186
    new-instance p1, Lo/findTargetSnapPosition$newSession$onMessageChannelReady;

    invoke-direct {p1, p0, v0}, Lo/findTargetSnapPosition$newSession$onMessageChannelReady;-><init>(Lo/findTargetSnapPosition$newSession;Ljava/lang/String;)V

    move-object v8, p1

    check-cast v8, Lo/onDisconnectSetValue;

    const/4 v9, 0x0

    .line 196
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const p1, 0x7f120006

    const v10, 0x7f120006

    goto :goto_5

    :cond_e
    const p1, 0x7f12001a

    const v10, 0x7f12001a

    :goto_5
    const/4 v11, 0x0

    const/16 v12, 0x28

    move-object v5, v13

    .line 183
    invoke-direct/range {v5 .. v12}, Lo/getDecoratedMeasurementInOther;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;ILjava/lang/String;I)V

    invoke-direct {v4, v13}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 206
    :cond_f
    :goto_6
    iget-object p1, p0, Lo/findTargetSnapPosition$newSession;->onMessageChannelReady:Lo/findTargetSnapPosition;

    invoke-static {p1}, Lo/findTargetSnapPosition;->onPostMessage(Lo/findTargetSnapPosition;)V

    return-void
.end method
