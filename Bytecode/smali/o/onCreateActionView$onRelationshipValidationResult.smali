.class public final Lo/onCreateActionView$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "animation",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onCreateActionView;


# direct methods
.method public constructor <init>(Lo/onCreateActionView;)V
    .locals 0

    iput-object p1, p0, Lo/onCreateActionView$onRelationshipValidationResult;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "animation"

    .line 611
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    mul-float v0, v0, v1

    iget-object v1, p0, Lo/onCreateActionView$onRelationshipValidationResult;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v1}, Lo/onCreateActionView;->extraCallback(Lo/onCreateActionView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lo/onCreateActionView$onRelationshipValidationResult;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v2}, Lo/onCreateActionView;->extraCallback(Lo/onCreateActionView;)F

    move-result v2

    neg-float v2, v2

    invoke-static {v0, v1, v2}, Lo/onCreateActionView;->ICustomTabsCallback(FFF)F

    move-result v0

    .line 612
    iget-object v1, p0, Lo/onCreateActionView$onRelationshipValidationResult;->onMessageChannelReady:Lo/onCreateActionView;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;FFF)V

    .line 613
    iget-object v0, p0, Lo/onCreateActionView$onRelationshipValidationResult;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;F)V

    .line 614
    iget-object p1, p0, Lo/onCreateActionView$onRelationshipValidationResult;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 611
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
