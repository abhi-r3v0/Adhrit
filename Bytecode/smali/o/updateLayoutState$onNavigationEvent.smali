.class public final Lo/updateLayoutState$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateLayoutState;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullViewModel$fetchCardsData$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
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
.field private synthetic onNavigationEvent:Lo/updateLayoutState;


# direct methods
.method constructor <init>(Lo/updateLayoutState;)V
    .locals 0

    iput-object p1, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    .line 171
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
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    invoke-static {v0}, Lo/updateLayoutState;->onRelationshipValidationResult(Lo/updateLayoutState;)V

    .line 174
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    invoke-static {v0}, Lo/updateLayoutState;->ICustomTabsCallback$Stub(Lo/updateLayoutState;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lo/updateLayoutState;->onPostMessage(Lo/updateLayoutState;I)V

    .line 176
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 176
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    if-eqz p1, :cond_3

    .line 178
    iget-object v0, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    .line 1017
    iget v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onMessageChannelReady:I

    .line 1078
    iput v1, v0, Lo/updateLayoutState;->ICustomTabsCallback$Stub$Proxy:I

    .line 179
    iget-object v0, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    .line 2019
    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    .line 179
    invoke-static {v0, v1}, Lo/updateLayoutState;->onPostMessage(Lo/updateLayoutState;Z)V

    .line 180
    iget-object v0, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    invoke-static {v0}, Lo/updateLayoutState;->onMessageChannelReady(Lo/updateLayoutState;)Ljava/util/List;

    move-result-object v0

    .line 2021
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->extraCallback:Ljava/util/List;

    .line 180
    check-cast p1, Ljava/lang/Iterable;

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 208
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 3000
    iget-object v5, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/removeItemDecoration;

    .line 182
    iget-object v6, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    .line 3077
    iget-object v6, v6, Lo/updateLayoutState;->warmup:Lo/removeItemDecoration;

    .line 182
    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_1

    sget-object v5, Lo/collectAdjacentPrefetchPositions;->onPostMessage:Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;

    .line 3092
    invoke-static {}, Lo/collectAdjacentPrefetchPositions;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v5

    .line 4031
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    .line 182
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object p1, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    invoke-static {p1}, Lo/updateLayoutState;->ICustomTabsCallback(Lo/updateLayoutState;)Lo/setActive;

    move-result-object p1

    iget-object v0, p0, Lo/updateLayoutState$onNavigationEvent;->onNavigationEvent:Lo/updateLayoutState;

    invoke-static {v0}, Lo/updateLayoutState;->onMessageChannelReady(Lo/updateLayoutState;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 186
    :cond_3
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    .line 189
    :cond_4
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_5

    .line 190
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 5014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 190
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_5
    return-void
.end method
