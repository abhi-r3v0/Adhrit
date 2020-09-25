.class public final Lo/getView;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
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
        "com/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour$scheduleNextCommand$1$1$1",
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
.field private synthetic onNavigationEvent:Lo/requireView;

.field private synthetic onPostMessage:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Landroid/view/ViewPropertyAnimator;Lo/requireView;)V
    .locals 0

    iput-object p1, p0, Lo/getView;->onPostMessage:Landroid/view/ViewPropertyAnimator;

    iput-object p2, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 102
    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 125
    iget-object p1, p0, Lo/getView;->onPostMessage:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 105
    iget-object p1, p0, Lo/getView;->onPostMessage:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 106
    iget-object p1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 1012
    iget p1, p1, Lo/requireView;->onTransact:I

    .line 106
    iget-object v0, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 2012
    iget-object v0, v0, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 4020
    iget-boolean p1, p1, Lo/requireView;->ICustomTabsCallback:Z

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 5012
    iget-object v0, p1, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6012
    iput v0, p1, Lo/requireView;->onTransact:I

    .line 112
    iget-object p1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 7012
    invoke-virtual {p1}, Lo/requireView;->onMessageChannelReady()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 8012
    iget v0, p1, Lo/requireView;->onTransact:I

    add-int/lit8 v0, v0, 0x1

    .line 9012
    iput v0, p1, Lo/requireView;->onTransact:I

    .line 116
    iget-object p1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 10012
    invoke-virtual {p1}, Lo/requireView;->onMessageChannelReady()V

    .line 118
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 11012
    iget-object p1, p1, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    .line 118
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 12012
    iget-object v0, p1, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    .line 119
    iget-object v1, p0, Lo/getView;->onNavigationEvent:Lo/requireView;

    .line 13012
    iget v1, v1, Lo/requireView;->onTransact:I

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/requireView$onNavigationEvent;

    .line 13043
    iget-wide v0, v0, Lo/requireView$onNavigationEvent;->ICustomTabsCallback:J

    .line 13046
    iput-wide v0, p1, Lo/requireView;->asBinder:J

    :cond_2
    return-void
.end method
