.class public final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;,
        Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;,
        Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 O2\u00020\u00012\u00020\u0002:\u0003OPQB\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u0006\u00103\u001a\u00020.J\u0006\u00104\u001a\u000205J\u0012\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u000107H\u0002J\u0008\u00109\u001a\u000205H\u0016J\u0012\u0010:\u001a\u00020.2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J&\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010?\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u00010B2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u0008\u0010C\u001a\u00020.H\u0016J\u0008\u0010D\u001a\u00020.H\u0016J\u0008\u0010E\u001a\u00020.H\u0016J\u001a\u0010F\u001a\u00020.2\u0006\u0010G\u001a\u00020>2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u0006\u0010H\u001a\u00020.J\u0008\u0010I\u001a\u00020.H\u0002J\u0010\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020#H\u0002J\u0010\u0010L\u001a\u00020.2\u0006\u0010M\u001a\u000205H\u0002J\u0006\u0010N\u001a\u00020.R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0011\u001a\u00060\u0012R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000b\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0016\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u000b\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0%0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u000b\u001a\u0004\u0008)\u0010*R\u000e\u0010,\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006R"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/androidapp/helper/BackKeyHandler;",
        "()V",
        "countDownTimer",
        "Lcom/dreamplug/utils/PreciseCountDownTimer;",
        "dataModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerDataModel;",
        "getDataModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerDataModel;",
        "dataModel$delegate",
        "Lkotlin/Lazy;",
        "endTimeScheduled",
        "",
        "Ljava/lang/Long;",
        "fadedRedColor",
        "",
        "javascriptInterface",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;",
        "getJavascriptInterface",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;",
        "javascriptInterface$delegate",
        "lightGreyBlueColor",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "resumeTime",
        "getResumeTime",
        "()J",
        "setResumeTime",
        "(J)V",
        "uiStateObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewState;",
        "viewEffectsObserver",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewEffects;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerVM;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerVM;",
        "viewModel$delegate",
        "whiteFour30Color",
        "checkAndLaunchInBrowser",
        "",
        "uri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "dismissErrorLayout",
        "errorLayoutShown",
        "",
        "getCookieString",
        "",
        "token",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onPause",
        "onResume",
        "onViewCreated",
        "view",
        "openTutorial",
        "reload",
        "render",
        "uiState",
        "setErrorTexts",
        "noNetwork",
        "showErrorLayout",
        "Companion",
        "GameData",
        "MyJavascriptInterface",
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
.field public static final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsService:Lo/endBatchedUpdates;

.field private asBinder:J

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

.field private final extraCallback:Lo/isSameListener;

.field private getInterfaceDescriptor:Ljava/lang/Long;

.field private final newSession:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/remove;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/isSameListener;

.field private final onPostMessage:Lo/isSameListener;

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private warmup:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onNavigationEvent;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 62
    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsCallback:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 63
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 63
    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage:Lo/isSameListener;

    .line 629
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onPostMessage;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onPostMessage;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 629
    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady:Lo/isSameListener;

    .line 630
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 630
    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->extraCallback:Lo/isSameListener;

    .line 191
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asInterface:Lo/setPlaybackToRemote;

    .line 300
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$requestPostMessageChannel;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$requestPostMessageChannel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->newSession:Lo/setPlaybackToRemote;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsCallback$Stub:I

    return p0
.end method

.method public static final synthetic ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;Lo/endBatchedUpdates;)V
    .locals 0

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsService:Lo/endBatchedUpdates;

    return-void
.end method

