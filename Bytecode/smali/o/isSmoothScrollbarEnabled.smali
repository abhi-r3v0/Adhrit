.class public final Lo/isSmoothScrollbarEnabled;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lo/createOrientationHelpers;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000O\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0013\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bJ\u0018\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002J\u0014\u0010 \u001a\u00020\u00182\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/ListDataManager;",
        "VH",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "adapter",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter;",
        "(Landroidx/recyclerview/widget/RecyclerView;Lcom/dreamplug/utils/list/DiffAwareAdapter;)V",
        "getAdapter",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter;",
        "layoutManager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "getLayoutManager",
        "()Landroidx/recyclerview/widget/LinearLayoutManager;",
        "list",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "onScrollListener",
        "com/dreamplug/fabrik/ui/lifestyle/ListDataManager$onScrollListener$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/ListDataManager$onScrollListener$1;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "checkAndPivotList",
        "",
        "isCyclic",
        "cyclic",
        "",
        "pivotList",
        "index",
        "",
        "size",
        "updateList",
        "newList",
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
.field private final ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final extraCallback:Landroidx/recyclerview/widget/RecyclerView;

.field public final onMessageChannelReady:Lo/hasGapsToFix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/hasGapsToFix<",
            "TVH;>;"
        }
    .end annotation
.end field

.field onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/StaggeredGridLayoutManager;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/isSmoothScrollbarEnabled$onPostMessage;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lo/hasGapsToFix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lo/hasGapsToFix<",
            "TVH;>;)V"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isSmoothScrollbarEnabled;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lo/isSmoothScrollbarEnabled;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5070
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast p1, Ljava/util/List;

    .line 12
    iput-object p1, p0, Lo/isSmoothScrollbarEnabled;->onNavigationEvent:Ljava/util/List;

    .line 28
    new-instance p1, Lo/isSmoothScrollbarEnabled$onPostMessage;

    invoke-direct {p1, p0}, Lo/isSmoothScrollbarEnabled$onPostMessage;-><init>(Lo/isSmoothScrollbarEnabled;)V

    iput-object p1, p0, Lo/isSmoothScrollbarEnabled;->onPostMessage:Lo/isSmoothScrollbarEnabled$onPostMessage;

    return-void

    .line 11
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onMessageChannelReady(II)V
    .locals 3

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 54
    div-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    if-ge p1, p2, :cond_0

    add-int/2addr p1, p2

    .line 56
    iget-object p2, p0, Lo/isSmoothScrollbarEnabled;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p2, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 57
    iget-object v1, p0, Lo/isSmoothScrollbarEnabled;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 58
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    .line 62
    iget-object p2, p0, Lo/isSmoothScrollbarEnabled;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p2, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 63
    iget-object v1, p0, Lo/isSmoothScrollbarEnabled;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 64
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :goto_0
    invoke-direct {p0, v0}, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady(Ljava/util/List;)V

    return-void
.end method

.method private onMessageChannelReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/StaggeredGridLayoutManager;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newList"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lo/isSmoothScrollbarEnabled;->onNavigationEvent:Ljava/util/List;

    .line 16
    iget-object v0, p0, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 1038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 5

    .line 38
    iget-object v0, p0, Lo/isSmoothScrollbarEnabled;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 40
    iget-object v1, p0, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    .line 3000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 3151
    iget-object v1, v1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    const-string v2, "$this$getOrNull"

    .line 41
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    const-string v2, "$this$lastIndex"

    .line 3266
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4210
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_0

    .line 3266
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    check-cast v0, Lo/StaggeredGridLayoutManager;

    .line 43
    iget-object v1, p0, Lo/isSmoothScrollbarEnabled;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 44
    iget-object v2, p0, Lo/isSmoothScrollbarEnabled;->onNavigationEvent:Ljava/util/List;

    const-string v3, "$this$indexOf"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4289
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 46
    div-int/lit8 v4, v1, 0x3

    if-le v3, v4, :cond_1

    shl-int/lit8 v4, v1, 0x1

    div-int/2addr v4, v2

    if-lt v3, v4, :cond_2

    .line 47
    :cond_1
    invoke-direct {p0, v0, v1}, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady(II)V

    :cond_2
    return-void
.end method
