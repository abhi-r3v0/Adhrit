.class public final Lo/StaggeredGridLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0016J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0018\u0010\u0017\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/widget/navigation/ViewPager2RecyclerViewLockable;",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
        "()V",
        "dx",
        "",
        "dy",
        "initialTouchX",
        "initialTouchY",
        "scrollPointerId",
        "scrollState",
        "onInterceptTouchEvent",
        "",
        "rv",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "e",
        "Landroid/view/MotionEvent;",
        "onRequestDisallowInterceptTouchEvent",
        "",
        "disallowIntercept",
        "onScrollStateChanged",
        "recyclerView",
        "newState",
        "onTouchEvent",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "rv"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onNavigationEvent:I

    .line 26
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->ICustomTabsCallback:I

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onMessageChannelReady:I

    goto :goto_0

    .line 30
    :cond_1
    iget p1, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onNavigationEvent:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ltz p1, :cond_3

    .line 31
    iget v2, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->extraCallback:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 32
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    .line 33
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 34
    iget p2, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->ICustomTabsCallback:I

    sub-int/2addr v2, p2

    iput v2, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onPostMessage:I

    .line 35
    iget p2, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onMessageChannelReady:I

    sub-int/2addr p1, p2

    iput p1, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onRelationshipValidationResult:I

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onNavigationEvent:I

    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->ICustomTabsCallback:I

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onMessageChannelReady:I

    :cond_3
    :goto_0
    return v0
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->extraCallback:I

    .line 48
    iput p2, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->extraCallback:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 51
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 52
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p2

    if-eq v0, p2, :cond_2

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onRelationshipValidationResult:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 55
    iget p2, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onPostMessage:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lo/StaggeredGridLayoutManager$LayoutParams;->onRelationshipValidationResult:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p2, v0, :cond_2

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_2
    return-void
.end method

.method public final onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "rv"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
