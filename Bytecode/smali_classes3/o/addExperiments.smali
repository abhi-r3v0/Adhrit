.class public abstract Lo/addExperiments;
.super Lo/removeExperiments;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/removeExperiments<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field public extraCallback:I

.field public final onNavigationEvent:Landroid/graphics/Rect;

.field private onPostMessage:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lo/removeExperiments;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/addExperiments;->onNavigationEvent:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/addExperiments;->onPostMessage:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lo/addExperiments;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lo/removeExperiments;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/addExperiments;->onNavigationEvent:Landroid/graphics/Rect;

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/addExperiments;->onPostMessage:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lo/addExperiments;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public extraCallback(Landroid/view/View;)I
    .locals 0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method protected final onMessageChannelReady()I
    .locals 1

    .line 186
    iget v0, p0, Lo/addExperiments;->ICustomTabsCallback:I

    return v0
.end method

.method public onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_4

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 68
    invoke-virtual {p0, v2}, Lo/addExperiments;->onNavigationEvent(Ljava/util/List;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 70
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p5

    if-lez p5, :cond_1

    .line 72
    invoke-static {v2}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1401
    iget-object v3, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {v3}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v4

    .line 76
    invoke-virtual {v3}, Lo/getVolumeAttributes;->onNavigationEvent()I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr p5, v4

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p5

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lo/addExperiments;->extraCallback(Landroid/view/View;)I

    move-result v3

    add-int/2addr p5, v3

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p5, v2

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    :cond_3
    const/high16 v0, -0x80000000

    .line 92
    :goto_1
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 99
    invoke-virtual/range {v1 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onNavigationEvent(Landroid/view/View;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method protected abstract onNavigationEvent(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method protected final onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 9

    .line 113
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lo/addExperiments;->onNavigationEvent(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 119
    iget-object v6, p0, Lo/addExperiments;->onNavigationEvent:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v7

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    .line 120
    invoke-virtual {v6, v3, v4, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2401
    iget-object v3, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    if-eqz v3, :cond_0

    .line 128
    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {p2}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 133
    iget p1, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Lo/getVolumeAttributes;->onPostMessage()I

    move-result v4

    add-int/2addr p1, v4

    iput p1, v6, Landroid/graphics/Rect;->left:I

    .line 134
    iget p1, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Lo/getVolumeAttributes;->ICustomTabsCallback()I

    move-result v3

    sub-int/2addr p1, v3

    iput p1, v6, Landroid/graphics/Rect;->right:I

    .line 137
    :cond_0
    iget-object p1, p0, Lo/addExperiments;->onPostMessage:Landroid/graphics/Rect;

    .line 138
    iget v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->ICustomTabsCallback:I

    if-nez v2, :cond_1

    const v2, 0x800033

    const v3, 0x800033

    goto :goto_0

    :cond_1
    move v3, v2

    .line 140
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object v7, p1

    move v8, p3

    .line 138
    invoke-static/range {v3 .. v8}, Lo/onQueueChanged;->extraCallback(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 4166
    iget p3, p0, Lo/addExperiments;->extraCallback:I

    if-nez p3, :cond_2

    goto :goto_1

    .line 4168
    :cond_2
    invoke-virtual {p0, v0}, Lo/addExperiments;->onNavigationEvent(Landroid/view/View;)F

    move-result p3

    iget v2, p0, Lo/addExperiments;->extraCallback:I

    int-to-float v3, v2

    mul-float p3, p3, v3

    float-to-int p3, p3

    if-gez p3, :cond_3

    goto :goto_1

    :cond_3
    if-le p3, v2, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, p3

    .line 148
    :goto_1
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    invoke-virtual {p2, p3, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 149
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lo/addExperiments;->ICustomTabsCallback:I

    return-void

    .line 152
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lo/removeExperiments;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 153
    iput v1, p0, Lo/addExperiments;->ICustomTabsCallback:I

    return-void
.end method
