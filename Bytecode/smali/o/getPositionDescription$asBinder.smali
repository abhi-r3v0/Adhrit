.class public final Lo/getPositionDescription$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPositionDescription;
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
        "com/dreamplug/androidapp/gating/CredProtectFragment$onActivationUI$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field private synthetic ICustomTabsCallback:Lo/getPositionDescription;


# direct methods
.method constructor <init>(Lo/getPositionDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lo/getPositionDescription$asBinder;->ICustomTabsCallback:Lo/getPositionDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 423
    iget-object p1, p0, Lo/getPositionDescription$asBinder;->ICustomTabsCallback:Lo/getPositionDescription;

    .line 1000
    iget-object p1, p1, Lo/getPositionDescription;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getValue;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1475
    iget-object p1, p1, Lo/getValue;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 424
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    iget-object v1, p0, Lo/getPositionDescription$asBinder;->ICustomTabsCallback:Lo/getPositionDescription;

    .line 2000
    iget-object v1, v1, Lo/getPositionDescription;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getValue;

    if-eqz v1, :cond_1

    .line 2475
    iget-object v0, v1, Lo/getValue;->ICustomTabsCallback:Ljava/lang/String;

    .line 424
    :cond_1
    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :cond_2
    iget-object p1, p0, Lo/getPositionDescription$asBinder;->ICustomTabsCallback:Lo/getPositionDescription;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/getPositionDescription;->onNavigationEvent(Z)V

    .line 431
    :goto_1
    sget-object p1, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance p1, Lo/moveView;

    const-string v0, "cred_protect"

    invoke-direct {p1, v0}, Lo/moveView;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
