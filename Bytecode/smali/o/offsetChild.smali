.class public final Lo/offsetChild;
.super Lo/findLastVisibleItemPositions;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/offsetChild$extraCallback;,
        Lo/offsetChild$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\u001d\u001eB\"\u0012\u001b\u0008\u0002\u0010\u0002\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0005H\u0016J\u001a\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0005H\u0002J\u0006\u0010\u001c\u001a\u00020\u0005J\u001f\u0010\u001c\u001a\u00020\u00052\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006R\"\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/details/GameGenericBottomSheet;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/details/GameGenericBottomSheet$UIState;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "runOnDismiss",
        "Lkotlin/Function0;",
        "getRunOnDismiss",
        "()Lkotlin/jvm/functions/Function0;",
        "setRunOnDismiss",
        "(Lkotlin/jvm/functions/Function0;)V",
        "uIState",
        "getUIState",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/details/GameGenericBottomSheet$UIState;",
        "setUIState",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/details/GameGenericBottomSheet$UIState;)V",
        "getLayoutResource",
        "",
        "onDismiss",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showProgress",
        "updateUi",
        "Button",
        "UIState",
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
.field ICustomTabsCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Lo/offsetChild$onMessageChannelReady;

.field private onMessageChannelReady:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/offsetChild;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lo/offsetChild;-><init>(Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/offsetChild$onMessageChannelReady;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    .line 18
    new-instance v0, Lo/offsetChild$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/offsetChild$onMessageChannelReady;-><init>(B)V

    iput-object v0, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/offsetChild;->onMessageChannelReady:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final g_()V
    .locals 1

    .line 97
    invoke-super {p0}, Lo/findLastVisibleItemPositions;->g_()V

    .line 98
    iget-object v0, p0, Lo/offsetChild;->ICustomTabsCallback:Lo/getServerTime;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 22000
    iget-object v0, p0, Lo/offsetChild;->onMessageChannelReady:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/offsetChild;->onMessageChannelReady:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/offsetChild;->onMessageChannelReady:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/offsetChild;->onMessageChannelReady:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/offsetChild;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e020f

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1042
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1c

    .line 1044
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "title"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 2117
    iget-object v0, v0, Lo/offsetChild$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 1044
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, v1

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 1129
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 3117
    iget-object p2, p2, Lo/offsetChild$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 1045
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "desc"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 3118
    iget-object v0, v0, Lo/offsetChild$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 1046
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    const/16 v0, 0x8

    .line 1131
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 4118
    iget-object p2, p2, Lo/offsetChild$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 1047
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object p1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 4123
    iget p1, p1, Lo/offsetChild$onMessageChannelReady;->asInterface:I

    const-string p2, "lottieView"

    const-string v0, "$this$visible"

    if-eqz p1, :cond_6

    .line 1049
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p2, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 5123
    iget p2, p2, Lo/offsetChild$onMessageChannelReady;->asInterface:I

    .line 1050
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_6

    .line 1051
    :cond_6
    iget-object p1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 5124
    iget-object p1, p1, Lo/offsetChild$onMessageChannelReady;->asBinder:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 1052
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6009
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 6124
    iget-object p2, p2, Lo/offsetChild$onMessageChannelReady;->asBinder:Ljava/lang/String;

    if-nez p2, :cond_7

    .line 1053
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-static {p1, p2}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 1055
    :cond_8
    :goto_6
    iget-object p1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 7121
    iget-boolean p1, p1, Lo/offsetChild$onMessageChannelReady;->ICustomTabsCallback:Z

    const-string p2, "progressLottie"

    const-string v4, "$this$gone"

    if-eqz p1, :cond_f

    .line 1056
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->progressLottie:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8102
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->progressLottie:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_9

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    const p2, 0x7f120033

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 8103
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->progressLottie:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 8104
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->progressLottie:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_b

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 8105
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->progressLottie:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    const p2, 0x3dd2f1aa    # 0.103f

    const v1, 0x3f1eb852    # 0.62f

    invoke-virtual {p1, p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxProgress(FF)V

    .line 8106
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->progressLottie:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_d

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 8107
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->progressLottie:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_7

    .line 1059
    :cond_f
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->progressLottie:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9017
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    :goto_7
    iget-object p1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 9119
    iget-object p1, p1, Lo/offsetChild$onMessageChannelReady;->onPostMessage:Lo/offsetChild$extraCallback;

    const-string/jumbo p2, "submit"

    if-eqz p1, :cond_15

    .line 1063
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->submit:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10009
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->submit:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 10119
    iget-object v1, v1, Lo/offsetChild$onMessageChannelReady;->onPostMessage:Lo/offsetChild$extraCallback;

    if-nez v1, :cond_10

    .line 1064
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 11111
    :cond_10
    iget-object v1, v1, Lo/offsetChild$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 1064
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object p1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 11119
    iget-object p1, p1, Lo/offsetChild$onMessageChannelReady;->onPostMessage:Lo/offsetChild$extraCallback;

    if-nez p1, :cond_11

    .line 1065
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 12113
    :cond_11
    iget-object p1, p1, Lo/offsetChild$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 1066
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->submit:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 12119
    iget-object v1, v1, Lo/offsetChild$onMessageChannelReady;->onPostMessage:Lo/offsetChild$extraCallback;

    if-eqz v1, :cond_12

    .line 13113
    iget-object v1, v1, Lo/offsetChild$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_13

    :cond_12
    const-string/jumbo v1, "s_tWhiteFour_bgBlack"

    .line 14064
    :cond_13
    sget-object v5, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v5, Lo/calculateScrollDirectionForPosition;

    invoke-static {p1, v1, v5}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 1067
    :cond_14
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->submit:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/offsetChild$ICustomTabsCallback;

    invoke-direct {p2, p0}, Lo/offsetChild$ICustomTabsCallback;-><init>(Lo/offsetChild;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_8

    .line 1076
    :cond_15
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->submit:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15017
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    :goto_8
    iget-object p1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 15120
    iget-object p1, p1, Lo/offsetChild$onMessageChannelReady;->extraCallback:Lo/offsetChild$extraCallback;

    const-string p2, "cancel"

    if-eqz p1, :cond_1b

    .line 1079
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cancel:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16009
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cancel:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 16120
    iget-object v0, v0, Lo/offsetChild$onMessageChannelReady;->extraCallback:Lo/offsetChild$extraCallback;

    if-nez v0, :cond_16

    .line 1080
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 17111
    :cond_16
    iget-object v0, v0, Lo/offsetChild$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 1080
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object p1, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 17120
    iget-object p1, p1, Lo/offsetChild$onMessageChannelReady;->extraCallback:Lo/offsetChild$extraCallback;

    if-nez p1, :cond_17

    .line 1081
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 18113
    :cond_17
    iget-object p1, p1, Lo/offsetChild$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_1a

    .line 1082
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cancel:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lo/offsetChild;->extraCallback:Lo/offsetChild$onMessageChannelReady;

    .line 18120
    iget-object v0, v0, Lo/offsetChild$onMessageChannelReady;->extraCallback:Lo/offsetChild$extraCallback;

    if-eqz v0, :cond_18

    .line 19113
    iget-object v0, v0, Lo/offsetChild$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_19

    :cond_18
    const-string/jumbo v0, "s_tLightPeach_bgLightBlack"

    .line 20064
    :cond_19
    sget-object v1, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    invoke-static {p1, v0, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 1083
    :cond_1a
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cancel:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/offsetChild$onPostMessage;

    invoke-direct {p2, p0}, Lo/offsetChild$onPostMessage;-><init>(Lo/offsetChild;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 1092
    :cond_1b
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cancel:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21017
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    return-void
.end method
