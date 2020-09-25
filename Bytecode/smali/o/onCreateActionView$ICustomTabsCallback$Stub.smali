.class public final Lo/onCreateActionView$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateActionView;
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dodola/bubblecloud/BubbleCloudView$getEnterAnim$2",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "bubblecloud_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onCreateActionView;


# direct methods
.method public constructor <init>(Lo/onCreateActionView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 617
    iput-object p1, p0, Lo/onCreateActionView$ICustomTabsCallback$Stub;->onPostMessage:Lo/onCreateActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 622
    iget-object p1, p0, Lo/onCreateActionView$ICustomTabsCallback$Stub;->onPostMessage:Lo/onCreateActionView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/onCreateActionView;->onNavigationEvent(Lo/onCreateActionView;I)V

    .line 623
    iget-object p1, p0, Lo/onCreateActionView$ICustomTabsCallback$Stub;->onPostMessage:Lo/onCreateActionView;

    invoke-static {p1, v0}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;I)V

    .line 625
    iget-object p1, p0, Lo/onCreateActionView$ICustomTabsCallback$Stub;->onPostMessage:Lo/onCreateActionView;

    invoke-static {p1}, Lo/onCreateActionView;->onNavigationEvent(Lo/onCreateActionView;)I

    move-result v0

    invoke-static {p1, v0}, Lo/onCreateActionView;->extraCallback(Lo/onCreateActionView;I)V

    .line 626
    iget-object p1, p0, Lo/onCreateActionView$ICustomTabsCallback$Stub;->onPostMessage:Lo/onCreateActionView;

    invoke-static {p1}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;)I

    move-result v0

    invoke-static {p1, v0}, Lo/onCreateActionView;->onMessageChannelReady(Lo/onCreateActionView;I)V

    return-void
.end method
