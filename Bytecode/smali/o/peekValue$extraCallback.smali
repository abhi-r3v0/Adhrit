.class final Lo/peekValue$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/peekValue;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/androidapp/gating/CreditScoreIntroFragment$animateToNext$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/peekValue;


# direct methods
.method constructor <init>(Lo/peekValue;)V
    .locals 0

    iput-object p1, p0, Lo/peekValue$extraCallback;->extraCallback:Lo/peekValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animator"

    .line 55
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 56
    iget-object v0, p0, Lo/peekValue$extraCallback;->extraCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->root_view:I

    invoke-virtual {v0, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/onChildrenLoaded;->setAlpha(F)V

    .line 57
    :cond_0
    iget-object v0, p0, Lo/peekValue$extraCallback;->extraCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->scoreValueText:I

    invoke-virtual {v0, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo/createFullSpanItemFromEnd;->setScaleX(F)V

    .line 58
    :cond_1
    iget-object v0, p0, Lo/peekValue$extraCallback;->extraCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->scoreValueText:I

    invoke-virtual {v0, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lo/createFullSpanItemFromEnd;->setScaleY(F)V

    .line 59
    :cond_2
    iget-object v0, p0, Lo/peekValue$extraCallback;->extraCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->fetchScoreLottie:I

    invoke-virtual {v0, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleX(F)V

    .line 60
    :cond_3
    iget-object v0, p0, Lo/peekValue$extraCallback;->extraCallback:Lo/peekValue;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->fetchScoreLottie:I

    invoke-virtual {v0, v1}, Lo/peekValue;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleY(F)V

    :cond_4
    return-void

    .line 55
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
