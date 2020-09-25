.class public final Lo/stopInterceptRequestLayout$onTransact;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopInterceptRequestLayout;
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$updateTopHeight$1$2",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationCancel",
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
.field private synthetic extraCallback:Lo/stopInterceptRequestLayout;

.field private synthetic onNavigationEvent:Lo/toDebugString$onPostMessage;


# direct methods
.method constructor <init>(Lo/toDebugString$onPostMessage;Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$onTransact;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    iput-object p2, p0, Lo/stopInterceptRequestLayout$onTransact;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 493
    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 495
    invoke-super {p0, p1}, Lo/recalculatePositionOfItemAt;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 496
    iget-object p1, p0, Lo/stopInterceptRequestLayout$onTransact;->extraCallback:Lo/stopInterceptRequestLayout;

    iget-object v0, p0, Lo/stopInterceptRequestLayout$onTransact;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    iget v0, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 1036
    iput v0, p1, Lo/stopInterceptRequestLayout;->INotificationSideChannel$Default:I

    return-void
.end method
