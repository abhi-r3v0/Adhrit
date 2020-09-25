.class public Lin/juspay/mystique/SwypeLayout;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwypeLayout"

.field public static activeLayout:Lin/juspay/mystique/SwypeLayout;

.field public static partialSwype:Lin/juspay/mystique/SwypeLayout;


# instance fields
.field private didDisplace:Z

.field private leftEdge:I

.field private mContent:Landroid/view/View;

.field private mDisplaceX:F

.field private mEnabled:Z

.field private mLeftOption:Landroid/view/View;

.field private mRightOption:Landroid/view/View;

.field private mX:F

.field private rightEdge:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lin/juspay/mystique/SwypeLayout;->mX:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lin/juspay/mystique/SwypeLayout;->leftEdge:I

    const/16 v1, 0xfa

    .line 4
    iput v1, p0, Lin/juspay/mystique/SwypeLayout;->rightEdge:I

    .line 5
    iput p1, p0, Lin/juspay/mystique/SwypeLayout;->mDisplaceX:F

    .line 6
    iput-boolean v0, p0, Lin/juspay/mystique/SwypeLayout;->didDisplace:Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    .line 9
    iput-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mLeftOption:Landroid/view/View;

    .line 10
    iput-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mRightOption:Landroid/view/View;

    .line 12
    iput-boolean v0, p0, Lin/juspay/mystique/SwypeLayout;->mEnabled:Z

    return-void
.end method

.method public static clear()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lin/juspay/mystique/SwypeLayout;->activeLayout:Lin/juspay/mystique/SwypeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lin/juspay/mystique/SwypeLayout;->reset()V

    .line 3
    sput-object v1, Lin/juspay/mystique/SwypeLayout;->activeLayout:Lin/juspay/mystique/SwypeLayout;

    .line 5
    :cond_0
    sget-object v0, Lin/juspay/mystique/SwypeLayout;->partialSwype:Lin/juspay/mystique/SwypeLayout;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lin/juspay/mystique/SwypeLayout;->reset()V

    .line 7
    sput-object v1, Lin/juspay/mystique/SwypeLayout;->partialSwype:Lin/juspay/mystique/SwypeLayout;

    :cond_1
    return-void
.end method

