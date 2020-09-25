.class final Landroidx/appcompat/widget/ScrollingTabContainerView$onNavigationEvent;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final synthetic onPostMessage:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 0

    .line 527
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$onNavigationEvent;->onPostMessage:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 532
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$onNavigationEvent;->onPostMessage:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v0, v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 537
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$onNavigationEvent;->onPostMessage:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v0, v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ScrollingTabContainerView$onPostMessage;

    .line 1522
    iget-object p1, p1, Landroidx/appcompat/widget/ScrollingTabContainerView$onPostMessage;->extraCallback:Lo/onPostMessage$ICustomTabsCallback;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 548
    iget-object p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$onNavigationEvent;->onPostMessage:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$onNavigationEvent;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onPostMessage$ICustomTabsCallback;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Lo/onPostMessage$ICustomTabsCallback;Z)Landroidx/appcompat/widget/ScrollingTabContainerView$onPostMessage;

    move-result-object p2

    goto :goto_0

    .line 550
    :cond_0
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/widget/ScrollingTabContainerView$onPostMessage;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$onNavigationEvent;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onPostMessage$ICustomTabsCallback;

    .line 2414
    iput-object p1, p3, Landroidx/appcompat/widget/ScrollingTabContainerView$onPostMessage;->extraCallback:Lo/onPostMessage$ICustomTabsCallback;

    .line 2415
    invoke-virtual {p3}, Landroidx/appcompat/widget/ScrollingTabContainerView$onPostMessage;->extraCallback()V

    :goto_0
    return-object p2
.end method
