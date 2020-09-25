.class public final Lo/findFirstReferenceChild$warmup;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstReferenceChild;-><init>()V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionFragment$scrollListener$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/findFirstReferenceChild;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChild;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 262
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 263
    iget-object p2, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    invoke-static {p2}, Lo/findFirstReferenceChild;->onMessageChannelReady(Lo/findFirstReferenceChild;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-ge v0, p2, :cond_9

    .line 264
    iget-object v2, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    invoke-static {v2}, Lo/findFirstReferenceChild;->onMessageChannelReady(Lo/findFirstReferenceChild;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "child"

    .line 265
    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_8

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 266
    iget-object v4, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    .line 1256
    iget-object v4, v4, Lo/findFirstReferenceChild;->onMessageChannelReady:Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string/jumbo v5, "rewardLinearLayoutManager"

    if-nez v4, :cond_0

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v6

    .line 267
    iget-object v6, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    .line 2256
    iget-object v6, v6, Lo/findFirstReferenceChild;->onMessageChannelReady:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v6, :cond_1

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 267
    :cond_1
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v6

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v3

    .line 269
    iget-object v3, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    .line 3256
    iget-object v3, v3, Lo/findFirstReferenceChild;->onMessageChannelReady:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v3, :cond_2

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 269
    :cond_2
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    sget-object v5, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v5

    .line 3320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v7, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v5, v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v1

    .line 269
    :goto_1
    check-cast v5, Landroid/view/WindowInsets;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    sub-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x1

    .line 270
    div-int/lit8 v3, v3, 0x3

    .line 271
    iget-object v5, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    invoke-static {v5}, Lo/findFirstReferenceChild;->asBinder(Lo/findFirstReferenceChild;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v5

    .line 5000
    iget-object v5, v5, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/checkSpanForGap;

    .line 5151
    iget-object v5, v5, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 271
    iget-object v7, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    invoke-static {v7}, Lo/findFirstReferenceChild;->onMessageChannelReady(Lo/findFirstReferenceChild;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    const-string v7, "$this$getOrNull"

    invoke-static {v5, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v2, :cond_5

    const-string v7, "$this$lastIndex"

    .line 5266
    invoke-static {v5, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v2, v7, :cond_5

    .line 5266
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 271
    :cond_5
    check-cast v1, Lo/StaggeredGridLayoutManager;

    .line 274
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 275
    instance-of v3, v1, Lo/findFirstVisibleChildClosestToEnd;

    if-eqz v3, :cond_7

    .line 276
    check-cast v1, Lo/findFirstVisibleChildClosestToEnd;

    invoke-interface {v1}, Lo/findFirstVisibleChildClosestToEnd;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 265
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ge p3, v0, :cond_a

    .line 284
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 285
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v1, p3

    move p3, p2

    goto :goto_4

    .line 288
    :cond_b
    iget-object p1, p0, Lo/findFirstReferenceChild$warmup;->onMessageChannelReady:Lo/findFirstReferenceChild;

    invoke-static {p1, v1}, Lo/findFirstReferenceChild;->onMessageChannelReady(Lo/findFirstReferenceChild;Ljava/lang/String;)V

    return-void
.end method
