.class public final Lo/getScrollingChildHelper$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getScrollingChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyRoomViewModel$getTrophySections$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;",
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
.field private synthetic ICustomTabsCallback:Lo/getScrollingChildHelper;


# direct methods
.method constructor <init>(Lo/getScrollingChildHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 87
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v2, :cond_c

    .line 2009
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 89
    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;

    if-eqz v2, :cond_0

    .line 2010
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 91
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    .line 93
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v6

    if-ne v7, v6, :cond_6

    .line 94
    iget-object v7, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-static {v7}, Lo/getScrollingChildHelper;->onMessageChannelReady(Lo/getScrollingChildHelper;)Lo/setActive;

    move-result-object v7

    .line 2320
    iget-object v7, v7, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v8, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v3

    .line 94
    :goto_1
    check-cast v7, Ljava/util/LinkedHashMap;

    .line 95
    check-cast v2, Ljava/lang/Iterable;

    .line 349
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

    .line 96
    sget-object v10, Lo/dispatchNestedPreScroll;->extraCallback:Lo/dispatchNestedPreScroll$onPostMessage;

    .line 3063
    invoke-static {}, Lo/dispatchNestedPreScroll;->onMessageChannelReady()Ljava/util/List;

    move-result-object v10

    .line 4021
    iget-object v11, v9, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->onMessageChannelReady:Ljava/lang/String;

    .line 96
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_3

    .line 97
    move-object v10, v7

    check-cast v10, Ljava/util/Map;

    .line 5017
    iget-object v11, v9, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->extraCallback:Ljava/lang/String;

    .line 97
    new-instance v12, Lo/isNestedScrollingEnabled;

    .line 5019
    iget-object v13, v9, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->onNavigationEvent:Ljava/lang/String;

    .line 5021
    iget-object v14, v9, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->onMessageChannelReady:Ljava/lang/String;

    .line 6017
    iget-object v15, v9, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->extraCallback:Ljava/lang/String;

    .line 97
    invoke-direct {v12, v13, v14, v15}, Lo/isNestedScrollingEnabled;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7017
    :cond_3
    iget-object v10, v9, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->extraCallback:Ljava/lang/String;

    .line 98
    invoke-virtual {v4, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v10, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-static {v10}, Lo/getScrollingChildHelper;->extraCallback(Lo/getScrollingChildHelper;)Ljava/util/HashMap;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 8017
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->extraCallback:Ljava/lang/String;

    .line 99
    new-instance v11, Lo/stopNestedScroll;

    invoke-direct {v11, v5}, Lo/stopNestedScroll;-><init>(B)V

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 102
    :cond_4
    iget-object v8, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-static {v8}, Lo/getScrollingChildHelper;->onMessageChannelReady(Lo/getScrollingChildHelper;)Lo/setActive;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 351
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

    .line 105
    sget-object v8, Lo/dispatchNestedPreScroll;->extraCallback:Lo/dispatchNestedPreScroll$onPostMessage;

    .line 8063
    invoke-static {}, Lo/dispatchNestedPreScroll;->onMessageChannelReady()Ljava/util/List;

    move-result-object v8

    .line 9021
    iget-object v9, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;->onMessageChannelReady:Ljava/lang/String;

    .line 105
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 106
    iget-object v8, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-virtual {v8, v7}, Lo/getScrollingChildHelper;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;)V

    goto :goto_3

    .line 10009
    :cond_6
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 111
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;

    if-eqz v1, :cond_7

    .line 10012
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionsResponse;->onPostMessage:Ljava/util/List;

    goto :goto_4

    :cond_7
    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_9

    .line 113
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    if-ne v2, v6, :cond_9

    const-string/jumbo v2, "winnings"

    .line 114
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 115
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 353
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 116
    iget-object v8, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-static {v8}, Lo/getScrollingChildHelper;->extraCallback(Lo/getScrollingChildHelper;)Ljava/util/HashMap;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "winnings_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10028
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onPostMessage:Ljava/lang/String;

    .line 116
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lo/stopNestedScroll;

    invoke-direct {v9, v5}, Lo/stopNestedScroll;-><init>(B)V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 118
    :cond_8
    iget-object v2, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-static {v2}, Lo/getScrollingChildHelper;->onPostMessage(Lo/getScrollingChildHelper;)Lo/setActive;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    new-instance v15, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3fe

    const/16 v21, 0x0

    const-string/jumbo v9, "win_type_loader"

    move-object v8, v15

    move-object v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    invoke-direct/range {v8 .. v20}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v7, v3, v3, v3, v6}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;)V

    invoke-virtual {v2, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-static {v3}, Lo/getScrollingChildHelper;->asInterface(Lo/getScrollingChildHelper;)Lo/setActive;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 123
    iget-object v2, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    invoke-virtual {v2, v1}, Lo/getScrollingChildHelper;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;)V

    .line 126
    :cond_9
    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_c

    new-array v1, v2, [Lo/addWrite;

    .line 128
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v6, "sections_loaded"

    invoke-direct {v4, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v5

    const-string v3, "pairs"

    .line 127
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v1, "trophy_room_load"

    .line 127
    invoke-static {v1, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_6

    .line 133
    :cond_a
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_c

    .line 134
    iget-object v2, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    invoke-static {v2}, Lo/getScrollingChildHelper;->onNavigationEvent(Lo/getScrollingChildHelper;)Lo/setActive;

    move-result-object v2

    .line 10320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v4, :cond_b

    move-object v3, v2

    :cond_b
    if-nez v3, :cond_c

    .line 136
    iget-object v2, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    .line 11031
    iget-object v2, v2, Lo/getScrollingChildHelper;->onMessageChannelReady:Lo/setActive;

    .line 136
    new-instance v3, Lo/throwIfInMutationOperation;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 12014
    iget-object v4, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 13014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 136
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v4, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 140
    :cond_c
    :goto_6
    iget-object v1, v0, Lo/getScrollingChildHelper$onPostMessage;->ICustomTabsCallback:Lo/getScrollingChildHelper;

    .line 13032
    iget-object v1, v1, Lo/getScrollingChildHelper;->ICustomTabsCallback:Lo/setActive;

    .line 140
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
