.class public final Lo/dispatchDetachedFromWindow$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchDetachedFromWindow;->asInterface()Lo/setActive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;",
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
        "com/dreamplug/fabrik/ui/nba/NBAViewModel$refresh$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
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
            "Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string v1, "Index overflow has happened."

    const/16 v2, 0xa

    const-string v3, "$this$collectionSizeOrDefault"

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 57
    check-cast p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;

    if-eqz p1, :cond_b

    .line 1014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 58
    check-cast p1, Ljava/lang/Iterable;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    const/16 v5, 0xa

    .line 154
    :goto_0
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_1

    .line 157
    check-cast v6, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 58
    new-instance v5, Lo/detachAndScrapViewAt;

    invoke-direct {v5, v6}, Lo/detachAndScrapViewAt;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_1

    .line 1441
    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 158
    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lo/detachAndScrapViewAt;

    .line 59
    sget-object v7, Lo/removeAndRecycleViewAt;->extraCallback:Lo/removeAndRecycleViewAt$onMessageChannelReady;

    .line 2060
    invoke-static {}, Lo/removeAndRecycleViewAt;->onNavigationEvent()Ljava/util/List;

    move-result-object v7

    .line 3007
    iget-object v6, v6, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 3023
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    .line 59
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 60
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61
    invoke-static {}, Lo/extraCallback;->extraCallback()Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;

    move-result-object v0

    .line 4014
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 62
    check-cast v0, Ljava/lang/Iterable;

    .line 162
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4039
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 162
    :cond_5
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    if-ltz v4, :cond_6

    .line 165
    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 62
    new-instance v4, Lo/detachAndScrapViewAt;

    invoke-direct {v4, v2}, Lo/detachAndScrapViewAt;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_3

    .line 4441
    :cond_6
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 166
    :cond_7
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/detachAndScrapViewAt;

    .line 63
    sget-object v3, Lo/removeAndRecycleViewAt;->extraCallback:Lo/removeAndRecycleViewAt$onMessageChannelReady;

    .line 5060
    invoke-static {}, Lo/removeAndRecycleViewAt;->onNavigationEvent()Ljava/util/List;

    move-result-object v3

    .line 6007
    iget-object v2, v2, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 6023
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    .line 63
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 169
    :cond_9
    move-object p1, v0

    check-cast p1, Ljava/util/List;

    .line 66
    :cond_a
    sget-object v0, Lo/dispatchDetachedFromWindow;->onNavigationEvent:Lo/dispatchDetachedFromWindow;

    invoke-static {}, Lo/dispatchDetachedFromWindow;->ICustomTabsCallback()Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_b
    return-void

    .line 69
    :cond_c
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz p1, :cond_15

    .line 70
    sget-object p1, Lo/dispatchDetachedFromWindow;->onNavigationEvent:Lo/dispatchDetachedFromWindow;

    invoke-static {}, Lo/dispatchDetachedFromWindow;->ICustomTabsCallback()Lo/setActive;

    move-result-object p1

    .line 6320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 6321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_d

    goto :goto_5

    :cond_d
    const/4 p1, 0x0

    .line 70
    :goto_5
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    const/4 p1, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_15

    .line 71
    invoke-static {}, Lo/extraCallback;->extraCallback()Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;

    move-result-object p1

    .line 7014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBAResponse;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_15

    .line 72
    sget-object v0, Lo/dispatchDetachedFromWindow;->onNavigationEvent:Lo/dispatchDetachedFromWindow;

    invoke-static {}, Lo/dispatchDetachedFromWindow;->ICustomTabsCallback()Lo/setActive;

    move-result-object v0

    .line 73
    check-cast p1, Ljava/lang/Iterable;

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7039
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_10

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 170
    :cond_10
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 172
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    if-ltz v4, :cond_11

    .line 173
    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 73
    new-instance v4, Lo/detachAndScrapViewAt;

    invoke-direct {v4, v2}, Lo/detachAndScrapViewAt;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_8

    .line 7441
    :cond_11
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 174
    :cond_12
    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 176
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/detachAndScrapViewAt;

    .line 74
    sget-object v4, Lo/removeAndRecycleViewAt;->extraCallback:Lo/removeAndRecycleViewAt$onMessageChannelReady;

    .line 8060
    invoke-static {}, Lo/removeAndRecycleViewAt;->onNavigationEvent()Ljava/util/List;

    move-result-object v4

    .line 9007
    iget-object v3, v3, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 9023
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    .line 74
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 177
    :cond_14
    check-cast p1, Ljava/util/List;

    .line 72
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method
