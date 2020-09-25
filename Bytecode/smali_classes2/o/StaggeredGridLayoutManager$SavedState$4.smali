.class public final Lo/StaggeredGridLayoutManager$SavedState$4;
.super Lo/getCustomActions$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/widget/navigation/CredNavigationView$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageScrolled",
        "",
        "position",
        "",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
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
.field private synthetic onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;


# direct methods
.method constructor <init>(Lo/StaggeredGridLayoutManager$SavedState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    invoke-direct {p0}, Lo/getCustomActions$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 5

    .line 60
    invoke-super {p0, p1}, Lo/getCustomActions$onNavigationEvent;->onMessageChannelReady(I)V

    .line 61
    iget-object v0, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lo/StaggeredGridLayoutManager$SavedState;->onNavigationEvent(Lo/StaggeredGridLayoutManager$SavedState;Ljava/lang/String;II)V

    .line 62
    iget-object v0, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    .line 2101
    iget-object v3, v0, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady:Ljava/util/List;

    const-string v4, "$this$getOrNull"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const-string v4, "$this$lastIndex"

    .line 2266
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-gt p1, v4, :cond_0

    .line 2266
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2101
    :cond_0
    check-cast v1, Lo/isFullSpan;

    if-eqz v1, :cond_3

    .line 2103
    sget v3, Lo/preferLastSpan$ICustomTabsCallback;->toolBar:I

    invoke-virtual {v0, v3}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    const-string v4, "toolBar"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 4016
    iget-object v1, v1, Lo/isFullSpan;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    .line 2104
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    .line 4136
    iput v1, v3, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    .line 5098
    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->appBar:I

    invoke-virtual {v0, v1}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5136
    iput v0, v3, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    goto :goto_0

    .line 2103
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    invoke-static {v0}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(Lo/StaggeredGridLayoutManager$SavedState;)Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5209
    iget-object v0, v0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;

    if-eqz v0, :cond_4

    .line 63
    iget-object v1, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    .line 6037
    iget-object v1, v1, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady:Ljava/util/List;

    .line 63
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isFullSpan;

    invoke-interface {v0, p1}, Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;->ICustomTabsCallback(Lo/isFullSpan;)V

    :cond_4
    return-void
.end method

.method public final onPostMessage(IFI)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2, p3}, Lo/getCustomActions$onNavigationEvent;->onPostMessage(IFI)V

    .line 68
    iget-object p3, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    invoke-static {p3}, Lo/StaggeredGridLayoutManager$SavedState;->extraCallback(Lo/StaggeredGridLayoutManager$SavedState;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 69
    iget-object p3, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->tabListGroup:I

    invoke-virtual {p3, v0}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/setOverflowIcon;

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-virtual {p3, v0}, Lo/setOverflowIcon;->extraCallback(F)V

    .line 70
    iget-object p3, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->menuTabHorizontalLayout:I

    invoke-virtual {p3, v0}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lo/StaggeredGridLayoutManager$SavedState$4;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    invoke-static {v0, p1, p2}, Lo/StaggeredGridLayoutManager$SavedState;->onNavigationEvent(Lo/StaggeredGridLayoutManager$SavedState;IF)F

    move-result p1

    float-to-int p1, p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method
