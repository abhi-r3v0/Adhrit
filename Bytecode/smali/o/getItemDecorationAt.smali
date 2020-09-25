.class public final Lo/getItemDecorationAt;
.super Lo/findLastVisibleItemPositions;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getItemDecorationAt$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/prizes/PrizeListFragment;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "()V",
        "prizesData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;",
        "getPrizesData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;",
        "setPrizesData",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;)V",
        "getLayoutResource",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
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
.field public static final onPostMessage:Lo/getItemDecorationAt$onPostMessage;


# instance fields
.field private ICustomTabsCallback:Ljava/util/HashMap;

.field private extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getItemDecorationAt$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getItemDecorationAt$onPostMessage;-><init>(B)V

    sput-object v0, Lo/getItemDecorationAt;->onPostMessage:Lo/getItemDecorationAt$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/getItemDecorationAt;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lo/findLastVisibleItemPositions;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "$this$getParcelExtra"

    .line 30
    invoke-static {p0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extra"

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 30
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast p1, Lo/offsetChildren;

    .line 1098
    iget-object p1, p1, Lo/offsetChildren;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;

    .line 31
    iput-object p1, p0, Lo/getItemDecorationAt;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 12000
    iget-object v0, p0, Lo/getItemDecorationAt;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getItemDecorationAt;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getItemDecorationAt;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getItemDecorationAt;->ICustomTabsCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/getItemDecorationAt;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e00b1

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->titleText:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "titleText"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/getItemDecorationAt;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;

    const-string v0, "prizesData"

    if-nez p2, :cond_0

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2071
    :cond_0
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 38
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->descriptionText:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "descriptionText"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/getItemDecorationAt;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;

    if-nez p2, :cond_2

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3072
    :cond_2
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_3

    .line 4000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    move-object p2, v1

    .line 39
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->header1:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "header1"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/getItemDecorationAt;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;

    if-nez p2, :cond_4

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4076
    :cond_4
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 40
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->header2:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "header2"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/getItemDecorationAt;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;

    if-nez p2, :cond_5

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4078
    :cond_5
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;->extraCallback:Ljava/lang/String;

    .line 41
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->prizesIcon:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string p2, "prizesIcon"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 4216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p1, :cond_11

    check-cast p1, Lo/setMaxFrame;

    .line 42
    check-cast p1, Lo/getComposition;

    const-string v2, "prizesIcon.hierarchy"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onNavigationEvent()Lo/setFailureListener$extraCallback;

    move-result-object v2

    if-eqz v2, :cond_10

    const/4 v3, 0x2

    .line 6369
    invoke-virtual {p1, v3}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 6370
    instance-of v3, p1, Lo/fromAssets;

    if-eqz v3, :cond_6

    .line 6371
    check-cast p1, Lo/fromAssets;

    goto :goto_2

    .line 6373
    :cond_6
    sget-object v3, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v3}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 7094
    :goto_2
    iget-object v3, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v4, 0x0

    if-eq v3, v2, :cond_8

    if-eqz v3, :cond_7

    .line 8053
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_9

    .line 7098
    iput-object v2, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 7099
    iput-object v1, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 7100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 7101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 43
    :cond_9
    iget-object p1, p0, Lo/getItemDecorationAt;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;

    if-nez p1, :cond_a

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8074
    :cond_a
    iget-object v6, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;->onNavigationEvent:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 44
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->prizesIcon:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lo/setSpeed;

    invoke-static {v5, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    invoke-static/range {v5 .. v12}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 46
    :cond_b
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 47
    new-instance p2, Lo/getOnFlingListener;

    invoke-direct {p2, v1}, Lo/getOnFlingListener;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/checkForGaps;

    const-string v2, "adapter"

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v3, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance p2, Lo/performGetLayoutInflater;

    invoke-direct {p2, v4}, Lo/performGetLayoutInflater;-><init>(C)V

    check-cast p2, Lo/checkForGaps;

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, v4}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 50
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->gameDetailsRcView:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "gameDetailsRcView"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    iget-object p1, p0, Lo/getItemDecorationAt;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;

    if-nez p1, :cond_c

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10079
    :cond_c
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardPrizesResponse;->onTransact:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 51
    check-cast p1, Ljava/lang/Iterable;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11039
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_5

    :cond_d
    const/16 v1, 0xa

    .line 82
    :goto_5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 84
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Prizes;

    .line 52
    new-instance v2, Lo/setItemViewCacheSize;

    invoke-direct {v2, v1}, Lo/setItemViewCacheSize;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Prizes;)V

    check-cast v2, Lo/StaggeredGridLayoutManager;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 85
    :cond_e
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 54
    :cond_f
    sget-object p1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v2, Lo/getItemDecorationAt$ICustomTabsCallback;

    invoke-direct {v2, v1, p2}, Lo/getItemDecorationAt$ICustomTabsCallback;-><init>(Ljava/util/List;Lo/repositionToWrapContentIfNecessary;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    .line 6215
    :cond_10
    throw v1

    .line 5215
    :cond_11
    throw v1
.end method