.method public static final synthetic asInterface(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/getMoveDuration;
    .locals 0

    .line 22000
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V
    .locals 1

    .line 21555
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21556
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 21557
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->errorLayout:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "errorLayout"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static final synthetic extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;Lo/remove;)V
    .locals 10

    .line 22305
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->hiScore:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "hiScore"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23009
    iget-object v2, p1, Lo/remove;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "0"

    .line 22305
    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22306
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->score:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "score"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23010
    iget v3, p1, Lo/remove;->onPostMessage:I

    .line 22306
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22308
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string/jumbo v3, "webView"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 22309
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 24008
    iget-object v4, p1, Lo/remove;->onMessageChannelReady:Ljava/lang/String;

    .line 22309
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 22311
    :cond_1
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->leaderboardIcon:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v4, "leaderboardIcon"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 24017
    iget-boolean v4, p1, Lo/remove;->ICustomTabsService:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    .line 22591
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22312
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->questionMark:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "questionMark"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 25007
    iget-boolean v4, p1, Lo/remove;->extraCallback:Z

    const/4 v7, 0x1

    xor-int/2addr v4, v7

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    .line 22593
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22313
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->hiScore:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 26007
    iget-boolean v1, p1, Lo/remove;->extraCallback:Z

    const/4 v4, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 22595
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22314
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->score:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 27007
    iget-boolean v1, p1, Lo/remove;->extraCallback:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    .line 22597
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22315
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->headerShimLayout:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getSharedPreferences;

    const-string v1, "headerShimLayout"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 28007
    iget-boolean v1, p1, Lo/remove;->extraCallback:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    const/16 v1, 0x8

    .line 22599
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22318
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifeIndicator1:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "lifeIndicator1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 28016
    iget-boolean v2, p1, Lo/remove;->asInterface:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    const/16 v2, 0x8

    .line 22601
    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22319
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifeIndicator2:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "lifeIndicator2"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 29016
    iget-boolean v4, p1, Lo/remove;->asInterface:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_7

    :cond_8
    const/16 v4, 0x8

    .line 22603
    :goto_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22320
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifeIndicator3:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v4, "lifeIndicator3"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 30016
    iget-boolean v8, p1, Lo/remove;->asInterface:Z

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_8

    :cond_9
    const/16 v8, 0x8

    .line 22605
    :goto_8
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 31013
    iget-object v0, p1, Lo/remove;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 22323
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifeIndicator1:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32013
    iget-object v1, p1, Lo/remove;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 22323
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_9

    :cond_a
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 22324
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifeIndicator2:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33013
    iget-object v1, p1, Lo/remove;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 22324
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 22325
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifeIndicator3:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34013
    iget-object v1, p1, Lo/remove;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 22325
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 22328
    :cond_d
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "timerText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 35011
    iget-object v2, p1, Lo/remove;->onNavigationEvent:Ljava/lang/Long;

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_f

    const/4 v5, 0x0

    .line 22607
    :cond_f
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 36011
    iget-object v0, p1, Lo/remove;->onNavigationEvent:Ljava/lang/Long;

    if-eqz v0, :cond_13

    .line 22330
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->getInterfaceDescriptor:Ljava/lang/Long;

    .line 37011
    iget-object v2, p1, Lo/remove;->onNavigationEvent:Ljava/lang/Long;

    .line 22330
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v7

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsService:Lo/endBatchedUpdates;

    if-nez v0, :cond_13

    .line 22331
    :cond_10
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsService:Lo/endBatchedUpdates;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lo/endBatchedUpdates;->extraCallback()V

    :cond_11
    const/4 v0, 0x0

    .line 22332
    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsService:Lo/endBatchedUpdates;

    .line 38011
    iget-object v2, p1, Lo/remove;->onNavigationEvent:Ljava/lang/Long;

    .line 22333
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v8, "Calendar.getInstance()"

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_12

    .line 22335
    new-instance v0, Lo/endBatchedUpdates;

    invoke-direct {v0, v4, v5}, Lo/endBatchedUpdates;-><init>(J)V

    .line 22336
    new-instance v1, Lo/toDebugString$onPostMessage;

    invoke-direct {v1}, Lo/toDebugString$onPostMessage;-><init>()V

    iput v6, v1, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 22337
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;

    invoke-direct {v2, v1, p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$newSession;-><init>(Lo/toDebugString$onPostMessage;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;Lo/remove;)V

    check-cast v2, Lo/onDisconnectSetValue;

    const-string v1, "onTick"

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38094
    iput-object v2, v0, Lo/endBatchedUpdates;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 22362
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast v1, Lo/getServerTime;

    const-string v2, "onFinish"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38098
    iput-object v1, v0, Lo/endBatchedUpdates;->onMessageChannelReady:Lo/getServerTime;

    .line 22369
    invoke-virtual {v0}, Lo/endBatchedUpdates;->ICustomTabsCallback()Lo/endBatchedUpdates;

    .line 22335
    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsService:Lo/endBatchedUpdates;

    .line 39011
    iget-object v0, p1, Lo/remove;->onNavigationEvent:Ljava/lang/Long;

    .line 22371
    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->getInterfaceDescriptor:Ljava/lang/Long;

    goto :goto_d

    .line 22373
    :cond_12
    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsService:Lo/endBatchedUpdates;

    .line 22374
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onRelationshipValidationResult:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22375
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "00:00:00"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39012
    :cond_13
    :goto_d
    iget-object v0, p1, Lo/remove;->onTransact:Ljava/lang/Double;

    if-eqz v0, :cond_15

    .line 22381
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_14

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 40012
    iget-object v1, p1, Lo/remove;->onTransact:Ljava/lang/Double;

    .line 22382
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    goto :goto_e

    .line 22381
    :cond_14
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40014
    :cond_15
    :goto_e
    iget-boolean v0, p1, Lo/remove;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_16

    .line 22387
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->gameBlockingLoader:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0, v7}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    goto :goto_f

    .line 22389
    :cond_16
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->gameBlockingLoader:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 41007
    :goto_f
    iget-boolean p1, p1, Lo/remove;->extraCallback:Z

    if-eqz p1, :cond_1b

    .line 22393
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->headerShimLayout:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSharedPreferences;

    .line 41090
    iget-object p1, p1, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 42061
    iget-object v0, p1, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    .line 42075
    iget-object v0, p1, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_18

    .line 42061
    invoke-virtual {p1}, Lo/і;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 42062
    iget-object p1, p1, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 22394
    :cond_18
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webShimLayout:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/getSharedPreferences;

    .line 42090
    iget-object p0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 43061
    iget-object p1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1a

    .line 43075
    iget-object p1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v6, 0x1

    :cond_19
    if-nez v6, :cond_1a

    .line 43061
    invoke-virtual {p0}, Lo/і;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 43062
    iget-object p0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1a
    return-void

    .line 22396
    :cond_1b
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->headerShimLayout:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/getSharedPreferences;

    .line 43095
    iget-object p0, p0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 44068
    iget-object p1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1d

    .line 44075
    iget-object p1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v6, 0x1

    :cond_1c
    if-eqz v6, :cond_1d

    .line 44069
    iget-object p0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1d
    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onRelationshipValidationResult:I

    return p0
