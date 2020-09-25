.class public Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super Lo/addExperiments;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1894
    invoke-direct {p0}, Lo/addExperiments;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1897
    invoke-direct {p0, p1, p2}, Lo/addExperiments;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1899
    sget-object v0, Lo/toStringMap$newSession;->ScrollingViewBehavior_Layout:[I

    .line 1900
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1901
    sget p2, Lo/toStringMap$newSession;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v0, 0x0

    .line 1902
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 3196
    iput p2, p0, Lo/addExperiments;->extraCallback:I

    .line 1903
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static onPostMessage(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/appbar/AppBarLayout;"
        }
    .end annotation

    .line 1994
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1995
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1996
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_0

    .line 1997
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1892
    invoke-super {p0, p1, p2, p3}, Lo/addExperiments;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic extraCallback()I
    .locals 1

    .line 1892
    invoke-super {p0}, Lo/addExperiments;->extraCallback()I

    move-result v0

    return v0
.end method

.method public final extraCallback(Landroid/view/View;)I
    .locals 1

    .line 2005
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 2006
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result p1

    return p1

    .line 2008
    :cond_0
    invoke-super {p0, p1}, Lo/addExperiments;->extraCallback(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic extraCallback(I)Z
    .locals 0

    .line 1892
    invoke-super {p0, p1}, Lo/addExperiments;->extraCallback(I)Z

    move-result p1

    return p1
.end method

.method public final extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 3946
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 4952
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 3947
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3950
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 3953
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    .line 5203
    iget p1, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    add-int/2addr v0, p1

    .line 3955
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->onMessageChannelReady()I

    move-result p1

    add-int/2addr v0, p1

    .line 6166
    iget p1, p0, Lo/addExperiments;->extraCallback:I

    if-nez p1, :cond_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 6168
    :cond_0
    invoke-virtual {p0, p3}, Lo/addExperiments;->onNavigationEvent(Landroid/view/View;)F

    move-result p1

    iget v2, p0, Lo/addExperiments;->extraCallback:I

    int-to-float v2, v2

    mul-float p1, p1, v2

    float-to-int p1, p1

    iget v2, p0, Lo/addExperiments;->extraCallback:I

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    if-le p1, v2, :cond_2

    move p1, v2

    :cond_2
    :goto_1
    sub-int/2addr v0, p1

    .line 3951
    invoke-static {p2, v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    .line 8013
    :cond_3
    instance-of p1, p3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_4

    .line 8014
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 8877
    iget-boolean p1, p3, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    if-eqz p1, :cond_4

    .line 8016
    invoke-virtual {p3, p2}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback(Z)Z

    :cond_4
    return v1
.end method

.method public final bridge synthetic onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1892
    invoke-super/range {p0 .. p6}, Lo/addExperiments;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Landroid/view/View;)F
    .locals 4

    .line 1962
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1963
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 1964
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result v0

    .line 1965
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback()I

    move-result v2

    .line 8984
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 9952
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 8985
    instance-of v3, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    if-eqz v3, :cond_0

    .line 8986
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 10798
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v3

    iget p1, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    add-int/2addr v3, p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    add-int p1, v0, v3

    if-gt p1, v2, :cond_1

    return v1

    :cond_1
    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    :cond_2
    return v1
.end method

.method public final synthetic onNavigationEvent(Ljava/util/List;)Landroid/view/View;
    .locals 0

    .line 1892
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->onPostMessage(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1909
    instance-of p1, p2, Lcom/google/android/material/appbar/AppBarLayout;

    return p1
.end method

.method public final onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    .line 1926
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMessageChannelReady(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->onPostMessage(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1929
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1931
    iget-object p2, p0, Lo/addExperiments;->onNavigationEvent:Landroid/graphics/Rect;

    .line 1932
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1934
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    xor-int/lit8 p2, p4, 0x1

    .line 1937
    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return p1

    :cond_0
    return v1
.end method
