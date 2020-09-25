.class public Lin/juspay/mystique/AccordionLayout;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final COLLAPSE:I = 0x0

.field private static final EXPAND:I = 0x1


# instance fields
.field private alphaDelta:F

.field private animationDuration:I

.field private animator:Landroid/animation/ValueAnimator;

.field private delta:F

.field private parallaxDelta:F

.field private parentScrollViewId:I

.field private postLayout:Z

.field private target:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    .line 3
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    const v0, 0x3f19999a    # 0.6f

    .line 5
    iput v0, p0, Lin/juspay/mystique/AccordionLayout;->parallaxDelta:F

    .line 7
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->alphaDelta:F

    const/16 p1, 0x12c

    .line 9
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->animationDuration:I

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->parentScrollViewId:I

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lin/juspay/mystique/AccordionLayout;->postLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    .line 18
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    const p2, 0x3f19999a    # 0.6f

    .line 20
    iput p2, p0, Lin/juspay/mystique/AccordionLayout;->parallaxDelta:F

    .line 22
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->alphaDelta:F

    const/16 p1, 0x12c

    .line 24
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->animationDuration:I

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->parentScrollViewId:I

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lin/juspay/mystique/AccordionLayout;->postLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    .line 33
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    const p2, 0x3f19999a    # 0.6f

    .line 35
    iput p2, p0, Lin/juspay/mystique/AccordionLayout;->parallaxDelta:F

    .line 37
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->alphaDelta:F

    const/16 p1, 0x12c

    .line 39
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->animationDuration:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->parentScrollViewId:I

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lin/juspay/mystique/AccordionLayout;->postLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 47
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    .line 48
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    const p2, 0x3f19999a    # 0.6f

    .line 50
    iput p2, p0, Lin/juspay/mystique/AccordionLayout;->parallaxDelta:F

    .line 52
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->alphaDelta:F

    const/16 p1, 0x12c

    .line 54
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->animationDuration:I

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->parentScrollViewId:I

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lin/juspay/mystique/AccordionLayout;->postLayout:Z

    return-void
.end method

.method static synthetic access$002(Lin/juspay/mystique/AccordionLayout;F)F
    .locals 0

    .line 1
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    return p1
.end method

.method static synthetic access$100(Lin/juspay/mystique/AccordionLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lin/juspay/mystique/AccordionLayout;->postLayout:Z

    return p0
.end method

.method static synthetic access$200(Lin/juspay/mystique/AccordionLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lin/juspay/mystique/AccordionLayout;->scrollParent()V

    return-void
.end method

.method private getRelativeTop(Landroid/view/View;Landroid/widget/ScrollView;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lin/juspay/mystique/AccordionLayout;->getRelativeTop(Landroid/view/View;Landroid/widget/ScrollView;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private scrollParent()V
    .locals 5

    .line 1
    iget v0, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Lin/juspay/mystique/AccordionLayout;->parentScrollViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lin/juspay/mystique/AccordionLayout;->parentScrollViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 11
    invoke-direct {p0, p0, v0}, Lin/juspay/mystique/AccordionLayout;->getRelativeTop(Landroid/view/View;Landroid/widget/ScrollView;)I

    move-result v3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    if-lt v3, v1, :cond_2

    if-le v4, v2, :cond_4

    :cond_2
    if-ge v3, v1, :cond_3

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_3
    sub-int v3, v4, v2

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 3
    iget p2, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    int-to-float v0, p1

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 7
    iget v2, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sub-int v3, p2, p1

    int-to-float v3, v3

    .line 10
    iget v4, p0, Lin/juspay/mystique/AccordionLayout;->parallaxDelta:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    iget v3, p0, Lin/juspay/mystique/AccordionLayout;->alphaDelta:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_2

    .line 12
    iget v4, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    mul-float v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 13
    iget v3, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 14
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lin/juspay/mystique/AccordionLayout;->postLayout:Z

    return-void
.end method

.method public setDefaultExpand(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    .line 2
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setExpand(Z)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1

    return-void

    .line 4
    :cond_1
    iput v2, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_5

    .line 9
    iget-object p1, p0, Lin/juspay/mystique/AccordionLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    :cond_2
    iget p1, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 13
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_3
    iget p1, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    iget v0, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    sub-float v2, p1, v0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    sub-float v2, v0, p1

    :cond_4
    iget p1, p0, Lin/juspay/mystique/AccordionLayout;->animationDuration:I

    int-to-float p1, p1

    mul-float v2, v2, p1

    float-to-int p1, v2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 17
    iget v1, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    aput v1, v0, v5

    iget v1, p0, Lin/juspay/mystique/AccordionLayout;->target:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/mystique/AccordionLayout;->animator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    iget-object p1, p0, Lin/juspay/mystique/AccordionLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    iput-boolean v5, p0, Lin/juspay/mystique/AccordionLayout;->postLayout:Z

    .line 22
    iget-object p1, p0, Lin/juspay/mystique/AccordionLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lin/juspay/mystique/AccordionLayout$a;

    invoke-direct {v0, p0}, Lin/juspay/mystique/AccordionLayout$a;-><init>(Lin/juspay/mystique/AccordionLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    iget-object p1, p0, Lin/juspay/mystique/AccordionLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iput v2, p0, Lin/juspay/mystique/AccordionLayout;->delta:F

    .line 40
    invoke-direct {p0}, Lin/juspay/mystique/AccordionLayout;->scrollParent()V

    return-void

    :cond_6
    const/16 p1, 0x8

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setExpandAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->alphaDelta:F

    return-void
.end method

.method public setExpandDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->animationDuration:I

    return-void
.end method

.method public setExpandParallax(F)V
    .locals 0

    .line 1
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->parallaxDelta:F

    return-void
.end method

.method public setScrollParent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lin/juspay/mystique/AccordionLayout;->parentScrollViewId:I

    return-void
.end method
