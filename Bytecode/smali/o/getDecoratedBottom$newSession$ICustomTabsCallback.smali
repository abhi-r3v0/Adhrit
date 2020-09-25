.class public final Lo/getDecoratedBottom$newSession$ICustomTabsCallback;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDecoratedBottom$newSession;
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
        "com/dreamplug/fabrik/ui/onboardMachine/OnboardMachineFragment$onViewCreated$6$animationListener$1",
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
.field private synthetic onMessageChannelReady:Lo/getDecoratedBottom$newSession;


# direct methods
.method constructor <init>(Lo/getDecoratedBottom$newSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lo/getDecoratedBottom$newSession$ICustomTabsCallback;->onMessageChannelReady:Lo/getDecoratedBottom$newSession;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 292
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 293
    iget-object p1, p0, Lo/getDecoratedBottom$newSession$ICustomTabsCallback;->onMessageChannelReady:Lo/getDecoratedBottom$newSession;

    iget-object p1, p1, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;I)V

    .line 294
    iget-object p1, p0, Lo/getDecoratedBottom$newSession$ICustomTabsCallback;->onMessageChannelReady:Lo/getDecoratedBottom$newSession;

    iget-object p1, p1, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->successLayout:I

    invoke-virtual {p1, v1}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string/jumbo v1, "successLayout"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lo/getDecoratedBottom$newSession$ICustomTabsCallback;->onMessageChannelReady:Lo/getDecoratedBottom$newSession;

    iget-object p1, p1, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineBackgroundLottie:I

    invoke-virtual {p1, v0}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "machineBackgroundLottie"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lo/getDecoratedBottom$newSession$ICustomTabsCallback;->onMessageChannelReady:Lo/getDecoratedBottom$newSession;

    iget-object p1, p1, Lo/getDecoratedBottom$newSession;->onMessageChannelReady:Lo/getDecoratedBottom;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {p1, v0}, Lo/getDecoratedBottom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "machineLottieView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void
.end method
