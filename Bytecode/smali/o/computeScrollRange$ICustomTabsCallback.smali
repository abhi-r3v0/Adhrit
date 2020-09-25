.class public final Lo/computeScrollRange$ICustomTabsCallback;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;-><init>()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullDownFragment$loopLoadingAnimationListener$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
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
.field private synthetic extraCallback:Lo/computeScrollRange;


# direct methods
.method constructor <init>(Lo/computeScrollRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lo/computeScrollRange$ICustomTabsCallback;->extraCallback:Lo/computeScrollRange;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 488
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 489
    iget-object p1, p0, Lo/computeScrollRange$ICustomTabsCallback;->extraCallback:Lo/computeScrollRange;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {p1, v0}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 490
    iget-object p1, p0, Lo/computeScrollRange$ICustomTabsCallback;->extraCallback:Lo/computeScrollRange;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {p1, v0}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "machineLottieView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/computeScrollRange$ICustomTabsCallback;->extraCallback:Lo/computeScrollRange;

    invoke-static {v1}, Lo/computeScrollRange;->extraCallback(Lo/computeScrollRange;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 491
    iget-object p1, p0, Lo/computeScrollRange$ICustomTabsCallback;->extraCallback:Lo/computeScrollRange;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {p1, v1}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x46

    const/16 v2, 0x68

    invoke-virtual {p1, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 492
    iget-object p1, p0, Lo/computeScrollRange$ICustomTabsCallback;->extraCallback:Lo/computeScrollRange;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {p1, v1}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 493
    iget-object p1, p0, Lo/computeScrollRange$ICustomTabsCallback;->extraCallback:Lo/computeScrollRange;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {p1, v1}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 494
    iget-object p1, p0, Lo/computeScrollRange$ICustomTabsCallback;->extraCallback:Lo/computeScrollRange;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {p1, v0}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    return-void
.end method
