.class public final Lo/access$200$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/access$200;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyRoomFragment$clickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field public final synthetic onPostMessage:Lo/access$200;


# direct methods
.method constructor <init>(Lo/access$200;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "data"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string v5, "cta_type"

    const/4 v6, 0x2

    const-string v7, "game_id"

    const-string/jumbo v8, "section_id"

    const/4 v9, 0x3

    const-string/jumbo v10, "trophy_room_card_click"

    const-string v11, "pairs"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    const-string/jumbo v4, "winning_types"

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 63
    instance-of v1, v2, Lo/setHasStableIds;

    if-eqz v1, :cond_11

    .line 64
    iget-object v1, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    invoke-static {v1}, Lo/access$200;->onNavigationEvent(Lo/access$200;)Lo/getScrollingChildHelper;

    move-result-object v1

    check-cast v2, Lo/setHasStableIds;

    .line 1025
    iget-object v4, v2, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 64
    invoke-static {v4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    iget-object v5, v1, Lo/getScrollingChildHelper;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    .line 2028
    iget-object v6, v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onPostMessage:Ljava/lang/String;

    .line 1187
    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_0

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1189
    :cond_0
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    new-instance v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    new-instance v6, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3fe

    const/16 v27, 0x0

    const-string/jumbo v16, "win_type_loader"

    move-object v15, v6

    invoke-direct/range {v15 .. v27}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v5, v14, v14, v14, v6}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;)V

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1193
    iget-object v5, v1, Lo/getScrollingChildHelper;->extraCallback:Lo/setActive;

    invoke-virtual {v5, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1194
    invoke-virtual {v1, v4}, Lo/getScrollingChildHelper;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;)V

    goto :goto_0

    .line 1196
    :cond_1
    iget-object v5, v1, Lo/getScrollingChildHelper;->extraCallback:Lo/setActive;

    invoke-virtual {v5, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1199
    :goto_0
    iput-object v4, v1, Lo/getScrollingChildHelper;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    new-array v1, v12, [Lo/addWrite;

    .line 3025
    iget-object v2, v2, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 3027
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->extraCallback:Ljava/lang/String;

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v4, "filter_name"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v13

    .line 65
    invoke-static {v1, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v1, "trophy_room_filter_click"

    .line 65
    invoke-static {v1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :sswitch_1
    const-string/jumbo v2, "trophy_card_timer_finished"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 95
    iget-object v1, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v13, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 275
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v14, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 276
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 22212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 96
    iget-object v4, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v4, v5}, Lo/access$200;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/onDestroyView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_3
    iget-object v4, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    invoke-static {v4}, Lo/access$200;->onNavigationEvent(Lo/access$200;)Lo/getScrollingChildHelper;

    move-result-object v4

    .line 23077
    invoke-virtual {v4}, Lo/getScrollingChildHelper;->extraCallback()V

    .line 25000
    iget-object v5, v4, Lo/getScrollingChildHelper;->onPostMessage:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/findViewHolderForPosition;

    .line 24064
    invoke-interface {v5}, Lo/findViewHolderForPosition;->ICustomTabsCallback()Lo/clearScrap;

    move-result-object v5

    new-instance v6, Lo/getScrollingChildHelper$onMessageChannelReady;

    invoke-direct {v6, v4}, Lo/getScrollingChildHelper$onMessageChannelReady;-><init>(Lo/getScrollingChildHelper;)V

    check-cast v6, Lo/getScrapOrCachedViewForId;

    invoke-interface {v5, v6}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 278
    iput-boolean v12, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 279
    :cond_4
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v4, v5, :cond_5

    .line 280
    new-instance v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {v4, v1, v2, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/access$200$onNavigationEvent;)V

    check-cast v4, Lo/createCallback;

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 281
    iget-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Lo/createCallback;

    check-cast v2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 283
    :cond_5
    :goto_2
    new-instance v2, Lo/access$200$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {v2, v3, v1}, Lo/access$200$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    :sswitch_2
    const-string/jumbo v2, "win_now_cta"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 61
    iget-object v1, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :sswitch_3
    const-string v3, "load_next_section_page"

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 91
    instance-of v1, v2, Lo/isNestedScrollingEnabled;

    if-eqz v1, :cond_11

    move-object v1, v2

    check-cast v1, Lo/isNestedScrollingEnabled;

    .line 19016
    iget-object v2, v1, Lo/isNestedScrollingEnabled;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 92
    iget-object v2, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    invoke-static {v2}, Lo/access$200;->onNavigationEvent(Lo/access$200;)Lo/getScrollingChildHelper;

    move-result-object v2

    new-instance v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;

    .line 20016
    iget-object v4, v1, Lo/isNestedScrollingEnabled;->onNavigationEvent:Ljava/lang/String;

    .line 21016
    iget-object v5, v1, Lo/isNestedScrollingEnabled;->ICustomTabsCallback:Ljava/lang/String;

    .line 22016
    iget-object v1, v1, Lo/isNestedScrollingEnabled;->onPostMessage:Ljava/lang/String;

    .line 92
    invoke-direct {v3, v4, v5, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lo/getScrollingChildHelper;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySection;)V

    return-void

    :sswitch_4
    const-string v3, "cta"

    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 102
    instance-of v1, v2, Lo/RecyclerView$Adapter;

    if-eqz v1, :cond_11

    .line 103
    move-object v1, v2

    check-cast v1, Lo/RecyclerView$Adapter;

    .line 25014
    iget-object v1, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 25051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v1, :cond_7

    .line 25065
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;

    if-eqz v1, :cond_7

    .line 25077
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    goto :goto_3

    :cond_7
    move-object v1, v14

    :goto_3
    if-eqz v1, :cond_8

    .line 26051
    iget-object v14, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->extraCallback:Ljava/lang/String;

    :cond_8
    if-eqz v14, :cond_a

    .line 105
    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v13, 0x1

    :cond_9
    if-ne v13, v12, :cond_11

    .line 106
    iget-object v2, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    .line 27050
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->ICustomTabsCallback:Ljava/lang/String;

    .line 106
    invoke-static {v2, v1, v3}, Lo/access$200;->extraCallback(Lo/access$200;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    return-void

    :sswitch_5
    const-string/jumbo v3, "trophy_card_click"

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 70
    instance-of v1, v2, Lo/initFastScroller;

    if-eqz v1, :cond_11

    move-object v1, v2

    check-cast v1, Lo/initFastScroller;

    .line 4012
    iget-object v2, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    if-eqz v2, :cond_b

    .line 4047
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    goto :goto_4

    :cond_b
    move-object v2, v14

    :goto_4
    if-eqz v2, :cond_11

    .line 71
    iget-object v2, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    .line 5012
    iget-object v3, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    if-eqz v3, :cond_c

    .line 5047
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    goto :goto_5

    :cond_c
    move-object v3, v14

    .line 6012
    :goto_5
    iget-object v4, v1, Lo/initFastScroller;->onPostMessage:Ljava/lang/String;

    .line 71
    invoke-static {v2, v3, v4}, Lo/access$200;->extraCallback(Lo/access$200;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;)V

    new-array v2, v9, [Lo/addWrite;

    .line 7012
    iget-object v3, v1, Lo/initFastScroller;->onPostMessage:Ljava/lang/String;

    .line 7043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v13

    .line 8012
    iget-object v3, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 8046
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->ICustomTabsCallback:Ljava/lang/String;

    .line 9043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v12

    .line 10012
    iget-object v1, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    if-eqz v1, :cond_d

    .line 10047
    iget-object v14, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 10051
    :cond_d
    iget-object v1, v14, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->extraCallback:Ljava/lang/String;

    .line 11043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v6

    .line 73
    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 73
    invoke-static {v10, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :sswitch_6
    const-string/jumbo v3, "winnings_card_click"

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 81
    instance-of v1, v2, Lo/RecyclerView$Adapter;

    if-eqz v1, :cond_11

    move-object v1, v2

    check-cast v1, Lo/RecyclerView$Adapter;

    .line 12014
    iget-object v2, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    if-eqz v2, :cond_e

    .line 12047
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    goto :goto_6

    :cond_e
    move-object v2, v14

    :goto_6
    if-eqz v2, :cond_11

    .line 82
    iget-object v2, v0, Lo/access$200$onNavigationEvent;->onPostMessage:Lo/access$200;

    .line 13014
    iget-object v3, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    if-eqz v3, :cond_f

    .line 13047
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    goto :goto_7

    :cond_f
    move-object v3, v14

    :goto_7
    const-string/jumbo v4, "winnings"

    .line 82
    invoke-static {v2, v3, v4}, Lo/access$200;->extraCallback(Lo/access$200;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;)V

    new-array v2, v9, [Lo/addWrite;

    .line 14043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v13

    .line 15014
    iget-object v3, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 15046
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->ICustomTabsCallback:Ljava/lang/String;

    .line 16043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v12

    .line 17014
    iget-object v1, v1, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    if-eqz v1, :cond_10

    .line 17047
    iget-object v14, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 17051
    :cond_10
    iget-object v1, v14, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->extraCallback:Ljava/lang/String;

    .line 18043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v6

    .line 84
    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 84
    invoke-static {v10, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_11
    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x61518a8b -> :sswitch_6
        -0x358b16f8 -> :sswitch_5
        0x18210 -> :sswitch_4
        0xc07265c -> :sswitch_3
        0x2976d7c4 -> :sswitch_2
        0x3a4e14ac -> :sswitch_1
        0x5cc4a60a -> :sswitch_0
    .end sparse-switch
.end method
