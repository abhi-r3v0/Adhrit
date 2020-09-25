.class public final Lo/createHorizontalHelper;
.super Lo/findLastVisibleItemPositions;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/createHorizontalHelper$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J\u0012\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/winner/WinnerSheetFragment;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "()V",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "winnerSheetData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/ShowWinnerSheet;",
        "getWinnerSheetData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/ShowWinnerSheet;",
        "setWinnerSheetData",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/ShowWinnerSheet;)V",
        "getLayoutResource",
        "",
        "handleClick",
        "",
        "cta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
        "onCreate",
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
.field public static final ICustomTabsCallback:Lo/createHorizontalHelper$onMessageChannelReady;


# instance fields
.field private extraCallback:Ljava/util/HashMap;

.field public onMessageChannelReady:Lo/getEndAfterPadding;

.field private final onNavigationEvent:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/createHorizontalHelper$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/createHorizontalHelper$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/createHorizontalHelper;->ICustomTabsCallback:Lo/createHorizontalHelper$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 27
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 27
    iput-object v1, p0, Lo/createHorizontalHelper;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/createHorizontalHelper;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 12087
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    .line 12066
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const v6, 0x258156e6

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "deeplink"

    .line 12067
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13000
    iget-object p0, p0, Lo/createHorizontalHelper;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 12068
    invoke-static {p0, v0, v4, v3, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 12069
    sget-object p0, Lo/length;->extraCallback:Lo/length;

    .line 13088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onMessageChannelReady:Ljava/lang/String;

    .line 12069
    invoke-virtual {p0, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 14000
    :cond_3
    :goto_1
    iget-object p0, p0, Lo/createHorizontalHelper;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 12072
    invoke-static {p0, v0, v4, v3, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/createHorizontalHelper;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lo/findLastVisibleItemPositions;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lo/getEndAfterPadding;

    iput-object p1, p0, Lo/createHorizontalHelper;->onMessageChannelReady:Lo/getEndAfterPadding;

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 15000
    iget-object v0, p0, Lo/createHorizontalHelper;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/createHorizontalHelper;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/createHorizontalHelper;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/createHorizontalHelper;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/createHorizontalHelper;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e00e3

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    iget-object p1, p0, Lo/createHorizontalHelper;->onMessageChannelReady:Lo/getEndAfterPadding;

    const-string/jumbo p2, "winnerSheetData"

    if-nez p1, :cond_0

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1077
    :cond_0
    iget-boolean p1, p1, Lo/getEndAfterPadding;->onPostMessage:Z

    if-nez p1, :cond_5

    .line 39
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/createHorizontalHelper;->onMessageChannelReady:Lo/getEndAfterPadding;

    if-nez v0, :cond_1

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2075
    :cond_1
    iget-object v0, v0, Lo/getEndAfterPadding;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;

    .line 3063
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;->onMessageChannelReady:Ljava/lang/String;

    .line 39
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "desc"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/createHorizontalHelper;->onMessageChannelReady:Lo/getEndAfterPadding;

    if-nez v0, :cond_2

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3075
    :cond_2
    iget-object v0, v0, Lo/getEndAfterPadding;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;

    .line 4064
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;->onPostMessage:Ljava/lang/String;

    .line 40
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    iget-object v0, p0, Lo/createHorizontalHelper;->onMessageChannelReady:Lo/getEndAfterPadding;

    if-nez v0, :cond_3

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4075
    :cond_3
    iget-object v0, v0, Lo/getEndAfterPadding;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;

    .line 5067
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz v0, :cond_4

    .line 5085
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "Claim reward"

    .line 41
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 43
    :cond_5
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f130257

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 44
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f130256

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 45
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_1
    sget-object p1, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->onRelationshipValidationResult()V

    .line 48
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    iget-object v0, p0, Lo/createHorizontalHelper;->onMessageChannelReady:Lo/getEndAfterPadding;

    if-nez v0, :cond_6

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6075
    :cond_6
    iget-object v0, v0, Lo/getEndAfterPadding;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;

    .line 7067
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz v0, :cond_7

    .line 7086
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->extraCallback:Ljava/lang/String;

    if-nez v0, :cond_8

    :cond_7
    const-string/jumbo v0, "s_tWhiteFour_bgBlack"

    :cond_8
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 48
    invoke-static {p1, v0, v2, v1, v2}, Lo/recycleFromEnd;->setButtonStyle$default(Lo/recycleFromEnd;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;ILjava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lo/createHorizontalHelper;->onMessageChannelReady:Lo/getEndAfterPadding;

    if-nez p1, :cond_9

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8075
    :cond_9
    iget-object p1, p1, Lo/getEndAfterPadding;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;

    .line 9069
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;->extraCallback:Ljava/lang/String;

    .line 50
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, v0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "lottieView"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x0

    if-eqz p1, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    const/16 v4, 0x8

    .line 86
    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_c

    .line 52
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, v0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 54
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_d

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    const-string v0, "parentFragment!!"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 88
    new-instance v0, Lo/setMetadata;

    invoke-direct {v0, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class p1, Lo/findTargetSnapPosition;

    invoke-virtual {v0, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    check-cast p1, Lo/findTargetSnapPosition;

    .line 55
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, v0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/recycleFromEnd;

    sget-object v3, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v3}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 56
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, v0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/recycleFromEnd;

    const-string v3, "ctaButton"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v3, Lo/createHorizontalHelper$onNavigationEvent;

    invoke-direct {v3, p0, p1}, Lo/createHorizontalHelper$onNavigationEvent;-><init>(Lo/createHorizontalHelper;Lo/findTargetSnapPosition;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v0, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 62
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/fixEndGap;->extraCallback:Lo/fixEndGap;

    iget-object v0, p0, Lo/createHorizontalHelper;->onMessageChannelReady:Lo/getEndAfterPadding;

    if-nez v0, :cond_e

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9075
    :cond_e
    iget-object p2, v0, Lo/getEndAfterPadding;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;

    .line 10067
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/WinnerSheetBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz p2, :cond_f

    .line 10086
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->extraCallback:Ljava/lang/String;

    goto :goto_4

    :cond_f
    move-object p2, v2

    .line 62
    :goto_4
    invoke-static {p2}, Lo/fixEndGap;->onPostMessage(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, v2, v1, v2}, Lo/recycleFromEnd;->setButtonStyle$default(Lo/recycleFromEnd;ILo/calculateScrollDirectionForPosition;ILjava/lang/Object;)V

    return-void
.end method
