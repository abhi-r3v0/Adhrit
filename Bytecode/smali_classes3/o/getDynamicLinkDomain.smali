.class Lo/getDynamicLinkDomain;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    const/4 p3, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 40
    new-instance p2, Lo/getDynamicLinkDomain$1;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/getDynamicLinkDomain$1;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 49
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
