.class final Lo/showPopup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setOnDismissListener;


# instance fields
.field private extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lo/showPopup;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/ActivityChooserView$onMessageChannelReady;
    .locals 2

    .line 1017
    new-instance v0, Lo/tryOnMeasure$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/tryOnMeasure$extraCallback;-><init>(B)V

    return-object v0
.end method

.method public final extraCallback(Lo/dispatchPopulateAccessibilityEvent;)Landroid/graphics/Rect;
    .locals 4

    .line 2043
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->top:I

    :goto_2
    invoke-direct {v0, v2, v1, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final extraCallback()Lo/ActivityChooserView$onMessageChannelReady;
    .locals 2

    .line 2016
    new-instance v0, Lo/setBackgroundDrawable$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setBackgroundDrawable$onNavigationEvent;-><init>(B)V

    return-object v0
.end method

.method public final onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)Landroid/graphics/Rect;
    .locals 5

    .line 3043
    iget-object v0, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4035
    iget-object v3, p1, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 44
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lo/showPopup;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    if-nez v0, :cond_2

    iget-object v4, p0, Lo/showPopup;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 46
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    if-nez v0, :cond_4

    .line 5035
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/showPopup;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget p1, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    invoke-direct {v1, v3, v4, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
