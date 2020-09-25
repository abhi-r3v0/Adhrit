.class public final Lo/getScrollingChildHelper$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getScrollingChildHelper;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyRoomViewModel$getWinningTypeItems$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;",
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
.field private synthetic extraCallback:Lo/stopNestedScroll;

.field private synthetic onNavigationEvent:Lo/getScrollingChildHelper;

.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;


# direct methods
.method constructor <init>(Lo/getScrollingChildHelper;Lo/stopNestedScroll;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/stopNestedScroll;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;",
            ")V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->onNavigationEvent:Lo/getScrollingChildHelper;

    iput-object p2, p0, Lo/getScrollingChildHelper$extraCallback;->extraCallback:Lo/stopNestedScroll;

    iput-object p3, p0, Lo/getScrollingChildHelper$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 218
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 218
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;->onPostMessage:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_8

    .line 220
    iget-object v0, p0, Lo/getScrollingChildHelper$extraCallback;->extraCallback:Lo/stopNestedScroll;

    .line 1345
    iget v3, v0, Lo/stopNestedScroll;->extraCallback:I

    add-int/2addr v3, v1

    .line 2345
    iput v3, v0, Lo/stopNestedScroll;->extraCallback:I

    .line 222
    iget-object v0, p0, Lo/getScrollingChildHelper$extraCallback;->extraCallback:Lo/stopNestedScroll;

    .line 3009
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 222
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;

    .line 3040
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;->ICustomTabsCallback:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 222
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 3346
    :goto_3
    iput-boolean v1, v0, Lo/stopNestedScroll;->onPostMessage:Z

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-object v1, p0, Lo/getScrollingChildHelper$extraCallback;->onNavigationEvent:Lo/getScrollingChildHelper;

    invoke-static {v1}, Lo/getScrollingChildHelper;->onRelationshipValidationResult(Lo/getScrollingChildHelper;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lo/getScrollingChildHelper$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 4028
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onPostMessage:Ljava/lang/String;

    .line 227
    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 5009
    :cond_5
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_6

    .line 229
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;

    .line 5038
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;->onPostMessage:Ljava/util/List;

    .line 229
    check-cast p1, Ljava/lang/Iterable;

    .line 349
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 230
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 233
    :cond_7
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->onNavigationEvent:Lo/getScrollingChildHelper;

    invoke-static {p1}, Lo/getScrollingChildHelper;->onRelationshipValidationResult(Lo/getScrollingChildHelper;)Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v1, p0, Lo/getScrollingChildHelper$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 6028
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onPostMessage:Ljava/lang/String;

    .line 233
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->onNavigationEvent:Lo/getScrollingChildHelper;

    invoke-static {p1}, Lo/getScrollingChildHelper;->asInterface(Lo/getScrollingChildHelper;)Lo/setActive;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_7

    .line 236
    :cond_8
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->extraCallback:Lo/stopNestedScroll;

    .line 6346
    iput-boolean v2, p1, Lo/stopNestedScroll;->onPostMessage:Z

    .line 237
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->onNavigationEvent:Lo/getScrollingChildHelper;

    invoke-static {p1}, Lo/getScrollingChildHelper;->onRelationshipValidationResult(Lo/getScrollingChildHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lo/getScrollingChildHelper$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 7028
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onPostMessage:Ljava/lang/String;

    .line 237
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_e

    .line 238
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->onNavigationEvent:Lo/getScrollingChildHelper;

    invoke-static {p1}, Lo/getScrollingChildHelper;->asBinder(Lo/getScrollingChildHelper;)V

    goto :goto_7

    .line 244
    :cond_b
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->extraCallback:Lo/stopNestedScroll;

    .line 7346
    iput-boolean v2, p1, Lo/stopNestedScroll;->onPostMessage:Z

    .line 245
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->onNavigationEvent:Lo/getScrollingChildHelper;

    invoke-static {p1}, Lo/getScrollingChildHelper;->onRelationshipValidationResult(Lo/getScrollingChildHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lo/getScrollingChildHelper$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 8028
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onPostMessage:Ljava/lang/String;

    .line 245
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_6
    if-eqz v1, :cond_e

    .line 246
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->onNavigationEvent:Lo/getScrollingChildHelper;

    invoke-static {p1}, Lo/getScrollingChildHelper;->asBinder(Lo/getScrollingChildHelper;)V

    .line 250
    :cond_e
    :goto_7
    iget-object p1, p0, Lo/getScrollingChildHelper$extraCallback;->extraCallback:Lo/stopNestedScroll;

    .line 8347
    iput-boolean v2, p1, Lo/stopNestedScroll;->onMessageChannelReady:Z

    return-void
.end method
