.class public final Lo/updateRange$ICustomTabsCallback;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateRange;->ICustomTabsCallback(Landroid/view/View;ZLo/getServerTime;)V
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
        "com/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragmentKt$setVisibility$2$1",
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
.field private synthetic ICustomTabsCallback:Lo/getServerTime;

.field private synthetic onMessageChannelReady:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lo/getServerTime;)V
    .locals 0

    iput-object p1, p0, Lo/updateRange$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/View;

    iput-object p2, p0, Lo/updateRange$ICustomTabsCallback;->ICustomTabsCallback:Lo/getServerTime;

    .line 657
    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 659
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 660
    iget-object p1, p0, Lo/updateRange$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object p1, p0, Lo/updateRange$ICustomTabsCallback;->ICustomTabsCallback:Lo/getServerTime;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method
