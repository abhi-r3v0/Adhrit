.class public final Lo/requireView$onPostMessage;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requireView;->onMessageChannelReady()V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour$showNextText$1$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
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
.field private synthetic extraCallback:Lo/requireView;

.field private synthetic onMessageChannelReady:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Landroid/view/ViewPropertyAnimator;Lo/requireView;)V
    .locals 0

    iput-object p1, p0, Lo/requireView$onPostMessage;->onMessageChannelReady:Landroid/view/ViewPropertyAnimator;

    iput-object p2, p0, Lo/requireView$onPostMessage;->extraCallback:Lo/requireView;

    .line 81
    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 90
    iget-object p1, p0, Lo/requireView$onPostMessage;->onMessageChannelReady:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 83
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 84
    iget-object p1, p0, Lo/requireView$onPostMessage;->onMessageChannelReady:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 85
    iget-object p1, p0, Lo/requireView$onPostMessage;->extraCallback:Lo/requireView;

    .line 1099
    move-object v0, p1

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p1, Lo/requireView;->onMessageChannelReady:Ljava/lang/Runnable;

    .line 1131
    iget-object v0, p1, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1132
    iget-wide v0, p1, Lo/requireView;->asBinder:J

    iget-wide v2, p1, Lo/requireView;->extraCallback:J

    sub-long/2addr v0, v2

    .line 2000
    iget-object v2, p1, Lo/requireView;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 1133
    iget-object p1, p1, Lo/requireView;->onMessageChannelReady:Ljava/lang/Runnable;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
