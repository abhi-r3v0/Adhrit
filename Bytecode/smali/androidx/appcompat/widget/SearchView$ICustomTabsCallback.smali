.class Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;
.super Landroid/view/TouchDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Rect;

.field private final extraCallback:Landroid/graphics/Rect;

.field private final onMessageChannelReady:Landroid/view/View;

.field private final onNavigationEvent:Landroid/graphics/Rect;

.field private final onPostMessage:I

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1

    .line 1765
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1766
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onPostMessage:I

    .line 1767
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onNavigationEvent:Landroid/graphics/Rect;

    .line 1768
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->extraCallback:Landroid/graphics/Rect;

    .line 1769
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 1770
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onPostMessage(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1771
    iput-object p3, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1775
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1776
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->extraCallback:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1777
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->extraCallback:Landroid/graphics/Rect;

    iget v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onPostMessage:I

    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 1778
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    const/4 v6, 0x3

    if-eq v2, v6, :cond_0

    goto :goto_2

    .line 1806
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onTransact:Z

    .line 1807
    iput-boolean v5, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onTransact:Z

    goto :goto_0

    .line 1798
    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onTransact:Z

    if-eqz v2, :cond_2

    .line 1800
    iget-object v6, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->extraCallback:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    :goto_0
    move v4, v2

    :goto_1
    const/4 v2, 0x1

    goto :goto_3

    .line 1791
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1792
    iput-boolean v4, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onTransact:Z

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    if-eqz v2, :cond_5

    .line 1811
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1815
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/View;

    .line 1816
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    .line 1815
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_4

    .line 1819
    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1822
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_6
    return v5
.end method
