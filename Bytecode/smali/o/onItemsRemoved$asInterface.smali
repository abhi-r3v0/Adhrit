.class public final Lo/onItemsRemoved$asInterface;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onItemsRemoved;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/DisbursalLottieFragment$startTextAnimation$1",
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
.field private synthetic extraCallback:Landroid/animation/ObjectAnimator;

.field private synthetic onMessageChannelReady:Landroid/animation/ObjectAnimator;

.field private synthetic onNavigationEvent:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/onItemsRemoved$asInterface;->onNavigationEvent:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lo/onItemsRemoved$asInterface;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lo/onItemsRemoved$asInterface;->extraCallback:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lo/onItemsRemoved$asInterface;->onNavigationEvent:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lo/onItemsRemoved$asInterface;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    check-cast v1, Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onItemsRemoved$asInterface;->extraCallback:Landroid/animation/ObjectAnimator;

    check-cast v1, Landroid/animation/Animator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 154
    iget-object p1, p0, Lo/onItemsRemoved$asInterface;->onNavigationEvent:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
