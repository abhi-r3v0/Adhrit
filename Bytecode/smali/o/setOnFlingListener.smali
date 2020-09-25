.class public final Lo/setOnFlingListener;
.super Lo/findLastVisibleItemPositions;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setOnFlingListener$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020\u001a2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010\"\u001a\u00020\u001aH\u0016J\u001a\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020%2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010&\u001a\u00020\u001a2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoreSheetFragment;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "()V",
        "endTime",
        "",
        "Ljava/lang/Long;",
        "fetchingScoreSheetData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/ShowFetchingScoreSheet;",
        "getFetchingScoreSheetData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/ShowFetchingScoreSheet;",
        "setFetchingScoreSheetData",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/ShowFetchingScoreSheet;)V",
        "leaderboardViewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardViewModel;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "preciseCountDownTimer",
        "Lcom/dreamplug/utils/PreciseCountDownTimer;",
        "getLayoutResource",
        "",
        "handleClick",
        "",
        "cta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "updateTimer",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/setOnFlingListener$onMessageChannelReady;


# instance fields
.field private extraCallback:Ljava/lang/Long;

.field private newSession:Lo/addItemDecoration;

.field public onMessageChannelReady:Lo/getDecoratedStart;

.field private final onNavigationEvent:Lo/isSameListener;

.field private onPostMessage:Lo/endBatchedUpdates;

