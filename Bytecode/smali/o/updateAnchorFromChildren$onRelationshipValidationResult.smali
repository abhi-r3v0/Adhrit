.class public final Lo/updateAnchorFromChildren$onRelationshipValidationResult;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateAnchorFromChildren;
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
        "com/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimBaseFragment$setRecyclerViewScrollListener$1",
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
.field private synthetic onPostMessage:Lo/updateAnchorFromChildren;


# direct methods
.method constructor <init>(Lo/updateAnchorFromChildren;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lo/updateAnchorFromChildren$onRelationshipValidationResult;->onPostMessage:Lo/updateAnchorFromChildren;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 170
    iget-object p1, p0, Lo/updateAnchorFromChildren$onRelationshipValidationResult;->onPostMessage:Lo/updateAnchorFromChildren;

    .line 1081
    iget-object p1, p1, Lo/updateAnchorFromChildren;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string p2, "linearLayoutManager"

    if-nez p1, :cond_0

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    .line 171
    iget-object p3, p0, Lo/updateAnchorFromChildren$onRelationshipValidationResult;->onPostMessage:Lo/updateAnchorFromChildren;

    .line 2081
    iget-object p3, p3, Lo/updateAnchorFromChildren;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p3, :cond_1

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 171
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    add-int/lit8 p2, p2, 0x3

    if-le p2, p1, :cond_2

    .line 173
    iget-object p1, p0, Lo/updateAnchorFromChildren$onRelationshipValidationResult;->onPostMessage:Lo/updateAnchorFromChildren;

    .line 3000
    iget-object p1, p1, Lo/updateAnchorFromChildren;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/updateAnchorFromPendingData;

    .line 3152
    iget-boolean p2, p1, Lo/updateAnchorFromPendingData;->onPostMessage:Z

    if-nez p2, :cond_2

    .line 3153
    iget p2, p1, Lo/updateAnchorFromPendingData;->extraCallback:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lo/updateAnchorFromPendingData;->extraCallback:I

    .line 3154
    invoke-virtual {p1}, Lo/updateAnchorFromPendingData;->extraCallback()V

    :cond_2
    return-void
.end method
