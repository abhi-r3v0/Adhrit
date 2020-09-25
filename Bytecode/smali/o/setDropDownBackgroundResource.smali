.class final Lo/setDropDownBackgroundResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setOnDismissListener;


# instance fields
.field private onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/setDropDownBackgroundResource;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/ActivityChooserView$onMessageChannelReady;
    .locals 2

    .line 2018
    new-instance v0, Lo/setSupportBackgroundTintList$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setSupportBackgroundTintList$onNavigationEvent;-><init>(B)V

    return-object v0
.end method

.method public final extraCallback(Lo/dispatchPopulateAccessibilityEvent;)Landroid/graphics/Rect;
    .locals 4

    .line 1043
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-direct {v0, v2, v3, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final extraCallback()Lo/ActivityChooserView$onMessageChannelReady;
    .locals 2

    .line 3016
    new-instance v0, Lo/setChildFrame$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setChildFrame$onPostMessage;-><init>(B)V

    return-object v0
.end method

.method public final onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)Landroid/graphics/Rect;
    .locals 5

    .line 3043
    iget-object v0, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4035
    iget-object v3, p1, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lo/setDropDownBackgroundResource;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    if-nez v0, :cond_2

    iget-object v4, p0, Lo/setDropDownBackgroundResource;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 55
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    if-nez v0, :cond_4

    .line 5035
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/setDropDownBackgroundResource;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
