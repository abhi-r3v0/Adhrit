.class public final Lo/layoutChunk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t*\u0001\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010 \u001a\u00020\u001fJ\u0008\u0010!\u001a\u00020\u001fH\u0016J\u0008\u0010\"\u001a\u00020\u001fH\u0016J\u0006\u0010#\u001a\u00020\u0008J\u0008\u0010$\u001a\u00020\u001fH\u0002J\u000e\u0010%\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010&\u001a\u00020\u001f2\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\'\u001a\u00020\u001fH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n \u0011*\u0004\u0018\u00010\u001d0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/NameValidationPresenter;",
        "Lcom/dreamplug/fabrik/ui/lending/LendingViewProtocol;",
        "parent",
        "Landroid/view/View;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "(Landroid/view/View;Landroidx/lifecycle/Lifecycle;)V",
        "lendingVerified",
        "",
        "loopAnimationListener",
        "com/dreamplug/fabrik/ui/lending/NameValidationPresenter$loopAnimationListener$2$1",
        "getLoopAnimationListener",
        "()Lcom/dreamplug/fabrik/ui/lending/NameValidationPresenter$loopAnimationListener$2$1;",
        "loopAnimationListener$delegate",
        "Lkotlin/Lazy;",
        "lottie",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "kotlin.jvm.PlatformType",
        "lottieTimeClass",
        "Lcom/dreamplug/fabrik/ui/lending/LottieTimeClass;",
        "multiTextFadeBehaviour",
        "Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour;",
        "getMultiTextFadeBehaviour",
        "()Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour;",
        "setMultiTextFadeBehaviour",
        "(Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour;)V",
        "state",
        "",
        "text",
        "Landroid/widget/TextView;",
        "collapse",
        "",
        "endLottie",
        "expand",
        "hidden",
        "isVisible",
        "loopLottie",
        "setState",
        "showLottie",
        "startLottieAnim",
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
.field ICustomTabsCallback:Z

.field final asInterface:Lo/isSameListener;

.field final extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

.field onMessageChannelReady:Lo/getSpanSize;

.field onNavigationEvent:Lo/requireView;

.field onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Landroid/widget/TextView;

.field final onTransact:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/layoutChunk;->onTransact:Landroid/view/View;

    .line 22
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->nameLottie:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    .line 23
    iget-object p1, p0, Lo/layoutChunk;->onTransact:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->validationText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/layoutChunk;->onRelationshipValidationResult:Landroid/widget/TextView;

    const-string v0, "processing"

    .line 25
    iput-object v0, p0, Lo/layoutChunk;->onPostMessage:Ljava/lang/String;

    .line 30
    new-instance v0, Lo/requireView;

    const-string/jumbo v1, "text"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lo/requireView;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lo/layoutChunk;->onNavigationEvent:Lo/requireView;

    .line 31
    invoke-virtual {v0, p2}, Lo/requireView;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 32
    iget-object p1, p0, Lo/layoutChunk;->onNavigationEvent:Lo/requireView;

    const/4 p2, 0x1

    .line 4020
    iput-boolean p2, p1, Lo/requireView;->ICustomTabsCallback:Z

    .line 33
    iget-object p1, p0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 103
    new-instance p1, Lo/layoutChunk$extraCallback;

    invoke-direct {p1, p0}, Lo/layoutChunk$extraCallback;-><init>(Lo/layoutChunk;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 103
    iput-object p2, p0, Lo/layoutChunk;->asInterface:Lo/isSameListener;

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 4

    .line 74
    iget-object v0, p0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 75
    iget-object v0, p0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lo/layoutChunk;->onMessageChannelReady:Lo/getSpanSize;

    const-string v3, "lottieTimeClass"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lo/layoutChunk;->onMessageChannelReady:Lo/getSpanSize;

    if-nez v2, :cond_1

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3003
    :cond_1
    iget v2, v2, Lo/getSpanSize;->onNavigationEvent:I

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v0, v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 76
    iget-object v0, p0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 77
    iget-object v0, p0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    .line 4000
    iget-object v1, p0, Lo/layoutChunk;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/layoutChunk$extraCallback$5;

    .line 77
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    iget-object v0, p0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 4

    .line 52
    new-instance v0, Lo/getSpanSize;

    const/4 v1, 0x0

    const/16 v2, 0x78

    const/16 v3, 0x1d6

    invoke-direct {v0, v1, v2, v3}, Lo/getSpanSize;-><init>(III)V

    iput-object v0, p0, Lo/layoutChunk;->onMessageChannelReady:Lo/getSpanSize;

    .line 53
    iget-object v0, p0, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f120024

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const-string v0, "processing"

    .line 54
    iput-object v0, p0, Lo/layoutChunk;->onPostMessage:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lo/layoutChunk;->ICustomTabsCallback:Z

    .line 56
    iget-object v0, p0, Lo/layoutChunk;->onTransact:Landroid/view/View;

    const-string v2, "$this$visible"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lo/layoutChunk;->onNavigationEvent:Lo/requireView;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13042f

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "java.util.Collections.singletonList(element)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xfa0

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lo/requireView;->onNavigationEvent(Ljava/util/List;J)V

    .line 58
    invoke-direct {p0}, Lo/layoutChunk;->ICustomTabsCallback()V

    .line 59
    sget-object v0, Lo/layoutChunk$onNavigationEvent;->ICustomTabsCallback:Lo/layoutChunk$onNavigationEvent;

    return-void
.end method
