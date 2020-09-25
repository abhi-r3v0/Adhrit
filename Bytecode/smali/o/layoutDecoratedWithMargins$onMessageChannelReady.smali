.class final Lo/layoutDecoratedWithMargins$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/layoutDecoratedWithMargins;->onRelationshipValidationResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private synthetic onMessageChannelReady:Lo/layoutDecoratedWithMargins;


# direct methods
.method constructor <init>(Lo/layoutDecoratedWithMargins;)V
    .locals 0

    iput-object p1, p0, Lo/layoutDecoratedWithMargins$onMessageChannelReady;->onMessageChannelReady:Lo/layoutDecoratedWithMargins;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animation"

    .line 238
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 239
    iget-object v0, p0, Lo/layoutDecoratedWithMargins$onMessageChannelReady;->onMessageChannelReady:Lo/layoutDecoratedWithMargins;

    .line 1040
    iget-object v0, v0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Lo/updateSpecWithExtra;->setPivotX(F)V

    .line 240
    iget-object v0, p0, Lo/layoutDecoratedWithMargins$onMessageChannelReady;->onMessageChannelReady:Lo/layoutDecoratedWithMargins;

    .line 2040
    iget-object v0, v0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    .line 240
    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setScaleX(F)V

    .line 241
    iget-object v0, p0, Lo/layoutDecoratedWithMargins$onMessageChannelReady;->onMessageChannelReady:Lo/layoutDecoratedWithMargins;

    .line 3040
    iget-object v0, v0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    .line 241
    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setScaleY(F)V

    return-void

    .line 238
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
