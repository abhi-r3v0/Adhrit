.class final Lo/notifyDataSetChanged$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0

    iput-object p1, p0, Lo/notifyDataSetChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/notifyDataSetChanged;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    .line 78
    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    const-string v2, "it"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1328
    iget-object v1, v0, Lo/notifyDataSetChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-virtual {v1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const v2, 0x7f0b0541

    invoke-virtual {v1, v2}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Lo/getViewPosition;

    .line 1614
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const v3, 0x7f0b0862

    invoke-virtual {v2, v3}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 1615
    instance-of v4, v2, Lo/getViewLayoutPosition;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1616
    check-cast v2, Lo/getViewLayoutPosition;

    .line 2462
    iget-object v2, v2, Lo/getViewLayoutPosition;->extraCallback:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;

    invoke-virtual {v2}, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub;->onMessageChannelReady()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_a

    .line 2622
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 2623
    instance-of v6, v4, Lo/getViewLayoutPosition;

    if-eqz v6, :cond_1

    .line 2624
    check-cast v4, Lo/getViewLayoutPosition;

    .line 4000
    iget-object v4, v4, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v4, :cond_1

    .line 4019
    iget-object v4, v4, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 4630
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 4631
    instance-of v3, v1, Lo/getViewLayoutPosition;

    if-eqz v3, :cond_2

    .line 4632
    check-cast v1, Lo/getViewLayoutPosition;

    .line 5470
    iget-object v5, v1, Lo/getViewLayoutPosition;->onNavigationEvent:Ljava/lang/String;

    :cond_2
    if-nez v5, :cond_3

    const-string v5, "NA"

    :cond_3
    const/4 v1, 0x4

    new-array v3, v1, [Lo/addWrite;

    .line 1335
    iget-object v6, v0, Lo/notifyDataSetChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/notifyDataSetChanged;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->menuText:I

    invoke-virtual {v6, v7}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v6}, Lo/createFullSpanItemFromEnd;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6043
    new-instance v7, Lo/addWrite;

    const-string v8, "icon_text"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v7, v3, v6

    .line 1336
    iget-object v7, v0, Lo/notifyDataSetChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v7}, Lo/notifyDataSetChanged;->ICustomTabsCallback(Lo/notifyDataSetChanged;)Lo/setThreshold$onPostMessage;

    move-result-object v7

    .line 7028
    iget-boolean v7, v7, Lo/setThreshold$onPostMessage;->onMessageChannelReady:Z

    if-eqz v7, :cond_4

    const-string v7, "expanded"

    goto :goto_2

    :cond_4
    const-string v7, "collapsed"

    .line 7043
    :goto_2
    new-instance v8, Lo/addWrite;

    const-string v9, "icon_state"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v8, v3, v7

    .line 8043
    new-instance v8, Lo/addWrite;

    const-string/jumbo v9, "section"

    invoke-direct {v8, v9, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x2

    aput-object v8, v3, v9

    .line 9043
    new-instance v8, Lo/addWrite;

    const-string/jumbo v10, "trigger_section"

    invoke-direct {v8, v10, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x3

    aput-object v8, v3, v10

    const-string v8, "pairs"

    .line 1334
    invoke-static {v3, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9088
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    invoke-static {v8, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "fab_icon_click"

    .line 1334
    invoke-static {v1, v8}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1340
    iget-object v1, v0, Lo/notifyDataSetChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v1}, Lo/notifyDataSetChanged;->onRelationshipValidationResult(Lo/notifyDataSetChanged;)Lo/RecyclerView$ChildDrawingOrderCallback;

    move-result-object v1

    check-cast v2, Ljava/lang/Iterable;

    .line 1456
    new-instance v3, Ljava/util/ArrayList;

    const-string v8, "$this$collectionSizeOrDefault"

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10039
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    .line 1456
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1457
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1458
    move-object v11, v8

    check-cast v11, Lo/isFullSpan;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 11010
    iget-object v8, v11, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 1341
    invoke-static {v5, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xdf

    invoke-static/range {v11 .. v20}, Lo/isFullSpan;->ICustomTabsCallback(Lo/isFullSpan;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Boolean;I)Lo/isFullSpan;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1459
    :cond_5
    check-cast v3, Ljava/util/List;

    .line 11030
    iput-object v3, v1, Lo/RecyclerView$ChildDrawingOrderCallback;->onMessageChannelReady:Ljava/util/List;

    .line 11031
    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v9, :cond_6

    const/4 v6, 0x1

    .line 11032
    :cond_6
    iget-object v2, v1, Lo/RecyclerView$ChildDrawingOrderCallback;->onNavigationEvent:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v9, 0x3

    :goto_4
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 11033
    iget-object v2, v1, Lo/RecyclerView$ChildDrawingOrderCallback;->onPostMessage:Landroid/view/View;

    .line 11124
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_9

    check-cast v8, Lo/isSessionReady$onNavigationEvent;

    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    .line 11125
    move-object v9, v8

    check-cast v9, Lo/isSessionReady$onNavigationEvent;

    .line 11034
    sget-object v10, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 13000
    sget-object v10, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/sortAndDedup$ICustomTabsCallback;

    .line 13043
    iget v10, v10, Lo/sortAndDedup$ICustomTabsCallback;->ICustomTabsCallback:I

    const-string v11, "Resources.getSystem()"

    if-eqz v6, :cond_8

    .line 14021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v11, 0x43020000    # 130.0f

    .line 14022
    invoke-static {v7, v11, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    goto :goto_5

    .line 15021
    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v11, 0x42700000    # 60.0f

    .line 15022
    invoke-static {v7, v11, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    :goto_5
    float-to-int v6, v6

    sub-int/2addr v10, v6

    .line 11034
    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11126
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16000
    iget-object v1, v1, Lo/RecyclerView$ChildDrawingOrderCallback;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onItemRangeRemoved;

    const-string/jumbo v2, "value"

    .line 11036
    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 16038
    invoke-virtual {v1, v3}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1343
    iget-object v1, v0, Lo/notifyDataSetChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v1}, Lo/notifyDataSetChanged;->onRelationshipValidationResult(Lo/notifyDataSetChanged;)Lo/RecyclerView$ChildDrawingOrderCallback;

    move-result-object v1

    const-string v2, "currentMenu"

    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17110
    iget-object v2, v1, Lo/RecyclerView$ChildDrawingOrderCallback;->onPostMessage:Landroid/view/View;

    new-instance v3, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;

    invoke-direct {v3, v1, v4, v5}, Lo/RecyclerView$ChildDrawingOrderCallback$extraCallback;-><init>(Lo/RecyclerView$ChildDrawingOrderCallback;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 11124
    :cond_9
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type androidx.drawerlayout.widget.DrawerLayout.LayoutParams"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_a
    :goto_6
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1

    .line 1328
    :cond_b
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.tabholder.TabHolderFragment"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
