.class public final Lo/getScrollingChildHelper$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getScrollingChildHelper;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyRoomViewModel$getTrophySectionItems$1",
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

.field private synthetic extraCallback:Lo/getScrollingChildHelper;

.field private synthetic onMessageChannelReady:Lo/stopNestedScroll;


# direct methods
.method constructor <init>(Lo/getScrollingChildHelper;Lo/stopNestedScroll;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/stopNestedScroll;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;",
            ")V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->extraCallback:Lo/getScrollingChildHelper;

    iput-object p2, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->onMessageChannelReady:Lo/stopNestedScroll;

    iput-object p3, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

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
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 156
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 158
    iget-object v0, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->onMessageChannelReady:Lo/stopNestedScroll;

    .line 1345
    iget v2, v0, Lo/stopNestedScroll;->extraCallback:I

    add-int/lit8 v2, v2, 0x1

    .line 2345
    iput v2, v0, Lo/stopNestedScroll;->extraCallback:I

    .line 160
    iget-object v0, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->onMessageChannelReady:Lo/stopNestedScroll;

    .line 3009
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 160
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;

    .line 3040
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;->ICustomTabsCallback:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3346
    :goto_0
    iput-boolean v2, v0, Lo/stopNestedScroll;->onPostMessage:Z

    .line 163
    iget-object v0, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->extraCallback:Lo/getScrollingChildHelper;

    invoke-static {v0}, Lo/getScrollingChildHelper;->onMessageChannelReady(Lo/getScrollingChildHelper;)Lo/setActive;

    move-result-object v0

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 163
    :goto_1
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    .line 167
    iget-object v3, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

    .line 5017
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->extraCallback:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isNestedScrollingEnabled;

    if-eqz v3, :cond_3

    .line 6016
    iget-object v3, v3, Lo/isNestedScrollingEnabled;->extraCallback:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 167
    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 7009
    :cond_3
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_4

    .line 169
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;

    .line 7038
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsCardsResponse;->onPostMessage:Ljava/util/List;

    .line 169
    check-cast p1, Ljava/lang/Iterable;

    .line 349
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 170
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 172
    move-object p1, v0

    check-cast p1, Ljava/util/Map;

    iget-object v3, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

    .line 8017
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->extraCallback:Ljava/lang/String;

    .line 172
    new-instance v4, Lo/isNestedScrollingEnabled;

    check-cast v2, Ljava/util/List;

    iget-object v5, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

    .line 8019
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->onNavigationEvent:Ljava/lang/String;

    .line 172
    iget-object v6, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

    .line 8021
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->onMessageChannelReady:Ljava/lang/String;

    .line 172
    iget-object v7, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

    .line 9017
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->extraCallback:Ljava/lang/String;

    .line 172
    invoke-direct {v4, v2, v5, v6, v7}, Lo/isNestedScrollingEnabled;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_6
    iget-object p1, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->extraCallback:Lo/getScrollingChildHelper;

    invoke-static {p1}, Lo/getScrollingChildHelper;->onMessageChannelReady(Lo/getScrollingChildHelper;)Lo/setActive;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 178
    :cond_7
    iget-object p1, p0, Lo/getScrollingChildHelper$ICustomTabsCallback;->onMessageChannelReady:Lo/stopNestedScroll;

    .line 9347
    iput-boolean v1, p1, Lo/stopNestedScroll;->onMessageChannelReady:Z

    return-void
.end method