.end method

.method private final onMessageChannelReady(Z)V
    .locals 2

    const-string v0, "ourServerText"

    const-string/jumbo v1, "title"

    if-eqz p1, :cond_0

    .line 405
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1302d4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ourServerText:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 408
    :cond_0
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f130411

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ourServerText:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1301aa

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onTransact:I

    return p0
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady(Z)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;
    .locals 0

    .line 21000
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/findTargetSnapPosition;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 21414
    invoke-static {p1, p0}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 6

    .line 540
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15686
    iget-object v1, v0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 16571
    new-instance v3, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v3, v0, v4, v5, v2}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v0, v3, v2}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    return v1

    .line 544
    :cond_1
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return v1

    :cond_2
    return v2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1580
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo v0, "webViewData"

    .line 1582
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;

    .line 2000
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/findTargetSnapPosition;

    .line 73
    new-instance v1, Lo/onLayoutComplete;

    .line 2589
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 3000
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/estimateNextPositionDiffForFling;

    .line 73
    invoke-direct {v1, v2, v3}, Lo/onLayoutComplete;-><init>(Ljava/lang/String;Lo/estimateNextPositionDiffForFling;)V

    check-cast v1, Lo/computeDistancePerChild;

    invoke-virtual {v0, v1}, Lo/findTargetSnapPosition;->onEvent(Lo/computeDistancePerChild;)V

    .line 74
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameWebViewFragment gameId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3589
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4029
    invoke-interface {v0, p1, v1, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const v0, 0x7f060150

    invoke-static {p1, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onTransact:I

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const v0, 0x7f060100

    invoke-static {p1, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsCallback$Stub:I

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const v0, 0x7f06023b

    invoke-static {p1, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onRelationshipValidationResult:I

    .line 5000
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/findTargetSnapPosition;

    .line 78
    invoke-virtual {p1}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    const-string v0, "game_screen_load"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 1584
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "use GameWebViewFragment.getInstance(GameData) to get an instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00a7

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsService:Lo/endBatchedUpdates;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/endBatchedUpdates;->extraCallback()V

    .line 296
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 13000
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;

    .line 297
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->showNavigationBar()V

    .line 14000
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->warmup:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 8

    .line 418
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 610
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 611
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 14212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 419
    sget-object v5, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    .line 14320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 14321
    sget-object v7, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v5, v7, :cond_1

    move-object v4, v5

    .line 419
    :cond_1
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v6

    .line 15060
    invoke-direct {p0, v4}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady(Z)V

    .line 420
    :cond_2
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->errorLayout:I

    invoke-virtual {p0, v4}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "errorLayout"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 614
    :cond_3
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_4

    .line 615
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 616
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 618
    :cond_4
    :goto_1
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$warmup;

    invoke-direct {v1, v3, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$warmup;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->warmup:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->warmup:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->warmup:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->warmup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPause()V
    .locals 5

    .line 184
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 185
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "javascript:if(typeof gameManager !== `undefined` && typeof gameManager.Pause !== `undefined`){gameManager.Pause();}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 12000
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/findTargetSnapPosition;

    .line 186
    invoke-virtual {v0}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "Calendar.getInstance()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asBinder:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_screen_exit"

    .line 186
    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 179
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "javascript:if(typeof gameManager !== `undefined` && typeof gameManager.Resume !== `undefined`){gameManager.Resume();}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asBinder:J

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$asBinder;

    invoke-direct {p2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$asBinder;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->gameTopDrawable:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string p2, "gameTopDrawable"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 6000
    sget-object p2, Lo/isInLayout;->cancelAll:Lo/isDetached;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 93
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-static {p1, p2}, Lo/setInflatedId;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 94
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->gameBottomDrawable:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string p2, "gameBottomDrawable"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 7000
    sget-object p2, Lo/isInLayout;->cancel:Lo/isDetached;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    .line 94
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-static {p1, p2}, Lo/setInflatedId;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 96
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const-string/jumbo p2, "webView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 97
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onRelationshipValidationResult;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onRelationshipValidationResult;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 143
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    sget-object v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$asInterface;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$asInterface;

    check-cast v1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo p2, "settings"

    .line 145
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 146
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 8000
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;

    const-string v3, "mobileClient"

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 148
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 149
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 150
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 153
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->tryAgain:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    const-string/jumbo p2, "tryAgain"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub;

    invoke-direct {p2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 9000
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/findTargetSnapPosition;

    .line 9025
    iget-object p1, p1, Lo/findTargetSnapPosition;->ICustomTabsCallback:Lo/setActive;

    .line 158
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->newSession:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 10000
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/findTargetSnapPosition;

    .line 10025
    iget-object p1, p1, Lo/findTargetSnapPosition;->ICustomTabsCallback:Lo/setActive;

    .line 159
    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->newSession:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 11000
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/findTargetSnapPosition;

    .line 11026
    iget-object p1, p1, Lo/findTargetSnapPosition;->onPostMessage:Lo/setActive;

    .line 160
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asInterface:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 162
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->backButton:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "backButton"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onTransact;

    invoke-direct {p2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$onTransact;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 165
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->questionMark:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "questionMark"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$getInterfaceDescriptor;

    invoke-direct {p2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$getInterfaceDescriptor;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 169
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->leaderboardIcon:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string p2, "leaderboardIcon"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsService;

    invoke-direct {p2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsService;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
