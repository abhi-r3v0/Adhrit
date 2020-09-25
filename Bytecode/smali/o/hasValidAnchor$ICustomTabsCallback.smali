.class public final Lo/hasValidAnchor$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LinearLayoutManager$LayoutChunkResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasValidAnchor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicFragment$mosaicItemClickListener$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/OnMosaicItemClickListener;",
        "onClick",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicUiData;",
        "holder",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicViewHolder;",
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
.field private synthetic onPostMessage:Lo/hasValidAnchor;


# direct methods
.method constructor <init>(Lo/hasValidAnchor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/LinearLayoutManager$SavedState;Lo/resetInternal;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holder"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    new-array v0, p2, [Lo/addWrite;

    .line 99
    iget-object v1, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {v1}, Lo/hasValidAnchor;->onMessageChannelReady(Lo/hasValidAnchor;)Lo/recycleViewsFromEnd$onNavigationEvent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, v1, Lo/recycleViewsFromEnd$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 2043
    :goto_0
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "source"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    .line 2089
    iget-object v3, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 3000
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/removeItemDecoration;

    .line 3396
    iget-object v3, v3, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    .line 4043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "rewards_ID"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v5, 0x2

    .line 4089
    iget-object v6, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 5000
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/removeItemDecoration;

    .line 5397
    iget-object v6, v6, Lo/removeItemDecoration;->ICustomTabsCallback:Ljava/lang/String;

    .line 6043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "usage_id"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x3

    .line 102
    iget-object v6, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {v6}, Lo/hasValidAnchor;->onNavigationEvent(Lo/hasValidAnchor;)Lo/validateChildOrder;

    move-result-object v6

    .line 7017
    iget-object v6, v6, Lo/validateChildOrder;->extraCallback:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v6, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "reward_id_position"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const-string v5, "pairs"

    .line 98
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "mosaic_card_click"

    .line 97
    invoke-static {v0, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 7089
    iget-object v0, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 8021
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onPostMessage:Ljava/util/List;

    .line 104
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
    if-eqz v0, :cond_b

    .line 8089
    iget-object v0, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 9025
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz v0, :cond_3

    .line 9061
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->extraCallback:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_4

    return-void

    .line 105
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const v6, -0x621270c9

    const-string v7, "mosiac"

    if-eq v5, v6, :cond_9

    const v6, 0x2fd836

    const-string v8, "lifestyle"

    if-eq v5, v6, :cond_6

    const v2, 0x258156e6

    if-eq v5, v2, :cond_5

    return-void

    :cond_5
    const-string v2, "deeplink"

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 120
    iget-object v0, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {v0}, Lo/hasValidAnchor;->asBinder(Lo/hasValidAnchor;)Lo/getMoveDuration;

    move-result-object v0

    invoke-static {v0, v8, v3, v1, p2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 121
    sget-object p2, Lo/length;->extraCallback:Lo/length;

    .line 15089
    iget-object p1, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 16025
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 16065
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    .line 121
    invoke-virtual {p2, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v5, "farm"

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {v0}, Lo/hasValidAnchor;->onMessageChannelReady(Lo/hasValidAnchor;)Lo/recycleViewsFromEnd$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 9297
    iget-object v2, v0, Lo/recycleViewsFromEnd$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    :cond_7
    const-string v0, "discover_farm"

    .line 107
    invoke-static {v2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    iget-object v0, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {v0}, Lo/hasValidAnchor;->asBinder(Lo/hasValidAnchor;)Lo/getMoveDuration;

    move-result-object v0

    invoke-static {v0, v8, v3, v1, p2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 110
    iget-object p2, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {p2}, Lo/hasValidAnchor;->asBinder(Lo/hasValidAnchor;)Lo/getMoveDuration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 10089
    iget-object p1, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 11000
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lo/removeItemDecoration;

    const/4 v5, 0x0

    const/16 v6, 0x13

    const-string v4, "mosaic"

    .line 110
    invoke-static/range {v0 .. v6}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lo/getStackFromEnd;Lo/removeItemDecoration;Ljava/lang/String;ZI)V

    return-void

    .line 112
    :cond_8
    iget-object v0, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {v0}, Lo/hasValidAnchor;->asBinder(Lo/hasValidAnchor;)Lo/getMoveDuration;

    move-result-object v0

    const-string v2, "LIFESTYLE_PRIMARY_FARM_TAG"

    invoke-static {v0, v2, v3, v1, p2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 113
    sget-object p2, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    .line 11089
    iget-object p1, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 12000
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeItemDecoration;

    .line 113
    invoke-static {v7, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12022
    new-instance v0, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    invoke-direct {v0, p1, v7}, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;-><init>(Lo/removeItemDecoration;Ljava/lang/String;)V

    check-cast v0, Lo/setRemoveDuration;

    .line 13010
    new-instance p1, Lo/getThumbTintList;

    invoke-direct {p1, v0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :cond_9
    const-string p2, "farm_with_machine"

    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 13089
    iget-object p2, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 14025
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 14065
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 117
    iget-object v0, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {v0}, Lo/hasValidAnchor;->asBinder(Lo/hasValidAnchor;)Lo/getMoveDuration;

    move-result-object v0

    .line 14089
    iget-object p1, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 15000
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeItemDecoration;

    .line 117
    invoke-virtual {v0, p2, p1, v7}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Lo/removeItemDecoration;Ljava/lang/String;)V

    :cond_a
    return-void

    .line 125
    :cond_b
    sget-object p2, Lo/getSpeedPerPixel;->onPostMessage:Lo/getSpeedPerPixel$extraCallback;

    .line 16089
    iget-object p1, p1, Lo/LinearLayoutManager$SavedState;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;

    .line 125
    iget-object p2, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {p2}, Lo/hasValidAnchor;->onMessageChannelReady(Lo/hasValidAnchor;)Lo/recycleViewsFromEnd$onNavigationEvent;

    move-result-object p2

    iget-object v0, p0, Lo/hasValidAnchor$ICustomTabsCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16144
    new-instance v1, Lo/getSpeedPerPixel;

    invoke-direct {v1}, Lo/getSpeedPerPixel;-><init>()V

    .line 16145
    invoke-static {v1, p1}, Lo/getSpeedPerPixel;->extraCallback(Lo/getSpeedPerPixel;Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicResult;)V

    .line 16146
    invoke-static {v1, p2}, Lo/getSpeedPerPixel;->ICustomTabsCallback(Lo/getSpeedPerPixel;Lo/recycleViewsFromEnd$onNavigationEvent;)V

    const-string p1, "MosaicMultiRewardMerchantDialog"

    .line 16147
    invoke-virtual {v1, v0, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_c
    return-void
.end method
