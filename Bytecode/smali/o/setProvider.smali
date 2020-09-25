.class final Lo/setProvider;
.super Lo/getSupportBackgroundTintMode;
.source ""


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lo/getSupportBackgroundTintMode;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 24
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 2

    .line 16
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 12
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method
