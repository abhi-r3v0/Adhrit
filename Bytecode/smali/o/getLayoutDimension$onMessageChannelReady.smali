.class public final Lo/getLayoutDimension$onMessageChannelReady;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLayoutDimension;-><init>()V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/CoinIntroFragment$coinIntroAnimationListener$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationRepeat",
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
.field private synthetic onMessageChannelReady:Lo/getLayoutDimension;


# direct methods
.method constructor <init>(Lo/getLayoutDimension;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lo/getLayoutDimension$onMessageChannelReady;->onMessageChannelReady:Lo/getLayoutDimension;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 111
    iget-object p1, p0, Lo/getLayoutDimension$onMessageChannelReady;->onMessageChannelReady:Lo/getLayoutDimension;

    invoke-static {p1}, Lo/getLayoutDimension;->onNavigationEvent(Lo/getLayoutDimension;)Lo/setTitleMarginStart;

    invoke-static {}, Lo/setTitleMarginStart;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/getLayoutDimension$onMessageChannelReady;->onMessageChannelReady:Lo/getLayoutDimension;

    invoke-static {p1}, Lo/getLayoutDimension;->ICustomTabsCallback(Lo/getLayoutDimension;)V

    return-void

    :cond_0
    iget-object p1, p0, Lo/getLayoutDimension$onMessageChannelReady;->onMessageChannelReady:Lo/getLayoutDimension;

    invoke-static {p1}, Lo/getLayoutDimension;->onPostMessage(Lo/getLayoutDimension;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 106
    iget-object p1, p0, Lo/getLayoutDimension$onMessageChannelReady;->onMessageChannelReady:Lo/getLayoutDimension;

    invoke-static {p1}, Lo/getLayoutDimension;->extraCallback(Lo/getLayoutDimension;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/16 v0, 0x97

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    return-void
.end method
