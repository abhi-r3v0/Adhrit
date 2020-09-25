.class public final Lo/getEndPadding;
.super Lo/findLastVisibleItemPositions;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getEndPadding$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/gameover/GameOverFragment;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "()V",
        "gameOverSheet",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameOverSheet;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
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
.field public static final onPostMessage:Lo/getEndPadding$extraCallback;


# instance fields
.field private ICustomTabsCallback:Lo/findSnapView;

.field private final onMessageChannelReady:Lo/isSameListener;

.field private onNavigationEvent:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getEndPadding$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getEndPadding$extraCallback;-><init>(B)V

    sput-object v0, Lo/getEndPadding;->onPostMessage:Lo/getEndPadding$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 26
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 26
    iput-object v1, p0, Lo/getEndPadding;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/getEndPadding;)Lo/getMoveDuration;
    .locals 0

    .line 10000
    iget-object p0, p0, Lo/getEndPadding;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/getEndPadding;)Lo/findSnapView;
    .locals 1

    .line 23
    iget-object p0, p0, Lo/getEndPadding;->ICustomTabsCallback:Lo/findSnapView;

    if-nez p0, :cond_0

    const-string v0, "gameOverSheet"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/getEndPadding;->onNavigationEvent:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lo/findLastVisibleItemPositions;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lo/findSnapView;

    iput-object p1, p0, Lo/getEndPadding;->ICustomTabsCallback:Lo/findSnapView;

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 11000
    iget-object v0, p0, Lo/getEndPadding;->onNavigationEvent:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getEndPadding;->onNavigationEvent:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getEndPadding;->onNavigationEvent:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getEndPadding;->onNavigationEvent:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/getEndPadding;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e00cd

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "title"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/getEndPadding;->ICustomTabsCallback:Lo/findSnapView;

    const-string v0, "gameOverSheet"

    if-nez p2, :cond_0

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1092
    :cond_0
    iget-object p2, p2, Lo/findSnapView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2075
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 37
    :goto_0
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "desc"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/getEndPadding;->ICustomTabsCallback:Lo/findSnapView;

    if-nez p2, :cond_2

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2092
    :cond_2
    iget-object p2, p2, Lo/findSnapView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;

    if-eqz p2, :cond_3

    .line 3076
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p2, v1

    .line 38
    :goto_1
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string p2, "lottieView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v2, p0, Lo/getEndPadding;->ICustomTabsCallback:Lo/findSnapView;

    if-nez v2, :cond_4

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3092
    :cond_4
    iget-object v2, v2, Lo/findSnapView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;

    if-eqz v2, :cond_5

    .line 4079
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;->extraCallback:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    const/16 v3, 0x8

    .line 68
    :goto_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lo/getEndPadding;->ICustomTabsCallback:Lo/findSnapView;

    if-nez p1, :cond_8

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4092
    :cond_8
    iget-object p1, p1, Lo/findSnapView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;

    if-eqz p1, :cond_9

    .line 5079
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 40
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 41
    :cond_9
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    iget-object p2, p0, Lo/getEndPadding;->ICustomTabsCallback:Lo/findSnapView;

    if-nez p2, :cond_a

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_a
    if-eqz p2, :cond_b

    .line 5092
    iget-object p2, p2, Lo/findSnapView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;

    if-eqz p2, :cond_b

    .line 6077
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz p2, :cond_b

    .line 6085
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onNavigationEvent:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object p2, v1

    .line 41
    :goto_5
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object p2, Lo/fixEndGap;->extraCallback:Lo/fixEndGap;

    iget-object p2, p0, Lo/getEndPadding;->ICustomTabsCallback:Lo/findSnapView;

    if-nez p2, :cond_c

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_c
    if-eqz p2, :cond_d

    .line 6092
    iget-object p2, p2, Lo/findSnapView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;

    if-eqz p2, :cond_d

    .line 7077
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz p2, :cond_d

    .line 7086
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->extraCallback:Ljava/lang/String;

    goto :goto_6

    :cond_d
    move-object p2, v1

    .line 42
    :goto_6
    invoke-static {p2}, Lo/fixEndGap;->onPostMessage(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    invoke-static {p1, p2, v1, v0, v1}, Lo/recycleFromEnd;->setButtonStyle$default(Lo/recycleFromEnd;ILo/calculateScrollDirectionForPosition;ILjava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    const-string p2, "parentFragment!!"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 70
    new-instance p2, Lo/setMetadata;

    invoke-direct {p2, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class p1, Lo/findTargetSnapPosition;

    invoke-virtual {p2, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string p2, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    check-cast p1, Lo/findTargetSnapPosition;

    .line 44
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/recycleFromEnd;

    const-string v0, "ctaButton"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/getEndPadding$onMessageChannelReady;

    invoke-direct {v0, p0, p1}, Lo/getEndPadding$onMessageChannelReady;-><init>(Lo/getEndPadding;Lo/findTargetSnapPosition;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
