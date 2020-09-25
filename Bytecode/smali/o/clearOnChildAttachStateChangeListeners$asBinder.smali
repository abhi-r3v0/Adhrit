.class public final Lo/clearOnChildAttachStateChangeListeners$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearOnChildAttachStateChangeListeners;-><init>()V
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
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardFragment$onItemClickListener$1",
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
.field public final synthetic onPostMessage:Lo/clearOnChildAttachStateChangeListeners;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$asBinder;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 3

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x12f20b26

    if-eq p3, v0, :cond_7

    const p2, 0x2a24ef9b

    if-eq p3, p2, :cond_5

    const p2, 0x4d80f928    # 2.70476544E8f

    if-eq p3, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo p2, "time_up_event"

    .line 354
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 356
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$asBinder;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p2, "lifecycle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance p2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 412
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 413
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-eqz p3, :cond_3

    .line 357
    iget-object p3, p0, Lo/clearOnChildAttachStateChangeListeners$asBinder;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p3}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object v1

    .line 4057
    iget-object v1, v1, Lo/addItemDecoration;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;

    if-nez v1, :cond_2

    .line 357
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-static {p3, v1}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;)V

    .line 415
    iput-boolean v2, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 416
    :cond_3
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p3

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p3, v1, :cond_4

    .line 417
    new-instance p3, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {p3, p1, p2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/clearOnChildAttachStateChangeListeners$asBinder;)V

    check-cast p3, Lo/createCallback;

    iput-object p3, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 418
    iget-object p2, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 420
    :cond_4
    :goto_0
    new-instance p2, Lo/clearOnChildAttachStateChangeListeners$asBinder$extraCallback;

    invoke-direct {p2, v0, p1}, Lo/clearOnChildAttachStateChangeListeners$asBinder$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    goto :goto_1

    :cond_5
    const-string p2, "cta_check_win_status"

    .line 341
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 342
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$asBinder;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p1}, Lo/clearOnChildAttachStateChangeListeners;->onMessageChannelReady(Lo/clearOnChildAttachStateChangeListeners;)Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1408
    iget-object p1, p1, Lo/clearOnChildAttachStateChangeListeners$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 343
    iget-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$asBinder;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p2}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object p2

    invoke-virtual {p2}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object p2

    const-string p3, "leaderboard_check_win_status_click"

    invoke-static {p3, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 344
    iget-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$asBinder;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p2}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object p2

    const-string p3, "leaderboardId"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object p3, p2, Lo/addItemDecoration;->onTransact:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/getScrollState;

    .line 2269
    invoke-interface {p3, p1}, Lo/getScrollState;->ICustomTabsCallback(Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 2270
    new-instance p3, Lo/addItemDecoration$onRelationshipValidationResult;

    invoke-direct {p3, p2}, Lo/addItemDecoration$onRelationshipValidationResult;-><init>(Lo/addItemDecoration;)V

    check-cast p3, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, p3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_6
    return-void

    :cond_7
    const-string p3, "cta_leader_item"

    .line 347
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 348
    instance-of p1, p2, Lo/setViewCacheExtension;

    if-eqz p1, :cond_8

    .line 349
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$asBinder;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p1}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object p1

    invoke-virtual {p1}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object p1

    .line 350
    check-cast p2, Lo/setViewCacheExtension;

    .line 3046
    iget-object p2, p2, Lo/setViewCacheExtension;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    .line 350
    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getRank()Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "rank"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "leaderboard_leader_click"

    .line 349
    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_8
    :goto_1
    return-void
.end method
