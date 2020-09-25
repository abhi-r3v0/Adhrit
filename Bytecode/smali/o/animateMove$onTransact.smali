.class public final Lo/animateMove$onTransact;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateMove;
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
        "com/dreamplug/fabrik/ui/currency/CredCurrencyLedgerFragment$setRecyclerViewScrollListener$1",
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
.field private synthetic ICustomTabsCallback:Lo/animateMove;


# direct methods
.method constructor <init>(Lo/animateMove;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lo/animateMove$onTransact;->ICustomTabsCallback:Lo/animateMove;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 120
    iget-object p1, p0, Lo/animateMove$onTransact;->ICustomTabsCallback:Lo/animateMove;

    invoke-static {p1}, Lo/animateMove;->ICustomTabsCallback(Lo/animateMove;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    .line 121
    iget-object p2, p0, Lo/animateMove$onTransact;->ICustomTabsCallback:Lo/animateMove;

    invoke-static {p2}, Lo/animateMove;->ICustomTabsCallback(Lo/animateMove;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    add-int/lit8 p2, p2, 0x3

    if-le p2, p1, :cond_0

    .line 123
    iget-object p1, p0, Lo/animateMove$onTransact;->ICustomTabsCallback:Lo/animateMove;

    .line 1000
    iget-object p1, p1, Lo/animateMove;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/animateAddImpl;

    .line 1247
    iget-boolean p2, p1, Lo/animateAddImpl;->onTransact:Z

    if-nez p2, :cond_0

    .line 1248
    iget p2, p1, Lo/animateAddImpl;->onRelationshipValidationResult:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lo/animateAddImpl;->onRelationshipValidationResult:I

    .line 1249
    invoke-virtual {p1}, Lo/animateAddImpl;->onPostMessage()V

    :cond_0
    return-void
.end method
