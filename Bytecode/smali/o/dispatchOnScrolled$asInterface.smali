.class public final Lo/dispatchOnScrolled$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchOnScrolled;->onMessageChannelReady(FLo/nextTransactionOrder;)V
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
        "\u0000\u0099\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\u000b"
    }
    d2 = {
        "androidx/core/animation/AnimatorKt$addListener$listener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animator",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "core-ktx_release",
        "androidx/core/animation/AnimatorKt$doOnEnd$$inlined$addListener$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$$special$$inlined$doOnEnd$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/dispatchOnScrolled;

.field private synthetic extraCallback:Lo/nextTransactionOrder;

.field private synthetic onNavigationEvent:Landroid/animation/ValueAnimator;

.field private synthetic onPostMessage:I


# direct methods
.method public constructor <init>(Lo/dispatchOnScrolled;Lo/nextTransactionOrder;ILandroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchOnScrolled$asInterface;->ICustomTabsCallback:Lo/dispatchOnScrolled;

    iput-object p2, p0, Lo/dispatchOnScrolled$asInterface;->extraCallback:Lo/nextTransactionOrder;

    iput p3, p0, Lo/dispatchOnScrolled$asInterface;->onPostMessage:I

    iput-object p4, p0, Lo/dispatchOnScrolled$asInterface;->onNavigationEvent:Landroid/animation/ValueAnimator;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lo/dispatchOnScrolled$asInterface;->ICustomTabsCallback:Lo/dispatchOnScrolled;

    const/4 v0, 0x0

    .line 1034
    iput-boolean v0, p1, Lo/dispatchOnScrolled;->asBinder:Z

    .line 120
    iget-object p1, p0, Lo/dispatchOnScrolled$asInterface;->ICustomTabsCallback:Lo/dispatchOnScrolled;

    invoke-virtual {p1}, Lo/dispatchOnScrolled;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lo/dispatchOnScrolled$asInterface;->ICustomTabsCallback:Lo/dispatchOnScrolled;

    .line 2034
    iget v0, p1, Lo/dispatchOnScrolled;->extraCallback:F

    .line 122
    iget v1, p0, Lo/dispatchOnScrolled$asInterface;->onPostMessage:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3034
    iput v0, p1, Lo/dispatchOnScrolled;->extraCallback:F

    .line 123
    iget-object p1, p0, Lo/dispatchOnScrolled$asInterface;->onNavigationEvent:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 124
    iget-object p1, p0, Lo/dispatchOnScrolled$asInterface;->ICustomTabsCallback:Lo/dispatchOnScrolled;

    .line 4034
    iget-object p1, p1, Lo/dispatchOnScrolled;->onNavigationEvent:Lo/offsetChildrenVertical;

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lo/dispatchOnScrolled$asInterface;->ICustomTabsCallback:Lo/dispatchOnScrolled;

    invoke-virtual {v0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v0

    iget-object v1, p0, Lo/dispatchOnScrolled$asInterface;->ICustomTabsCallback:Lo/dispatchOnScrolled;

    .line 4055
    iget-object v1, v1, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    .line 124
    iget-object v2, p0, Lo/dispatchOnScrolled$asInterface;->ICustomTabsCallback:Lo/dispatchOnScrolled;

    invoke-virtual {v2}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;

    .line 4113
    iget-object v1, v1, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;->extraCallback:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    .line 125
    iget-object v3, p0, Lo/dispatchOnScrolled$asInterface;->extraCallback:Lo/nextTransactionOrder;

    .line 124
    invoke-virtual {p1, v0, v1, v2, v3}, Lo/offsetChildrenVertical;->onNavigationEvent(IIZLo/nextTransactionOrder;)V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
