.class Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:I

.field ICustomTabsCallback$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field asBinder:I

.field asInterface:I

.field extraCallback:I

.field newSession:Z

.field onMessageChannelReady:I

.field onNavigationEvent:Z

.field onPostMessage:I

.field onRelationshipValidationResult:I

.field onTransact:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2212
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->onNavigationEvent:Z

    const/4 v0, 0x0

    .line 2253
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->asBinder:I

    .line 2260
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x0

    .line 2279
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    return-void
.end method

.method private ICustomTabsCallback()Landroid/view/View;
    .locals 5

    .line 2316
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2318
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2319
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2320
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2323
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 3336
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->onNavigationEvent(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3338
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback:I

    goto :goto_1

    .line 3340
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3341
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback:I

    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method onNavigationEvent(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .line 2346
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2353
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2354
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eq v4, p1, :cond_0

    .line 2355
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2358
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->onMessageChannelReady:I

    mul-int v5, v5, v6

    if-ltz v5, :cond_0

    if-ge v5, v2, :cond_0

    move-object v1, v4

    if-eqz v5, :cond_1

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method final onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 2

    .line 2300
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2301
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2303
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 2304
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->onMessageChannelReady:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$extraCallback;->ICustomTabsCallback:I

    return-object p1
.end method
