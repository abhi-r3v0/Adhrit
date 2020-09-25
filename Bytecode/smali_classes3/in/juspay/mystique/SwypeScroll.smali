.class public Lin/juspay/mystique/SwypeScroll;
.super Landroid/widget/ScrollView;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private lastX:F

.field private lastY:F

.field private xDistance:F

.field private yDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 10
    iget v2, p0, Lin/juspay/mystique/SwypeScroll;->xDistance:F

    iget v3, p0, Lin/juspay/mystique/SwypeScroll;->lastX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lin/juspay/mystique/SwypeScroll;->xDistance:F

    .line 11
    iget v2, p0, Lin/juspay/mystique/SwypeScroll;->yDistance:F

    iget v3, p0, Lin/juspay/mystique/SwypeScroll;->lastY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lin/juspay/mystique/SwypeScroll;->yDistance:F

    .line 12
    iput v0, p0, Lin/juspay/mystique/SwypeScroll;->lastX:F

    .line 13
    iput v1, p0, Lin/juspay/mystique/SwypeScroll;->lastY:F

    .line 14
    iget v0, p0, Lin/juspay/mystique/SwypeScroll;->xDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    sget-object v0, Lin/juspay/mystique/SwypeLayout;->partialSwype:Lin/juspay/mystique/SwypeLayout;

    if-eqz v0, :cond_2

    sget-object v1, Lin/juspay/mystique/SwypeLayout;->activeLayout:Lin/juspay/mystique/SwypeLayout;

    if-eq v0, v1, :cond_2

    .line 17
    sget-object v0, Lin/juspay/mystique/SwypeLayout;->partialSwype:Lin/juspay/mystique/SwypeLayout;

    invoke-virtual {v0}, Lin/juspay/mystique/SwypeLayout;->reset()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lin/juspay/mystique/SwypeScroll;->yDistance:F

    iput v0, p0, Lin/juspay/mystique/SwypeScroll;->xDistance:F

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lin/juspay/mystique/SwypeScroll;->lastX:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lin/juspay/mystique/SwypeScroll;->lastY:F

    .line 36
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
