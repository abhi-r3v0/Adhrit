.class final Lo/peekMenu$2;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/peekMenu;->ICustomTabsCallback(Landroid/content/Context;ILo/dispatchPopulateAccessibilityEvent;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/dispatchPopulateAccessibilityEvent;

.field private synthetic onPostMessage:Lo/peekMenu;


# direct methods
.method constructor <init>(Lo/peekMenu;Landroid/content/Context;Lo/dispatchPopulateAccessibilityEvent;II)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/peekMenu$2;->onPostMessage:Lo/peekMenu;

    iput-object p3, p0, Lo/peekMenu$2;->onNavigationEvent:Lo/dispatchPopulateAccessibilityEvent;

    iput p4, p0, Lo/peekMenu$2;->onMessageChannelReady:I

    const/16 p1, 0x96

    iput p1, p0, Lo/peekMenu$2;->ICustomTabsCallback:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 33
    iget-object p1, p0, Lo/peekMenu$2;->onNavigationEvent:Lo/dispatchPopulateAccessibilityEvent;

    .line 1035
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 35
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lo/peekMenu$2;->onMessageChannelReady:I

    if-le v1, p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 41
    iget-object p2, p0, Lo/peekMenu$2;->onPostMessage:Lo/peekMenu;

    .line 2014
    iget-object p2, p2, Lo/peekMenu;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 41
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p2

    .line 42
    iget-object v0, p0, Lo/peekMenu$2;->onPostMessage:Lo/peekMenu;

    .line 3014
    iget-object v0, v0, Lo/peekMenu;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 42
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, p2

    .line 47
    iget p2, p0, Lo/peekMenu$2;->ICustomTabsCallback:I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
