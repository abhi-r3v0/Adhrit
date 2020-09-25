.class public final Lo/setHasFixedSize$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setHasFixedSize;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/holders/LifestyleGroup1$2",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
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
.field private synthetic onPostMessage:Lo/setHasFixedSize;


# direct methods
.method constructor <init>(Lo/setHasFixedSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lo/setHasFixedSize$5;->onPostMessage:Lo/setHasFixedSize;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_7

    .line 78
    iget-object p1, p0, Lo/setHasFixedSize$5;->onPostMessage:Lo/setHasFixedSize;

    .line 1118
    iget-object p1, p1, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    .line 78
    instance-of p2, p1, Lo/ensureLayoutState;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/ensureLayoutState;

    if-eqz p1, :cond_7

    .line 2012
    iget-object p2, p1, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    const/16 v0, 0x9

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 2014
    iget-object v3, p1, Lo/ensureLayoutState;->onMessageChannelReady:Lo/getStackFromEnd;

    if-eqz v3, :cond_1

    .line 2122
    iget v3, v3, Lo/getStackFromEnd;->ICustomTabsCallback:I

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 84
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "reward_farm_card_position"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 4039
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    const-string v4, "NA"

    if-eqz v3, :cond_2

    .line 4080
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->onMessageChannelReady:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v4

    .line 5043
    :cond_3
    new-instance v5, Lo/addWrite;

    const-string v6, "entity_type"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x2

    .line 6031
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string v6, "card_template"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x3

    .line 7018
    iget-object v3, p1, Lo/ensureLayoutState;->onRelationshipValidationResult:Lo/updateLayoutStateToFillStart;

    .line 87
    invoke-interface {v3}, Lo/updateLayoutStateToFillStart;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "primary"

    .line 7043
    :cond_4
    new-instance v5, Lo/addWrite;

    const-string v6, "farm_id"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x4

    .line 8039
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v3, :cond_5

    .line 8082
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v3, :cond_5

    .line 8097
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v3, :cond_5

    .line 88
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 9043
    :cond_5
    new-instance v3, Lo/addWrite;

    const-string/jumbo v5, "reward_cred_value"

    invoke-direct {v3, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 10018
    iget-object p1, p1, Lo/ensureLayoutState;->onRelationshipValidationResult:Lo/updateLayoutStateToFillStart;

    .line 89
    invoke-interface {p1}, Lo/updateLayoutStateToFillStart;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "navigation"

    .line 10043
    :cond_6
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "source"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p1, 0x6

    .line 11000
    iget-object v2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeItemDecoration;

    .line 11396
    iget-object v2, v2, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    .line 12043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "reward_ID"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, p1

    const/4 p1, 0x7

    .line 13000
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/removeItemDecoration;

    .line 13397
    iget-object p2, p2, Lo/removeItemDecoration;->ICustomTabsCallback:Ljava/lang/String;

    .line 14043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "usage_id"

    invoke-direct {v2, v3, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, p1

    const/16 p1, 0x8

    .line 92
    iget-object p2, p0, Lo/setHasFixedSize$5;->onPostMessage:Lo/setHasFixedSize;

    invoke-static {p2}, Lo/setHasFixedSize;->onNavigationEvent(Lo/setHasFixedSize;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 15043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "total_cards"

    invoke-direct {v2, v3, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, p1

    const-string p1, "pairs"

    .line 83
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p2, "rewards_category_horizontal_swipe"

    .line 81
    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_7
    return-void
.end method
