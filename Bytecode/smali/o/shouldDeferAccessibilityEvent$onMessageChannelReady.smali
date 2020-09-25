.class public final Lo/shouldDeferAccessibilityEvent$onMessageChannelReady;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldDeferAccessibilityEvent;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsFragment$dismissAnimation$1$2",
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
.field private synthetic onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;


# direct methods
.method constructor <init>(Lo/shouldDeferAccessibilityEvent;)V
    .locals 0

    iput-object p1, p0, Lo/shouldDeferAccessibilityEvent$onMessageChannelReady;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    .line 446
    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lo/shouldDeferAccessibilityEvent$onMessageChannelReady;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 450
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$onMessageChannelReady;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Lo/shouldDeferAccessibilityEvent;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "backgroundView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$onMessageChannelReady;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p1}, Lo/shouldDeferAccessibilityEvent;->ICustomTabsService(Lo/shouldDeferAccessibilityEvent;)V

    :cond_0
    return-void
.end method
