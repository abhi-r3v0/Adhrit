.class public final Lo/clearOnChildAttachStateChangeListeners;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/clearOnChildAttachStateChangeListeners$extraCallback;,
        Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 12\u00020\u00012\u00020\u0002:\u000212B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010!\u001a\u00020\u001c2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010*\u001a\u00020\u001cH\u0016J\u0008\u0010+\u001a\u00020\u001cH\u0016J\u001a\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020%2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u000200H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u00190\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "()V",
        "lastScrolledItemRank",
        "",
        "leaderBoardData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardFragment$LeaderboardData;",
        "leaderboardViewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardViewModel;",
        "getLeaderboardViewModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardViewModel;",
        "leaderboardViewModel$delegate",
        "Lkotlin/Lazy;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recyclerAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "viewEffectsObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewEffects;",
        "handleBufferTime",
        "",
        "leaderboardDetailsResp",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "onStop",
        "onViewCreated",
        "view",
        "setUserRank",
        "data",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
        "Companion",
        "LeaderboardData",
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
.field public static final extraCallback:Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback;


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private ICustomTabsCallback$Stub:Ljava/util/HashMap;

.field private asBinder:I

.field private final asInterface:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Lo/calculateDistanceToFinalSnap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/isSameListener;

.field private onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

.field private onPostMessage:Lo/repositionToWrapContentIfNecessary;

.field private final onTransact:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/clearOnChildAttachStateChangeListeners;->extraCallback:Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 411
    new-instance v0, Lo/clearOnChildAttachStateChangeListeners$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/clearOnChildAttachStateChangeListeners$onMessageChannelReady;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 411
    iput-object v2, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 58
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 58
    iput-object v1, p0, Lo/clearOnChildAttachStateChangeListeners;->onMessageChannelReady:Lo/isSameListener;

    .line 245
    new-instance v0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;

    invoke-direct {v0, p0}, Lo/clearOnChildAttachStateChangeListeners$extraCommand;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->asInterface:Lo/setPlaybackToRemote;

    .line 338
    new-instance v0, Lo/clearOnChildAttachStateChangeListeners$asBinder;

    invoke-direct {v0, p0}, Lo/clearOnChildAttachStateChangeListeners$asBinder;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->onTransact:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;
    .locals 0

    .line 23000
    iget-object p0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/addItemDecoration;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;)V
    .locals 7

    .line 24043
    iget-wide v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;->extraCallback:J

    .line 23365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "Calendar.getInstance()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 24051
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 24065
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 23366
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-gtz v3, :cond_3

    if-eqz v2, :cond_1

    .line 23368
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v5

    :goto_1
    cmp-long v2, v0, v5

    if-lez v2, :cond_3

    .line 23370
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 23371
    instance-of v0, v0, Lo/setOnFlingListener;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 25051
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    if-eqz p1, :cond_3

    .line 23373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    .line 25464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 23375
    sget-object p0, Lo/setOnFlingListener;->ICustomTabsCallback:Lo/setOnFlingListener$onMessageChannelReady;

    new-instance p0, Lo/getDecoratedStart;

    invoke-direct {p0, p1}, Lo/getDecoratedStart;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;)V

    const-string p1, "fetchingScoreSheet"

    invoke-static {p0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26122
    new-instance p1, Lo/setOnFlingListener;

    invoke-direct {p1}, Lo/setOnFlingListener;-><init>()V

    .line 26123
    check-cast p1, Landroidx/fragment/app/Fragment;

    check-cast p0, Landroid/os/Parcelable;

    const-string v2, "extra"

    .line 27016
    invoke-static {p1, p0, v2}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 27343
    invoke-virtual {v0, v1, p1, v4, p0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 27651
    iget-boolean p0, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 27655
    iput-boolean p0, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 27656
    iput-object v4, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 23377
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 27652
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public static final synthetic extraCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/repositionToWrapContentIfNecessary;
    .locals 1

    .line 53
    iget-object p0, p0, Lo/clearOnChildAttachStateChangeListeners;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez p0, :cond_0

    const-string v0, "recyclerAdapter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/clearOnChildAttachStateChangeListeners;)Lo/clearOnChildAttachStateChangeListeners$extraCallback;
    .locals 1

    .line 53
    iget-object p0, p0, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    if-nez p0, :cond_0

    const-string v0, "leaderBoardData"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/clearOnChildAttachStateChangeListeners;I)V
    .locals 0

    .line 53
    iput p1, p0, Lo/clearOnChildAttachStateChangeListeners;->asBinder:I

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/clearOnChildAttachStateChangeListeners;)I
    .locals 0

    .line 53
    iget p0, p0, Lo/clearOnChildAttachStateChangeListeners;->asBinder:I

    return p0
