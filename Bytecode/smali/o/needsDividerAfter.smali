.class public final Lo/needsDividerAfter;
.super Lo/hasSupportDividerBeforeChildAt;
.source ""


# instance fields
.field private onMessageChannelReady:Lo/generateOverflowButtonLayoutParams;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lo/setExpandActivityOverflowButtonDrawable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/hasSupportDividerBeforeChildAt;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lo/setExpandActivityOverflowButtonDrawable;)V

    .line 16
    new-instance p2, Lo/generateOverflowButtonLayoutParams;

    invoke-direct {p2, p1}, Lo/generateOverflowButtonLayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object p2, p0, Lo/needsDividerAfter;->onMessageChannelReady:Lo/generateOverflowButtonLayoutParams;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/dispatchPopulateAccessibilityEvent;)V
    .locals 1

    .line 5031
    iget-object v0, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5043
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {p0}, Lo/needsDividerAfter;->onMessageChannelReady()Lo/setExpandActivityOverflowButtonDrawable;

    move-result-object v0

    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->ICustomTabsCallback()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 63
    invoke-virtual {p0}, Lo/needsDividerAfter;->onMessageChannelReady()Lo/setExpandActivityOverflowButtonDrawable;

    move-result-object v0

    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->onPostMessage()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

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
    .locals 11

    .line 23
    invoke-static {}, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lo/needsDividerAfter;->onMessageChannelReady:Lo/generateOverflowButtonLayoutParams;

    invoke-virtual {v1}, Lo/generateOverflowButtonLayoutParams;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 29
    invoke-virtual {p0, v4}, Lo/needsDividerAfter;->onPostMessage(Landroid/view/View;)Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v7

    .line 30
    iget-object v8, p0, Lo/hasSupportDividerBeforeChildAt;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 31
    iget-object v9, p0, Lo/hasSupportDividerBeforeChildAt;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    .line 33
    new-instance v9, Landroid/graphics/Rect;

    .line 1043
    iget-object v10, v7, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 33
    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 35
    invoke-virtual {p0}, Lo/needsDividerAfter;->onMessageChannelReady()Lo/setExpandActivityOverflowButtonDrawable;

    move-result-object v10

    invoke-interface {v10, v9}, Lo/setExpandActivityOverflowButtonDrawable;->extraCallback(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2035
    iget-object v9, v7, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 1051
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_0

    if-le v3, v8, :cond_2

    move-object v0, v7

    move v3, v8

    :cond_2
    if-le v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    .line 3031
    :cond_3
    iget-object v1, v0, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_5

    .line 3043
    iget-object v1, v0, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 48
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4039
    iput-object v1, v0, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    :cond_5
    return-object v0
.end method