.method private handleSwype(FZ)V
    .locals 8

    .line 1
    iget v0, p0, Lin/juspay/mystique/SwypeLayout;->leftEdge:I

    if-nez v0, :cond_0

    iget v0, p0, Lin/juspay/mystique/SwypeLayout;->rightEdge:I

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lin/juspay/mystique/SwypeLayout;->leftEdge:I

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 6
    iget v2, p0, Lin/juspay/mystique/SwypeLayout;->mX:F

    sub-float/2addr p1, v2

    .line 7
    iget v2, p0, Lin/juspay/mystique/SwypeLayout;->mDisplaceX:F

    add-float/2addr v2, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_1

    .line 10
    iget v0, p0, Lin/juspay/mystique/SwypeLayout;->rightEdge:I

    int-to-float v0, v0

    neg-float v2, v2

    const/4 v1, 0x1

    :cond_1
    cmpl-float v4, v2, v0

    if-lez v4, :cond_2

    move v2, v0

    :cond_2
    if-eqz p2, :cond_3

    div-float/2addr v2, v0

    float-to-double v4, v2

    const-wide v6, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 22
    :cond_4
    :goto_0
    sget-object v2, Lin/juspay/mystique/SwypeLayout;->partialSwype:Lin/juspay/mystique/SwypeLayout;

    if-eqz v2, :cond_5

    if-eq v2, p0, :cond_5

    .line 23
    invoke-virtual {v2}, Lin/juspay/mystique/SwypeLayout;->reset()V

    .line 26
    :cond_5
    sput-object p0, Lin/juspay/mystique/SwypeLayout;->partialSwype:Lin/juspay/mystique/SwypeLayout;

    if-eqz v1, :cond_6

    neg-float v0, v0

    .line 32
    :cond_6
    iget v1, p0, Lin/juspay/mystique/SwypeLayout;->mDisplaceX:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_7

    const/high16 v2, -0x3e600000    # -20.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 33
    :cond_7
    iput-boolean p1, p0, Lin/juspay/mystique/SwypeLayout;->didDisplace:Z

    .line 34
    sget-object p1, Lin/juspay/mystique/SwypeLayout;->activeLayout:Lin/juspay/mystique/SwypeLayout;

    if-eqz p1, :cond_8

    if-eq p1, p0, :cond_8

    .line 35
    invoke-virtual {p1}, Lin/juspay/mystique/SwypeLayout;->reset()V

    .line 36
    sput-object v4, Lin/juspay/mystique/SwypeLayout;->activeLayout:Lin/juspay/mystique/SwypeLayout;

    :cond_8
    if-eqz p2, :cond_a

    .line 41
    iput v0, p0, Lin/juspay/mystique/SwypeLayout;->mDisplaceX:F

    .line 42
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lo/skipToPrevious;

    invoke-direct {p2}, Lo/skipToPrevious;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    cmpl-float p1, v0, v3

    if-eqz p1, :cond_9

    .line 44
    sput-object p0, Lin/juspay/mystique/SwypeLayout;->activeLayout:Lin/juspay/mystique/SwypeLayout;

    .line 46
    :cond_9
    sput-object v4, Lin/juspay/mystique/SwypeLayout;->partialSwype:Lin/juspay/mystique/SwypeLayout;

    return-void

    .line 48
    :cond_a
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private processClick(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_3

    cmpg-float v2, p1, v0

    if-ltz v2, :cond_3

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_3

    .line 9
    iget v2, p0, Lin/juspay/mystique/SwypeLayout;->mDisplaceX:F

    cmpl-float v3, v2, v0

    if-nez v3, :cond_0

    .line 10
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void

    :cond_0
    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    .line 11
    iget v2, p0, Lin/juspay/mystique/SwypeLayout;->rightEdge:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 12
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mRightOption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void

    .line 13
    :cond_1
    iget v1, p0, Lin/juspay/mystique/SwypeLayout;->mDisplaceX:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    iget v0, p0, Lin/juspay/mystique/SwypeLayout;->leftEdge:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 14
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mLeftOption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void

    .line 16
    :cond_2
    invoke-virtual {p0}, Lin/juspay/mystique/SwypeLayout;->reset()V

    :cond_3
    return-void
.end method

.method private tagChildren()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    .line 7
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lin/juspay/mystique/SwypeLayout;->mLeftOption:Landroid/view/View;

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lin/juspay/mystique/SwypeLayout;->mRightOption:Landroid/view/View;

    if-eq v3, v4, :cond_2

    .line 9
    :cond_1
    iput-object v0, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    .line 10
    iput-object v2, p0, Lin/juspay/mystique/SwypeLayout;->mLeftOption:Landroid/view/View;

    .line 11
    iput-object v3, p0, Lin/juspay/mystique/SwypeLayout;->mRightOption:Landroid/view/View;

    .line 12
    invoke-virtual {p0}, Lin/juspay/mystique/SwypeLayout;->reset()V

    :cond_2
    return v1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lin/juspay/mystique/SwypeLayout;->mEnabled:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lin/juspay/mystique/SwypeLayout;->tagChildren()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    .line 5
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 6
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mLeftOption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p5, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 7
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mRightOption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    iget-object p3, p0, Lin/juspay/mystique/SwypeLayout;->mRightOption:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 8
    iget-object p1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1, v2}, Lin/juspay/mystique/SwypeLayout;->handleSwype(FZ)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0, v1}, Lin/juspay/mystique/SwypeLayout;->handleSwype(FZ)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lin/juspay/mystique/SwypeLayout;->mX:F

    .line 13
    iget-boolean v0, p0, Lin/juspay/mystique/SwypeLayout;->didDisplace:Z

    if-eqz v0, :cond_1

    .line 14
    iput-boolean v2, p0, Lin/juspay/mystique/SwypeLayout;->didDisplace:Z

    return v2

    .line 17
    :cond_1
    invoke-direct {p0, p1}, Lin/juspay/mystique/SwypeLayout;->processClick(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lin/juspay/mystique/SwypeLayout;->mX:F

    :cond_3
    :goto_0
    return v1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lin/juspay/mystique/SwypeLayout;->mDisplaceX:F

    .line 2
    iget-object v1, p0, Lin/juspay/mystique/SwypeLayout;->mLeftOption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lin/juspay/mystique/SwypeLayout;->leftEdge:I

    .line 3
    iget-object v1, p0, Lin/juspay/mystique/SwypeLayout;->mRightOption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lin/juspay/mystique/SwypeLayout;->rightEdge:I

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 7
    :cond_0
    iget-object v1, p0, Lin/juspay/mystique/SwypeLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public setSwypeEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lin/juspay/mystique/SwypeLayout;->mEnabled:Z

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lin/juspay/mystique/SwypeLayout;->reset()V

    .line 4
    :cond_0
    iput-boolean p1, p0, Lin/juspay/mystique/SwypeLayout;->mEnabled:Z

    return-void
.end method