.end method

.method public static final synthetic onPostMessage(Lo/clearOnChildAttachStateChangeListeners;)Lo/getMoveDuration;
    .locals 0

    .line 34000
    iget-object p0, p0, Lo/clearOnChildAttachStateChangeListeners;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/clearOnChildAttachStateChangeListeners;Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;)V
    .locals 8

    .line 29000
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addItemDecoration;

    .line 29056
    iget-object v0, v0, Lo/addItemDecoration;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 28109
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->getParticipants()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 28110
    :goto_0
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->userPhoto:I

    invoke-virtual {p0, v2}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    const-string/jumbo v3, "userPhoto"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29116
    iget-object v2, v2, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 29216
    iget-object v2, v2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v2, :cond_f

    check-cast v2, Lo/setMaxFrame;

    .line 28110
    check-cast v2, Lo/getComposition;

    const-string/jumbo v4, "userPhoto.hierarchy"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onPostMessage()Lo/setFailureListener$extraCallback;

    move-result-object v4

    if-eqz v4, :cond_e

    const/4 v5, 0x2

    .line 31369
    invoke-virtual {v2, v5}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v2

    .line 31370
    instance-of v5, v2, Lo/fromAssets;

    if-eqz v5, :cond_1

    .line 31371
    check-cast v2, Lo/fromAssets;

    goto :goto_1

    .line 31373
    :cond_1
    sget-object v5, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v2, v5}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v2

    .line 32094
    :goto_1
    iget-object v5, v2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v4, :cond_3

    if-eqz v5, :cond_2

    .line 33053
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_4

    .line 32098
    iput-object v4, v2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 32099
    iput-object v1, v2, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 32100
    invoke-virtual {v2}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 32101
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28111
    :cond_4
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->userStatusLayout:I

    invoke-virtual {p0, v2}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    const-string/jumbo v4, "userStatusLayout"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 28112
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->userStatusShim:I

    invoke-virtual {p0, v2}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v4, "userStatusShim"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 28113
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getRank()Ljava/lang/Integer;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->userRank:I

    invoke-virtual {p0, v2}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v4, "userRank"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getRank()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28115
    sget-object v2, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {}, Lo/shouldCollapse;->onPostMessage()Lo/setActive;

    move-result-object v2

    .line 33320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 33321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v4, :cond_5

    move-object v1, v2

    .line 28115
    :cond_5
    check-cast v1, Ljava/lang/String;

    .line 28116
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_8

    .line 28117
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->userPhoto:I

    invoke-virtual {p0, v2}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_8

    .line 28118
    :cond_8
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getPhoto_url()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-nez v1, :cond_b

    .line 28119
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->userPhoto:I

    invoke-virtual {p0, v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getPhoto_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_8

    .line 28121
    :cond_b
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->userPhoto:I

    invoke-virtual {p0, v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/onActivityPostCreated;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lo/setInflatedId;->ICustomTabsCallback(Landroid/widget/ImageView;I)V

    .line 28124
    :goto_8
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getFormatted_score()Ljava/lang/String;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->userScore:I

    invoke-virtual {p0, v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "userScore"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;->getFormatted_score()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_9

    :cond_c
    const-string p1, ""

    :goto_9
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "statusText2"

    if-eqz v0, :cond_d

    .line 28127
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->statusText2:I

    invoke-virtual {p0, v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/createFullSpanItemFromEnd;

    invoke-static {p0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f130349

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v7

    invoke-static {p1, v1}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 28129
    :cond_d
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->statusText2:I

    invoke-virtual {p0, v0}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/createFullSpanItemFromEnd;

    invoke-static {p0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 31215
    :cond_e
    throw v1

    .line 30215
    :cond_f
    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 6

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 320
    instance-of v1, v0, Lo/createScroller;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 321
    check-cast v0, Lo/createScroller;

    invoke-interface {v0}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 328
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19686
    iget-object v1, v0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 20571
    new-instance v1, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v1, v0, v4, v5, v3}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v3}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    return v2

    :cond_2
    return v3
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1000
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addItemDecoration;

    .line 1045
    iget-object p1, p1, Lo/addItemDecoration;->onNavigationEvent:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 65
    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/clearOnChildAttachStateChangeListeners$onNavigationEvent;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 2000
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addItemDecoration;

    .line 2040
    iget-object p1, p1, Lo/addItemDecoration;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 77
    new-instance v1, Lo/clearOnChildAttachStateChangeListeners$onPostMessage;

    invoke-direct {v1, p0}, Lo/clearOnChildAttachStateChangeListeners$onPostMessage;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 3000
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addItemDecoration;

    .line 3050
    iget-object p1, p1, Lo/addItemDecoration;->extraCallback:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 83
    new-instance v1, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback$Stub;

    invoke-direct {v1, p0}, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback$Stub;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 4000
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addItemDecoration;

    .line 4054
    iget-object p1, p1, Lo/addItemDecoration;->onPostMessage:Lo/setActive;

    .line 89
    new-instance v1, Lo/clearOnChildAttachStateChangeListeners$onRelationshipValidationResult;

    invoke-direct {v1, p0}, Lo/clearOnChildAttachStateChangeListeners$onRelationshipValidationResult;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 5000
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addItemDecoration;

    .line 5059
    iget-object p1, p1, Lo/addItemDecoration;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 96
    new-instance v1, Lo/clearOnChildAttachStateChangeListeners$onTransact;

    invoke-direct {v1, p0}, Lo/clearOnChildAttachStateChangeListeners$onTransact;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 5398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "leaderboardData"

    .line 5400
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    .line 102
    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    .line 6000
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addItemDecoration;

    .line 103
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    if-nez v0, :cond_1

    const-string v1, "leaderBoardData"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6061
    :cond_1
    iput-object v0, p1, Lo/addItemDecoration;->asInterface:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    .line 7000
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addItemDecoration;

    .line 104
    invoke-virtual {p1}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object p1

    const-string v0, "leaderboard_load"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 5402
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "use LeaderBoardFragment.getInstance(LeaderboardData) to get an instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00b0

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 35000
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onStart()V
    .locals 5

    .line 224
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 226
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    const-string v1, "leaderBoardData"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 10408
    iget-object v0, v0, Lo/clearOnChildAttachStateChangeListeners$extraCallback;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_a

    .line 11000
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addItemDecoration;

    .line 227
    iget-object v3, p0, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    if-nez v3, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 11408
    iget-object v3, v3, Lo/clearOnChildAttachStateChangeListeners$extraCallback;->onNavigationEvent:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_4

    .line 227
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    const-string v4, "leaderboardId"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13000
    iget-object v4, v0, Lo/addItemDecoration;->onTransact:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getScrollState;

    .line 12161
    invoke-interface {v4, v3}, Lo/getScrollState;->onNavigationEvent(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v3

    .line 12162
    new-instance v4, Lo/addItemDecoration$asInterface;

    invoke-direct {v4, v0}, Lo/addItemDecoration$asInterface;-><init>(Lo/addItemDecoration;)V

    check-cast v4, Lo/getScrapOrCachedViewForId;

    invoke-interface {v3, v4}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 14000
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addItemDecoration;

    .line 14040
    iget-object v0, v0, Lo/addItemDecoration;->onMessageChannelReady:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 14320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 14321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 228
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15000
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addItemDecoration;

    .line 229
    iget-object v3, p0, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    if-nez v3, :cond_6

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    if-eqz v3, :cond_7

    .line 15408
    iget-object v2, v3, Lo/clearOnChildAttachStateChangeListeners$extraCallback;->onNavigationEvent:Ljava/lang/String;

    :cond_7
    if-nez v2, :cond_8

    .line 229
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    invoke-virtual {v0, v2}, Lo/addItemDecoration;->extraCallback(Ljava/lang/String;)V

    return-void

    .line 16000
    :cond_9
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addItemDecoration;

    .line 17000
    iget-object v1, v0, Lo/addItemDecoration;->onTransact:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getScrollState;

    .line 16084
    invoke-interface {v1}, Lo/getScrollState;->extraCallback()Lo/clearScrap;

    move-result-object v1

    .line 16085
    new-instance v2, Lo/addItemDecoration$onMessageChannelReady;

    invoke-direct {v2, v0}, Lo/addItemDecoration$onMessageChannelReady;-><init>(Lo/addItemDecoration;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 18000
    :cond_a
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const/4 v1, 0x7

    const/4 v3, 0x0

    .line 234
    invoke-static {v0, v2, v3, v3, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 239
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 19000
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addItemDecoration;

    .line 240
    invoke-virtual {v0}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v0

    .line 241
    iget v1, p0, Lo/clearOnChildAttachStateChangeListeners;->asBinder:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rank"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "leaderboard_last_scrolled_rank"

    .line 240
    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8000
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addItemDecoration;

    .line 8037
    iget-object p1, p1, Lo/addItemDecoration;->ICustomTabsCallback:Lo/setActive;

    .line 143
    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners;->asInterface:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 144
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    const-string p2, "loaderView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->shareButton:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "shareButton"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    sget-object v1, Lo/calculateScrollDirectionForPosition$onTransact;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onTransact;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    const/16 v2, 0xc

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/widget/TextView;ILo/calculateScrollDirectionForPosition;)V

    .line 147
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->prizesButton:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v1, "prizesButton"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    sget-object v3, Lo/calculateScrollDirectionForPosition$onTransact;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onTransact;

    check-cast v3, Lo/calculateScrollDirectionForPosition;

    invoke-static {p1, v2, v3}, Lo/extraCallback;->onPostMessage(Landroid/widget/TextView;ILo/calculateScrollDirectionForPosition;)V

    .line 149
    new-instance p1, Lo/getOnFlingListener;

    iget-object v2, p0, Lo/clearOnChildAttachStateChangeListeners;->onTransact:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p1, v2}, Lo/getOnFlingListener;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 152
    new-instance v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {v2}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 153
    move-object v3, p1

    check-cast v3, Lo/checkForGaps;

    const-string v4, "adapter"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9036
    check-cast v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v5, v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v3, Lo/performGetLayoutInflater;

    invoke-direct {v3, p2}, Lo/performGetLayoutInflater;-><init>(C)V

    check-cast v3, Lo/checkForGaps;

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10036
    check-cast v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v4, v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10043
    new-instance v3, Lo/repositionToWrapContentIfNecessary;

    iget-object v2, v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v3, v2, p2}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 155
    iput-object v3, p0, Lo/clearOnChildAttachStateChangeListeners;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    .line 157
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p2, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 158
    new-instance v2, Lo/clearOnChildAttachStateChangeListeners$asInterface;

    invoke-direct {v2, p0, p1}, Lo/clearOnChildAttachStateChangeListeners$asInterface;-><init>(Lo/clearOnChildAttachStateChangeListeners;Lo/getOnFlingListener;)V

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 170
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->leaderBoardRecyclerView:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "leaderBoardRecyclerView"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 171
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->leaderBoardRecyclerView:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/clearOnChildAttachStateChangeListeners;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez v2, :cond_0

    const-string v3, "recyclerAdapter"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 173
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->backButton:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v2, "backButton"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v2, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v2, p0}, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 177
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->prizesButton:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v1, Lo/clearOnChildAttachStateChangeListeners$newSession;

    invoke-direct {v1, p0}, Lo/clearOnChildAttachStateChangeListeners$newSession;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 181
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->shareButton:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/clearOnChildAttachStateChangeListeners$warmup;

    invoke-direct {v0, p0}, Lo/clearOnChildAttachStateChangeListeners$warmup;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 203
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->userStatusLayout:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string/jumbo v0, "userStatusLayout"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/clearOnChildAttachStateChangeListeners$getInterfaceDescriptor;

    invoke-direct {v0, p0}, Lo/clearOnChildAttachStateChangeListeners$getInterfaceDescriptor;-><init>(Lo/clearOnChildAttachStateChangeListeners;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 207
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->leaderBoardRecyclerView:I

    invoke-virtual {p0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;

    invoke-direct {v0, p0, p2}, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsService;-><init>(Lo/clearOnChildAttachStateChangeListeners;Landroidx/recyclerview/widget/GridLayoutManager;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
