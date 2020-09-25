.class public final Lo/setTitleMarginBottom$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginBottom;->onCreateAnimator(IZI)Landroid/animation/Animator;
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/NewOnboardAddCardFragment$onCreateAnimator$1$2",
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
.field private synthetic ICustomTabsCallback:Lo/setTitleMarginBottom;


# direct methods
.method constructor <init>(Lo/setTitleMarginBottom;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 307
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    invoke-static {p1}, Lo/setTitleMarginBottom;->ICustomTabsCallback$Stub(Lo/setTitleMarginBottom;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 308
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 1151
    iget-object p1, p1, Lo/setTitleMarginBottom;->ICustomTabsCallback:Lo/stopLoading;

    if-nez p1, :cond_0

    const-string v0, "addCardView"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 308
    :cond_0
    invoke-interface {p1}, Lo/stopLoading;->asInterface()V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 314
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 1217
    iget-object p1, p1, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_0
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 1218
    iget-object p1, p1, Lo/setTitleMarginBottom;->onNavigationEvent:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_1
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    invoke-static {p1}, Lo/setTitleMarginBottom;->ICustomTabsCallback$Stub(Lo/setTitleMarginBottom;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 318
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 1219
    iget-object p1, p1, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 318
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_2
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 2217
    iget-object p1, p1, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 319
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 320
    :cond_3
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 2219
    iget-object p1, p1, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 321
    :cond_4
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 3217
    iget-object p1, p1, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 322
    :cond_5
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 3218
    iget-object p1, p1, Lo/setTitleMarginBottom;->onNavigationEvent:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 323
    :cond_6
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 4217
    iget-object p1, p1, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    const v0, 0x3f28f5c3    # 0.66f

    if-eqz p1, :cond_7

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 324
    :cond_7
    iget-object p1, p0, Lo/setTitleMarginBottom$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    .line 5217
    iget-object p1, p1, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_8
    return-void
.end method
