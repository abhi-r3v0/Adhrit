.class abstract Lo/hasSupportDividerBeforeChildAt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onMenuItemClick;


# instance fields
.field private extraCallback:Lo/setExpandActivityOverflowButtonDrawable;

.field onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lo/setExpandActivityOverflowButtonDrawable;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lo/hasSupportDividerBeforeChildAt;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 14
    iput-object p2, p0, Lo/hasSupportDividerBeforeChildAt;->extraCallback:Lo/setExpandActivityOverflowButtonDrawable;

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()Lo/setExpandActivityOverflowButtonDrawable;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/hasSupportDividerBeforeChildAt;->extraCallback:Lo/setExpandActivityOverflowButtonDrawable;

    return-object v0
.end method

.method public onNavigationEvent()Lo/dispatchPopulateAccessibilityEvent;
    .locals 1

    .line 27
    invoke-static {}, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent()Lo/dispatchPopulateAccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method final onPostMessage(Landroid/view/View;)Lo/dispatchPopulateAccessibilityEvent;
    .locals 3

    .line 22
    new-instance v0, Lo/dispatchPopulateAccessibilityEvent;

    iget-object v1, p0, Lo/hasSupportDividerBeforeChildAt;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lo/hasSupportDividerBeforeChildAt;->extraCallback:Lo/setExpandActivityOverflowButtonDrawable;

    invoke-interface {v2, p1}, Lo/setExpandActivityOverflowButtonDrawable;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/dispatchPopulateAccessibilityEvent;-><init>(ILandroid/graphics/Rect;)V

    return-object v0
.end method
