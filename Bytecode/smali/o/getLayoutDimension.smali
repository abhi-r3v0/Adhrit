.class public final Lo/getLayoutDimension;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J$\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u001d2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/CoinIntroFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "coinIntroAnimationListener",
        "com/dreamplug/androidapp/gating/CoinIntroFragment$coinIntroAnimationListener$1",
        "Lcom/dreamplug/androidapp/gating/CoinIntroFragment$coinIntroAnimationListener$1;",
        "credLogoView",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "earnedPoints",
        "",
        "getEarnedPoints",
        "()Ljava/lang/String;",
        "setEarnedPoints",
        "(Ljava/lang/String;)V",
        "fadeoutAnimation",
        "Landroid/view/animation/Animation;",
        "gatingViewModel",
        "Lcom/dreamplug/androidapp/gating/GatingViewModel;",
        "slideUpAnimation",
        "newCpFlow",
        "",
        "oldCpFlow",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
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
.field private final ICustomTabsCallback:Lo/getLayoutDimension$onMessageChannelReady;

.field private asBinder:Ljava/util/HashMap;

.field private extraCallback:Landroid/view/animation/Animation;

.field private onMessageChannelReady:Lo/setTitleMarginStart;

.field private onNavigationEvent:Landroid/view/animation/Animation;

.field private onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 103
    new-instance v0, Lo/getLayoutDimension$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/getLayoutDimension$onMessageChannelReady;-><init>(Lo/getLayoutDimension;)V

    iput-object v0, p0, Lo/getLayoutDimension;->ICustomTabsCallback:Lo/getLayoutDimension$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getLayoutDimension;)V
    .locals 2

    const-string v0, "onboard_new_cp_flow"

    .line 5116
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 5117
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->welcomeTitle:I

    invoke-virtual {p0, v0}, Lo/getLayoutDimension;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    iget-object v1, p0, Lo/getLayoutDimension;->extraCallback:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5118
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->footerView:I

    invoke-virtual {p0, v0}, Lo/getLayoutDimension;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/getLayoutDimension;->onNavigationEvent:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5119
    iget-object v0, p0, Lo/getLayoutDimension;->extraCallback:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    new-instance v1, Lo/getLayoutDimension$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/getLayoutDimension$onNavigationEvent;-><init>(Lo/getLayoutDimension;)V

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic extraCallback(Lo/getLayoutDimension;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    .line 50
    iget-object p0, p0, Lo/getLayoutDimension;->onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    const-string v0, "credLogoView"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/getLayoutDimension;)Lo/setTitleMarginStart;
    .locals 1

    .line 50
    iget-object p0, p0, Lo/getLayoutDimension;->onMessageChannelReady:Lo/setTitleMarginStart;

    if-nez p0, :cond_0

    const-string v0, "gatingViewModel"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/getLayoutDimension;)V
    .locals 5

    const-string v0, "onboard_old_cp_flow"

    .line 5141
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 5142
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object v2, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 5142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "score"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 5142
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "onboard_score_screen_proceed_click"

    .line 5142
    invoke-static {v1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 5144
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {v0}, Lo/setTrackTintMode;->extraCallback(Z)V

    .line 5145
    sget-object v1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {}, Lo/updateToolbarLogo;->onNavigationEvent()V

    .line 5146
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lo/notifyDataSetChanged;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 5147
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "from_onboarding"

    .line 5148
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5149
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    const-string v0, "home"

    const-string/jumbo v2, "welcome_screen"

    const-string v3, "cred_protect_or_rewards"

    invoke-static {v0, v2, v3}, Lo/length;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onboarding_deeplink"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5154
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 5155
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p0

    if-eqz p0, :cond_2

    const v0, 0x7f010022

    const v1, 0x7f010025

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1080
    :cond_0
    new-instance v0, Lo/setMetadata;

    invoke-direct {v0, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    .line 69
    const-class p1, Lo/setTitleMarginStart;

    invoke-virtual {v0, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(ac\u2026ingViewModel::class.java)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setTitleMarginStart;

    iput-object p1, p0, Lo/getLayoutDimension;->onMessageChannelReady:Lo/setTitleMarginStart;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CoinIntroFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0106

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026ewards, container, false)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 7000
    iget-object v0, p0, Lo/getLayoutDimension;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getLayoutDimension;->asBinder:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getLayoutDimension;->asBinder:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getLayoutDimension;->asBinder:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/getLayoutDimension;->asBinder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0b0223

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.credLogoView)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lo/getLayoutDimension;->onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 78
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lo/setTrackTintMode;->asBinder()J

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "AnimationUtils.loadAnimation(this, id)"

    const-string v0, "$this$loadAnimation"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f01004b

    .line 2009
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 79
    :goto_0
    iput-object p1, p0, Lo/getLayoutDimension;->extraCallback:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    :cond_1
    iget-object p1, p0, Lo/getLayoutDimension;->extraCallback:Landroid/view/animation/Animation;

    if-eqz p1, :cond_2

    new-instance v4, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    check-cast v4, Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f010042

    .line 3009
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :cond_3
    iput-object v1, p0, Lo/getLayoutDimension;->onNavigationEvent:Landroid/view/animation/Animation;

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 85
    :cond_4
    iget-object p1, p0, Lo/getLayoutDimension;->onNavigationEvent:Landroid/view/animation/Animation;

    if-eqz p1, :cond_5

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast p2, Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 87
    :cond_5
    sget-object p1, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {p1}, Lo/shouldCollapse;->onPostMessage(Lo/shouldCollapse;)V

    .line 88
    sget-object p1, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    invoke-static {}, Lo/openOptionsMenu;->extraCallback()V

    .line 89
    sget-object p1, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 3033
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object p2, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3034
    invoke-virtual {p1}, Lo/setTrackResource;->onNavigationEvent()V

    :cond_6
    const-string p1, "onboard_cred_logo_animation_screen_load"

    .line 91
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    move-result-object p1

    .line 4012
    sget-object p2, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "onboard_gating_successful"

    .line 95
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    move-result-object p1

    .line 5012
    sget-object p2, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    iget-object p1, p0, Lo/getLayoutDimension;->onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p2, "credLogoView"

    if-nez p1, :cond_7

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 99
    iget-object p1, p0, Lo/getLayoutDimension;->onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_8

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 100
    iget-object p1, p0, Lo/getLayoutDimension;->onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_9

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p0, Lo/getLayoutDimension;->ICustomTabsCallback:Lo/getLayoutDimension$onMessageChannelReady;

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