.field private warmup:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setOnFlingListener$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnFlingListener$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/setOnFlingListener;->ICustomTabsCallback:Lo/setOnFlingListener$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 27
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 27
    iput-object v1, p0, Lo/setOnFlingListener;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/setOnFlingListener;)Lo/addItemDecoration;
    .locals 1

    .line 25
    iget-object p0, p0, Lo/setOnFlingListener;->newSession:Lo/addItemDecoration;

    if-nez p0, :cond_0

    const-string v0, "leaderboardViewModel"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/setOnFlingListener;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 13087
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    .line 13063
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const v6, 0x1cb54

    if-eq v5, v6, :cond_4

    const v6, 0x258156e6

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "deeplink"

    .line 13064
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14000
    iget-object p0, p0, Lo/setOnFlingListener;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 13065
    invoke-static {p0, v0, v3, v4, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 13066
    sget-object p0, Lo/length;->extraCallback:Lo/length;

    if-eqz p1, :cond_3

    .line 14088
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onMessageChannelReady:Ljava/lang/String;

    .line 13066
    :cond_3
    invoke-virtual {p0, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v5, "web"

    .line 13068
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    .line 15088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 16000
    iget-object p0, p0, Lo/setOnFlingListener;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    const/4 v1, 0x6

    .line 13070
    invoke-static {p0, p1, v4, v0, v1}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;ZLjava/lang/Boolean;I)V

    :cond_5
    return-void

    .line 17000
    :cond_6
    :goto_1
    iget-object p0, p0, Lo/setOnFlingListener;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 13074
    invoke-static {p0, v0, v3, v4, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 7

    .line 130
    iget-object v0, p0, Lo/setOnFlingListener;->extraCallback:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v4, "Calendar.getInstance()"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 12000
    iget-object v0, p0, Lo/setOnFlingListener;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const/4 v3, 0x7

    .line 133
    invoke-static {v0, v1, v2, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    :cond_1
    return v2
.end method

.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/setOnFlingListener;->warmup:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lo/findLastVisibleItemPositions;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lo/getDecoratedStart;

    iput-object p1, p0, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 116
    iget-object v0, p0, Lo/setOnFlingListener;->onPostMessage:Lo/endBatchedUpdates;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/endBatchedUpdates;->extraCallback()V

    .line 117
    :cond_0
    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 11000
    iget-object v0, p0, Lo/setOnFlingListener;->warmup:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/setOnFlingListener;->warmup:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setOnFlingListener;->warmup:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/setOnFlingListener;->warmup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/setOnFlingListener;->warmup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e00a4

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string p2, "parentFragment!!"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 140
    new-instance p2, Lo/setMetadata;

    invoke-direct {p2, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class p1, Lo/addItemDecoration;

    invoke-virtual {p2, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string p2, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/addItemDecoration;

    iput-object p1, p0, Lo/setOnFlingListener;->newSession:Lo/addItemDecoration;

    .line 42
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "title"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    const-string v0, "fetchingScoreSheetData"

    if-nez p2, :cond_1

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1082
    :cond_1
    iget-object p2, p2, Lo/getDecoratedStart;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    .line 2059
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onPostMessage:Ljava/lang/String;

    .line 42
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    iget-object p2, p0, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    if-nez p2, :cond_2

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2082
    :cond_2
    iget-object p2, p2, Lo/getDecoratedStart;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    .line 3061
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz p2, :cond_3

    .line 3085
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onNavigationEvent:Ljava/lang/String;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "Ok"

    .line 43
    :goto_0
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    if-nez p1, :cond_4

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4082
    :cond_4
    iget-object p1, p1, Lo/getDecoratedStart;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    .line 5063
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->ICustomTabsCallback:Ljava/lang/String;

    .line 45
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottieView"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/16 v4, 0x8

    .line 141
    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_7

    .line 47
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 50
    :cond_7
    iget-object p1, p0, Lo/setOnFlingListener;->newSession:Lo/addItemDecoration;

    if-nez p1, :cond_8

    const-string p2, "leaderboardViewModel"

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object p1

    const-string p2, "leaderboard_buffer_sheet_load"

    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 52
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    const-string p2, "ctaButton"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v1, Lo/setOnFlingListener$extraCallback;

    invoke-direct {v1, p0}, Lo/setOnFlingListener$extraCallback;-><init>(Lo/setOnFlingListener;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 56
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    if-nez p2, :cond_9

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5082
    :cond_9
    iget-object p2, p2, Lo/getDecoratedStart;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    .line 6061
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    goto :goto_3

    :cond_a
    move-object p2, v1

    :goto_3
    if-eqz p2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    const/16 v3, 0x8

    .line 143
    :goto_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object p2, Lo/fixEndGap;->extraCallback:Lo/fixEndGap;

    iget-object p2, p0, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    if-nez p2, :cond_d

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6082
    :cond_d
    iget-object p2, p2, Lo/getDecoratedStart;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    if-eqz p2, :cond_e

    .line 7061
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz p2, :cond_e

    .line 7086
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->extraCallback:Ljava/lang/String;

    goto :goto_6

    :cond_e
    move-object p2, v1

    .line 57
    :goto_6
    invoke-static {p2}, Lo/fixEndGap;->onPostMessage(Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v2, v1}, Lo/recycleFromEnd;->setButtonStyle$default(Lo/recycleFromEnd;ILo/calculateScrollDirectionForPosition;ILjava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lo/setOnFlingListener;->onMessageChannelReady:Lo/getDecoratedStart;

    if-nez p1, :cond_f

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8082
    :cond_f
    iget-object p1, p1, Lo/getDecoratedStart;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    .line 9065
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    .line 58
    iput-object p1, p0, Lo/setOnFlingListener;->extraCallback:Ljava/lang/Long;

    if-eqz p1, :cond_12

    .line 59
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 9080
    iget-object v0, p0, Lo/setOnFlingListener;->onPostMessage:Lo/endBatchedUpdates;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lo/endBatchedUpdates;->extraCallback()V

    .line 9081
    :cond_10
    iput-object v1, p0, Lo/setOnFlingListener;->onPostMessage:Lo/endBatchedUpdates;

    .line 9082
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    .line 9085
    new-instance v2, Lo/endBatchedUpdates;

    invoke-direct {v2, v0, v1}, Lo/endBatchedUpdates;-><init>(J)V

    .line 9086
    new-instance v0, Lo/setOnFlingListener$onNavigationEvent;

    invoke-direct {v0, p0, p1, p2}, Lo/setOnFlingListener$onNavigationEvent;-><init>(Lo/setOnFlingListener;J)V

    check-cast v0, Lo/onDisconnectSetValue;

    const-string p1, "onTick"

    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10094
    iput-object v0, v2, Lo/endBatchedUpdates;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 9103
    new-instance p1, Lo/setOnFlingListener$onPostMessage;

    invoke-direct {p1, p0}, Lo/setOnFlingListener$onPostMessage;-><init>(Lo/setOnFlingListener;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "onFinish"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10098
    iput-object p1, v2, Lo/endBatchedUpdates;->onMessageChannelReady:Lo/getServerTime;

    .line 9107
    invoke-virtual {v2}, Lo/endBatchedUpdates;->ICustomTabsCallback()Lo/endBatchedUpdates;

    .line 9085
    iput-object v2, p0, Lo/setOnFlingListener;->onPostMessage:Lo/endBatchedUpdates;

    return-void

    .line 9110
    :cond_11
    invoke-virtual {p0}, Lo/findLastVisibleItemPositions;->onTransact()V

    :cond_12
    return-void
.end method
