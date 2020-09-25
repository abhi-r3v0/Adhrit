.class public final Lo/PreferenceCategory$extraCommand;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PreferenceCategory;
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
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersFragment$setRecyclerViewScrollListener$1",
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
.field private synthetic onPostMessage:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lo/PreferenceCategory$extraCommand;->onPostMessage:Lo/PreferenceCategory;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 382
    iget-object p1, p0, Lo/PreferenceCategory$extraCommand;->onPostMessage:Lo/PreferenceCategory;

    .line 1159
    iget-object p1, p1, Lo/PreferenceCategory;->ICustomTabsCallback:Landroidx/recyclerview/widget/GridLayoutManager;

    const-string p2, "gridLayoutManager"

    if-nez p1, :cond_0

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    .line 383
    iget-object p3, p0, Lo/PreferenceCategory$extraCommand;->onPostMessage:Lo/PreferenceCategory;

    .line 2159
    iget-object p3, p3, Lo/PreferenceCategory;->ICustomTabsCallback:Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p3, :cond_1

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 383
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    add-int/lit8 p2, p2, 0x3

    if-le p2, p1, :cond_4

    .line 385
    iget-object p1, p0, Lo/PreferenceCategory$extraCommand;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    iget-object p2, p0, Lo/PreferenceCategory$extraCommand;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {p2}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p2

    .line 3032
    iget-object p2, p2, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 3320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object p3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eq p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 385
    :goto_0
    check-cast p2, Lo/onDetach$onRelationshipValidationResult;

    if-eqz p2, :cond_3

    .line 4081
    iget-object v0, p2, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    .line 385
    :cond_3
    invoke-virtual {p1, v0}, Lo/PreferenceGroup;->extraCallback(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
