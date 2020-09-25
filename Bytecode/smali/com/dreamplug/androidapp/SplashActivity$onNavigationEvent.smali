.class public final Lcom/dreamplug/androidapp/SplashActivity$onNavigationEvent;
.super Lo/recalculatePositionOfItemAt;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/SplashActivity;->onNavigationEvent()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 246
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->splashLottieView:I

    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v0, "splashLottieView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 236
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationStart(Landroid/animation/Animator;)V

    .line 237
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->introLottie:I

    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f120040

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 238
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->introLottie:I

    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 239
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->introLottie:I

    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final run()V
    .locals 3

    .line 1240
    sget-object v0, Lo/cancelSuperTouch;->asInterface:Lo/cancelSuperTouch;

    iget-object v1, p0, Lcom/dreamplug/androidapp/SplashActivity$onNavigationEvent;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    move-object v2, v1

    check-cast v2, Lo/toLegacyStreamType;

    invoke-static {v1}, Lcom/dreamplug/androidapp/SplashActivity;->onNavigationEvent(Lcom/dreamplug/androidapp/SplashActivity;)Lo/setPlaybackToRemote;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
