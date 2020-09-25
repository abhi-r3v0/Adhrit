.class public final Lo/ActionMenuView$ActionMenuChildView;
.super Lo/hasSupportDividerBeforeChildAt;
.source ""


# instance fields
.field private onPostMessage:Lo/generateOverflowButtonLayoutParams;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lo/setExpandActivityOverflowButtonDrawable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/hasSupportDividerBeforeChildAt;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lo/setExpandActivityOverflowButtonDrawable;)V

    .line 16
    new-instance p2, Lo/generateOverflowButtonLayoutParams;

    invoke-direct {p2, p1}, Lo/generateOverflowButtonLayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object p2, p0, Lo/ActionMenuView$ActionMenuChildView;->onPostMessage:Lo/generateOverflowButtonLayoutParams;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/dispatchPopulateAccessibilityEvent;)V
    .locals 1

    .line 6031
    iget-object v0, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6043
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p0}, Lo/ActionMenuView$ActionMenuChildView;->onMessageChannelReady()Lo/setExpandActivityOverflowButtonDrawable;

    move-result-object v0

    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->onMessageChannelReady()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 68
    invoke-virtual {p0}, Lo/ActionMenuView$ActionMenuChildView;->onMessageChannelReady()Lo/setExpandActivityOverflowButtonDrawable;

    move-result-object v0

    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->onNavigationEvent()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public final bridge synthetic onNavigationEvent()Lo/dispatchPopulateAccessibilityEvent;
    .locals 1

    .line 10
    invoke-super {p0}, Lo/hasSupportDividerBeforeChildAt;->onNavigationEvent()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Lo/dispatchPopulateAccessibilityEvent;
    .locals 13

    .line 23
    invoke-static {}, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lo/ActionMenuView$ActionMenuChildView;->onPostMessage:Lo/generateOverflowButtonLayoutParams;

    invoke-virtual {v1}, Lo/generateOverflowButtonLayoutParams;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 30
    invoke-virtual {p0, v5}, Lo/ActionMenuView$ActionMenuChildView;->onPostMessage(Landroid/view/View;)Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v8

    .line 31
    iget-object v9, p0, Lo/hasSupportDividerBeforeChildAt;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    .line 32
    iget-object v10, p0, Lo/hasSupportDividerBeforeChildAt;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v10

    .line 33
    iget-object v11, p0, Lo/hasSupportDividerBeforeChildAt;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    .line 35
    new-instance v11, Landroid/graphics/Rect;

    .line 1043
    iget-object v12, v8, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 35
    invoke-direct {v11, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {p0}, Lo/ActionMenuView$ActionMenuChildView;->onMessageChannelReady()Lo/setExpandActivityOverflowButtonDrawable;

    move-result-object v12

    invoke-interface {v12, v11}, Lo/setExpandActivityOverflowButtonDrawable;->extraCallback(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2035
    iget-object v11, v8, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 1051
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_0

    if-le v3, v9, :cond_2

    move-object v0, v8

    move v3, v9

    :cond_2
    if-le v2, v10, :cond_3

    move v4, v5

    move v2, v10

    goto :goto_0

    :cond_3
    if-ne v2, v10, :cond_0

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .line 3031
    :cond_4
    iget-object v1, v0, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_6

    .line 3043
    iget-object v1, v0, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 54
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 4043
    iget-object v1, v0, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 55
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5039
    iput-object v1, v0, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    :cond_6
    return-object v0
.end method
