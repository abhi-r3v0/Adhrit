.class public final Lo/setMinimumHeight;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007J\u0012\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/LottieStateView;",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "lastFrame",
        "animateTo",
        "",
        "targetFrame",
        "setContentDescription",
        "resId",
        "setFrame",
        "frame",
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
.field private onMessageChannelReady:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/setMinimumHeight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/setMinimumHeight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p3, Lo/setMinimumHeight$5;

    invoke-direct {p3, p0}, Lo/setMinimumHeight$5;-><init>(Lo/setMinimumHeight;)V

    check-cast p3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p3, 0x1

    new-array p3, p3, [I

    const v0, 0x1010273

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1068
    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lo/setMinimumHeight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/setMinimumHeight;I)V
    .locals 0

    .line 11
    iput p1, p0, Lo/setMinimumHeight;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 45
    :cond_0
    iget v0, p0, Lo/setMinimumHeight;->onMessageChannelReady:I

    if-eq v0, p1, :cond_4

    const/4 v1, 0x0

    if-le v0, p1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    neg-float v0, v0

    .line 47
    :goto_0
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 52
    iget v0, p0, Lo/setMinimumHeight;->onMessageChannelReady:I

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    neg-float v0, v0

    .line 54
    :goto_1
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 59
    iget v0, p0, Lo/setMinimumHeight;->onMessageChannelReady:I

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 61
    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void

    .line 63
    :cond_4
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    return-void
.end method

.method public final setFrame(I)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 36
    iput p1, p0, Lo/setMinimumHeight;->onMessageChannelReady:I

    return-void
.end method
