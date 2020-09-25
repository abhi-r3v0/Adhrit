.class public final Lo/animateAdd$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/endChangeAnimationIfNecessary;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/digest/DigestFragment$digestPagerStateListener$1",
        "Lcom/dreamplug/fabrik/ui/digest/DigestSlideViewPagerListener;",
        "nextTapped",
        "",
        "pageChanged",
        "index",
        "",
        "pageFinished",
        "isUserTriggered",
        "",
        "paused",
        "previousTapped",
        "resume",
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
.field final synthetic onNavigationEvent:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 10

    .line 442
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    invoke-static {p1}, Lo/DiffUtil;->onMessageChannelReady(I)Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 444
    iget-object v1, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->credLogoLabel:I

    invoke-virtual {v1, v2}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/setSpeed;

    const-string v1, "credLogoLabel"

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 4032
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v0, :cond_0

    .line 4108
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    .line 444
    invoke-static/range {v2 .. v9}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 445
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/canReuseUpdatedViewHolder;

    if-lez p1, :cond_2

    .line 5029
    iget-object v1, v0, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getOldListSize;

    .line 6020
    iget-object v1, v1, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5030
    iget-object v1, v0, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "progressBarList[index - 1]"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/getOldListSize;

    const/16 v2, 0x41a

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5032
    :cond_2
    iget v1, v0, Lo/canReuseUpdatedViewHolder;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_3

    .line 5033
    iget-object v1, v0, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getOldListSize;

    .line 7020
    iget-object v1, v1, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5034
    iget-object v1, v0, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "progressBarList[index + 1]"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/getOldListSize;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5036
    :cond_3
    iget v1, v0, Lo/canReuseUpdatedViewHolder;->ICustomTabsCallback:I

    if-ge p1, v1, :cond_4

    iget-object v0, v0, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getOldListSize;

    .line 8018
    iget-object v0, v0, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 446
    :cond_4
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    move-result-object v0

    .line 8038
    sget-object v1, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 9000
    sget-object v1, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 9320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 9321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, v3

    .line 8038
    :goto_0
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-eqz v1, :cond_6

    .line 10021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 11000
    iget-object v0, v0, Lo/DiffUtil;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeAndRecycleView;

    .line 8039
    invoke-interface {v0, v1}, Lo/removeAndRecycleView;->onPostMessage(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    new-instance v1, Lo/DiffUtil$extraCallback;

    invoke-direct {v1}, Lo/DiffUtil$extraCallback;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 447
    :cond_6
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0, p1}, Lo/animateAdd;->onMessageChannelReady(Lo/animateAdd;I)V

    .line 449
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asBinder()Lo/setActive;

    move-result-object v0

    .line 11320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_a

    .line 449
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asBinder()Lo/setActive;

    move-result-object v0

    .line 12320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 12321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_8

    move-object v3, v0

    :cond_8
    if-nez v3, :cond_9

    .line 449
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    const-string v0, "SessionInfo.lastSeenStoryIndex.value!!"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(II)I

    move-result v0

    if-ltz v0, :cond_c

    .line 450
    :cond_a
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    invoke-static {}, Lo/DiffUtil;->onPostMessage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_b

    .line 451
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asBinder()Lo/setActive;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 452
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onRelationshipValidationResult()V

    goto :goto_2

    .line 454
    :cond_b
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asBinder()Lo/setActive;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 457
    :cond_c
    :goto_2
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_land"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 458
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    move-result-object v0

    .line 13026
    iget-object v0, v0, Lo/DiffUtil;->onNavigationEvent:Lo/setActive;

    .line 458
    new-instance v1, Lo/diffPartial$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/diffPartial$ICustomTabsCallback;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 474
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_story_previous"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 2

    .line 429
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_story_paused"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 430
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/canReuseUpdatedViewHolder;

    .line 1051
    iget-object v0, v0, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getOldListSize;

    .line 2022
    iget-object v0, v0, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    .line 431
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    move-result-object v0

    .line 2026
    iget-object v0, v0, Lo/DiffUtil;->onNavigationEvent:Lo/setActive;

    .line 431
    new-instance v1, Lo/diffPartial$onPostMessage;

    invoke-direct {v1, p1}, Lo/diffPartial$onPostMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 7

    .line 463
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onRelationshipValidationResult(Lo/animateAdd;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v5}, Lo/animateAdd;->asBinder(Lo/animateAdd;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lo/animateAdd;->onNavigationEvent(Lo/animateAdd;J)V

    .line 465
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Lo/addWrite;

    iget-object v3, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v3}, Lo/animateAdd;->onRelationshipValidationResult(Lo/animateAdd;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 13043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "time_spent"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 466
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14043
    new-instance v4, Lo/addWrite;

    const-string v5, "all_seen"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v4, v2, v3

    .line 467
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 15043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "user_triggered"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v4, v2, v3

    const-string v3, "pairs"

    .line 465
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "$this$plus"

    .line 465
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "map"

    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15659
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    .line 465
    invoke-static {v1}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_screen_close"

    .line 464
    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 468
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    :goto_0
    new-instance p1, Lo/animateAdd$onPostMessage$extraCallback;

    invoke-direct {p1, p0}, Lo/animateAdd$onPostMessage$extraCallback;-><init>(Lo/animateAdd$onPostMessage;)V

    check-cast p1, Lo/getServerTime;

    const-string v2, "command"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16018
    new-instance v2, Lo/updateItemAt$extraCallback;

    invoke-direct {v2, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 478
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_story_next"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 2

    .line 435
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback$Stub(Lo/animateAdd;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resume called "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stories"

    invoke-static {v1, v0}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/canReuseUpdatedViewHolder;

    .line 2053
    iget-object v0, v0, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getOldListSize;

    .line 3024
    iget-object v0, v0, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->resume()V

    .line 438
    iget-object v0, p0, Lo/animateAdd$onPostMessage;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;)Lo/DiffUtil;

    move-result-object v0

    .line 3026
    iget-object v0, v0, Lo/DiffUtil;->onNavigationEvent:Lo/setActive;

    .line 438
    new-instance v1, Lo/diffPartial$onNavigationEvent;

    invoke-direct {v1, p1}, Lo/diffPartial$onNavigationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
