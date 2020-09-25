.class public final Lo/supportsPredictiveItemAnimations$ICustomTabsCallback;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/supportsPredictiveItemAnimations;
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
        "com/dreamplug/fabrik/ui/lending/StashProcessingDialog$endLottie$endAnimationListener$1",
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
.field private synthetic ICustomTabsCallback:Lo/supportsPredictiveItemAnimations;


# direct methods
.method constructor <init>(Lo/supportsPredictiveItemAnimations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations;

    invoke-virtual {p1}, Lo/supportsPredictiveItemAnimations;->asInterface()V

    .line 260
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback;->ICustomTabsCallback:Lo/supportsPredictiveItemAnimations;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/getSpanGroupIndex;

    const/4 v0, 0x0

    .line 1005
    invoke-interface {p1, v0}, Lo/cachePreLayoutSpanMapping;->onMessageChannelReady(Lo/computeHorizontalScrollRange;)V

    return-void

    .line 260
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
