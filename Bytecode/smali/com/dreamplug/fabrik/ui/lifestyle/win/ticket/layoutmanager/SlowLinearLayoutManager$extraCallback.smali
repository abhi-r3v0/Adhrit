.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$extraCallback;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0014J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$smoothScrollToPosition$smoothScroller$1",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "calculateSpeedPerPixel",
        "",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "updateActionForInterimTarget",
        "",
        "action",
        "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;",
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
.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$extraCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-float p1, p1

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$extraCallback;->normalize(Landroid/graphics/PointF;)V

    .line 36
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 38
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 39
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    const/16 v0, 0x2710

    .line 40
    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$extraCallback;->calculateTimeForScrolling(I)I

    move-result v0

    .line 44
    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 45
    iget v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 46
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$extraCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    .line 44
    invoke-virtual {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    .line 31
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 32
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$extraCallback;->stop()V

    return-void
.end method
