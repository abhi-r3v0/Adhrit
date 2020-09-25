.class public final Lo/findFirstReferenceChild$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionFragment$clickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onNavigationEvent:Lo/findFirstReferenceChild;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChild;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x1b1288bc

    const-string v5, "collection"

    const-string v6, "farm_with_machine"

    const-string v7, "farm"

    const-string v8, "action"

    const-string v9, "collections_screen_cta"

    const/4 v10, 0x1

    if-eq v3, v4, :cond_9

    const v4, 0x35870a20

    if-eq v3, v4, :cond_6

    const v4, 0x7c0eb720

    if-eq v3, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v3, "category_title_click"

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 112
    instance-of v1, v2, Lo/getChildClosestToStart;

    if-eqz v1, :cond_c

    .line 113
    iget-object v1, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-static {v1}, Lo/findFirstReferenceChild;->asBinder(Lo/findFirstReferenceChild;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v1

    .line 10000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 10151
    iget-object v1, v1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 345
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 346
    check-cast v5, Lo/StaggeredGridLayoutManager;

    .line 114
    instance-of v7, v5, Lo/findReferenceChildClosestToEnd;

    if-eqz v7, :cond_1

    check-cast v5, Lo/findReferenceChildClosestToEnd;

    .line 11017
    iget-object v5, v5, Lo/findReferenceChildClosestToEnd;->onNavigationEvent:Ljava/lang/String;

    .line 114
    move-object v7, v2

    check-cast v7, Lo/getChildClosestToStart;

    .line 12007
    iget-object v7, v7, Lo/getChildClosestToStart;->extraCallback:Ljava/lang/String;

    .line 114
    invoke-static {v5, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    .line 116
    :goto_2
    iget-object v1, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    check-cast v2, Lo/getChildClosestToStart;

    .line 13007
    iget-object v3, v2, Lo/getChildClosestToStart;->extraCallback:Ljava/lang/String;

    .line 116
    invoke-static {v1, v3}, Lo/findFirstReferenceChild;->extraCallback(Lo/findFirstReferenceChild;Ljava/lang/String;)V

    if-eq v4, v6, :cond_5

    .line 134
    iget-object v1, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    .line 14000
    iget-object v1, v1, Lo/findFirstReferenceChild;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 134
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 135
    iget-object v1, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    .line 14256
    iget-object v1, v1, Lo/findFirstReferenceChild;->onMessageChannelReady:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_4

    const-string/jumbo v3, "rewardLinearLayoutManager"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 135
    :cond_4
    iget-object v3, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    .line 15000
    iget-object v3, v3, Lo/findFirstReferenceChild;->onPostMessage:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 135
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 137
    :cond_5
    iget-object v1, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-static {v1}, Lo/findFirstReferenceChild;->ICustomTabsCallback$Stub(Lo/findFirstReferenceChild;)Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    move-result-object v1

    .line 15007
    iget-object v2, v2, Lo/getChildClosestToStart;->extraCallback:Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v2}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 138
    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "section_select"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v9, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v3, "reward_card"

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 64
    instance-of v1, v2, Lo/getChildClosestToEnd;

    if-eqz v1, :cond_c

    .line 65
    move-object v1, v2

    check-cast v1, Lo/getChildClosestToEnd;

    .line 1042
    iget-object v2, v1, Lo/getChildClosestToEnd;->ICustomTabsCallback:Ljava/lang/String;

    .line 65
    invoke-static {v2, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 66
    iget-object v2, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-static {v2}, Lo/findFirstReferenceChild;->onPostMessage(Lo/findFirstReferenceChild;)Lo/getMoveDuration;

    move-result-object v11

    .line 2039
    iget-object v12, v1, Lo/getChildClosestToEnd;->onMessageChannelReady:Ljava/lang/String;

    .line 2041
    iget-object v2, v1, Lo/getChildClosestToEnd;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 3000
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lo/removeItemDecoration;

    .line 70
    new-instance v13, Lo/getStackFromEnd;

    .line 3040
    iget v2, v1, Lo/getChildClosestToEnd;->onNavigationEvent:I

    .line 70
    invoke-direct {v13, v10, v2}, Lo/getStackFromEnd;-><init>(II)V

    const/16 v16, 0x0

    const/16 v17, 0x10

    const-string v15, "collection"

    .line 66
    invoke-static/range {v11 .. v17}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lo/getStackFromEnd;Lo/removeItemDecoration;Ljava/lang/String;ZI)V

    goto :goto_3

    .line 3042
    :cond_7
    iget-object v2, v1, Lo/getChildClosestToEnd;->ICustomTabsCallback:Ljava/lang/String;

    .line 75
    invoke-static {v2, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 76
    iget-object v2, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-static {v2}, Lo/findFirstReferenceChild;->onPostMessage(Lo/findFirstReferenceChild;)Lo/getMoveDuration;

    move-result-object v2

    .line 4039
    iget-object v3, v1, Lo/getChildClosestToEnd;->onMessageChannelReady:Ljava/lang/String;

    .line 4041
    iget-object v4, v1, Lo/getChildClosestToEnd;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 5000
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->extraCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/removeItemDecoration;

    .line 76
    invoke-virtual {v2, v3, v4, v5}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Lo/removeItemDecoration;Ljava/lang/String;)V

    .line 82
    :cond_8
    :goto_3
    iget-object v2, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-static {v2}, Lo/findFirstReferenceChild;->ICustomTabsCallback$Stub(Lo/findFirstReferenceChild;)Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    move-result-object v2

    .line 5039
    iget-object v1, v1, Lo/getChildClosestToEnd;->onMessageChannelReady:Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 83
    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "reward_click"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {v9, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :cond_9
    const-string/jumbo v3, "viewAll"

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 88
    instance-of v1, v2, Lo/findLastPartiallyOrCompletelyInvisibleChild;

    if-eqz v1, :cond_c

    .line 89
    move-object v1, v2

    check-cast v1, Lo/findLastPartiallyOrCompletelyInvisibleChild;

    .line 6033
    iget-object v2, v1, Lo/findLastPartiallyOrCompletelyInvisibleChild;->onPostMessage:Ljava/lang/String;

    .line 89
    invoke-static {v2, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 90
    iget-object v2, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-static {v2}, Lo/findFirstReferenceChild;->onPostMessage(Lo/findFirstReferenceChild;)Lo/getMoveDuration;

    move-result-object v11

    .line 7030
    iget-object v12, v1, Lo/findLastPartiallyOrCompletelyInvisibleChild;->ICustomTabsCallback:Ljava/lang/String;

    .line 94
    new-instance v13, Lo/getStackFromEnd;

    const/4 v2, 0x3

    invoke-direct {v13, v10, v2}, Lo/getStackFromEnd;-><init>(II)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x10

    const-string v15, "collection"

    .line 90
    invoke-static/range {v11 .. v17}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lo/getStackFromEnd;Lo/removeItemDecoration;Ljava/lang/String;ZI)V

    goto :goto_4

    .line 7033
    :cond_a
    iget-object v2, v1, Lo/findLastPartiallyOrCompletelyInvisibleChild;->onPostMessage:Ljava/lang/String;

    .line 99
    invoke-static {v2, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 100
    iget-object v2, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-static {v2}, Lo/findFirstReferenceChild;->onPostMessage(Lo/findFirstReferenceChild;)Lo/getMoveDuration;

    move-result-object v2

    .line 8030
    iget-object v3, v1, Lo/findLastPartiallyOrCompletelyInvisibleChild;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v4, 0x0

    .line 100
    invoke-virtual {v2, v3, v4, v5}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Lo/removeItemDecoration;Ljava/lang/String;)V

    .line 106
    :cond_b
    :goto_4
    iget-object v2, v0, Lo/findFirstReferenceChild$onRelationshipValidationResult;->onNavigationEvent:Lo/findFirstReferenceChild;

    invoke-static {v2}, Lo/findFirstReferenceChild;->ICustomTabsCallback$Stub(Lo/findFirstReferenceChild;)Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    move-result-object v2

    .line 9030
    iget-object v1, v1, Lo/findLastPartiallyOrCompletelyInvisibleChild;->ICustomTabsCallback:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 107
    check-cast v1, Ljava/util/Map;

    const-string v2, "all_click"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v9, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_c
    :goto_5
    return-void
.end method
