.class public final Lo/scrollHorizontallyBy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field final ICustomTabsCallback$Stub:Landroid/view/View;

.field final ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompatApi21$CallbackProxy;

.field final ICustomTabsService:Landroidx/fragment/app/Fragment;

.field final asBinder:Lo/createFullSpanItemFromEnd;

.field final asInterface:Lo/createFullSpanItemFromEnd;

.field final extraCallback:Lo/createFullSpanItemFromEnd;

.field final getInterfaceDescriptor:Lo/getSpanIndex;

.field final newSession:Lo/isSameListener;

.field final onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

.field final onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

.field final onPostMessage:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

.field final onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

.field onTransact:Lo/updateDxDy$onMessageChannelReady;

.field private requestPostMessageChannel:I

.field private final updateVisuals:Lo/setRecycleChildrenOnDetach;

.field final warmup:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/getSpanIndex;Lo/setRecycleChildrenOnDetach;Landroidx/fragment/app/Fragment;)V
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lendingViewModel"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedViewModel"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    iput-object p3, p0, Lo/scrollHorizontallyBy;->ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p4, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    iput-object p5, p0, Lo/scrollHorizontallyBy;->updateVisuals:Lo/setRecycleChildrenOnDetach;

    iput-object p6, p0, Lo/scrollHorizontallyBy;->ICustomTabsService:Landroidx/fragment/app/Fragment;

    .line 39
    sget p3, Lo/getSwitchMinWidth$onPostMessage;->tenureGroupExpanded:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    iput-object p1, p0, Lo/scrollHorizontallyBy;->onPostMessage:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 40
    iget-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->tenureGroupCollapsed:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    iput-object p1, p0, Lo/scrollHorizontallyBy;->onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 41
    iget-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->customPlan:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/scrollHorizontallyBy;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 42
    iget-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->tenureList:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/scrollHorizontallyBy;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    iget-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->title1:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/scrollHorizontallyBy;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 44
    iget-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->subTitle1:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/scrollHorizontallyBy;->asInterface:Lo/createFullSpanItemFromEnd;

    .line 45
    iget-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->tvEmi:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/scrollHorizontallyBy;->asBinder:Lo/createFullSpanItemFromEnd;

    .line 46
    iget-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->tvTenure:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/scrollHorizontallyBy;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    .line 47
    iget-object p1, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->tenureLayout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/scrollHorizontallyBy;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 48009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p3, "Resources.getSystem()"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p4, 0x1

    const/high16 p5, 0x41f00000    # 30.0f

    .line 48010
    invoke-static {p4, p5, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 48
    iput p1, p0, Lo/scrollHorizontallyBy;->requestPostMessageChannel:I

    .line 51
    new-instance p1, Lo/scrollHorizontallyBy$ICustomTabsCallback;

    invoke-direct {p1, p2}, Lo/scrollHorizontallyBy$ICustomTabsCallback;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 51
    iput-object p2, p0, Lo/scrollHorizontallyBy;->newSession:Lo/isSameListener;

    .line 49009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const p2, 0x41d9999a    # 27.2f

    .line 49010
    invoke-static {p4, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 60
    iget-object v0, p0, Lo/scrollHorizontallyBy;->ICustomTabsCallback$Stub:Landroid/view/View;

    const-string/jumbo p2, "tenureLayout"

    invoke-static {v0, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/scrollHorizontallyBy;->warmup:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06007e

    invoke-static {p2, p3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 p2, 0x8

    new-array v5, p2, [F

    const/4 p2, 0x0

    aput p1, v5, p2

    aput p1, v5, p4

    const/4 p3, 0x2

    aput p1, v5, p3

    const/4 p4, 0x3

    aput p1, v5, p4

    const/4 p1, 0x0

    const/4 p4, 0x4

    aput p1, v5, p4

    const/4 p4, 0x5

    aput p1, v5, p4

    const/4 p4, 0x6

    aput p1, v5, p4

    const/4 p4, 0x7

    aput p1, v5, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x2f

    invoke-static/range {v0 .. v7}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 63
    iget-object p1, p0, Lo/scrollHorizontallyBy;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo p4, "tenureList"

    invoke-static {p1, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50000
    iget-object p4, p0, Lo/scrollHorizontallyBy;->newSession:Lo/isSameListener;

    invoke-interface {p4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo/repositionToWrapContentIfNecessary;

    .line 63
    check-cast p4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    iget-object p1, p0, Lo/scrollHorizontallyBy;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    new-instance p4, Lo/setGapStrategy;

    .line 68
    new-instance v3, Lo/getGapStrategy;

    iget p5, p0, Lo/scrollHorizontallyBy;->requestPostMessageChannel:I

    div-int/2addr p5, p3

    invoke-direct {v3, p2, p2, p2, p5}, Lo/getGapStrategy;-><init>(IIII)V

    .line 69
    new-instance v4, Lo/getGapStrategy;

    iget p3, p0, Lo/scrollHorizontallyBy;->requestPostMessageChannel:I

    invoke-direct {v4, p2, p2, p3, p3}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, p4

    .line 66
    invoke-direct/range {v0 .. v5}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p4, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 65
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 72
    new-instance p2, Lo/scrollHorizontallyBy$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/scrollHorizontallyBy$onMessageChannelReady;-><init>(Lo/scrollHorizontallyBy;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 6

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 21079
    iget-object v1, v1, Lo/getSpanIndex;->getDefaultImpl:Ljava/util/ArrayList;

    .line 121
    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 291
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    new-instance v2, Lo/scrollHorizontallyBy$extraCallback;

    invoke-direct {v2}, Lo/scrollHorizontallyBy$extraCallback;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    const-string v4, "$this$sortWith"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "comparator"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22042
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    const/4 v2, 0x0

    .line 294
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 295
    check-cast v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    .line 23021
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback:Ljava/lang/Double;

    .line 124
    iget-object v5, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 23054
    iget-object v5, v5, Lo/getSpanIndex;->getInterfaceDescriptor:Ljava/lang/Double;

    .line 124
    invoke-static {v4, v5}, Lo/access$3000;->extraCallback(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 126
    :goto_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 127
    sget-object v1, Lo/obtainVelocityTracker;->onNavigationEvent:Lo/obtainVelocityTracker$extraCallback;

    iget-object v1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 24029
    iget-object v1, v1, Lo/getSpanIndex;->onMessageChannelReady:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 24320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 24321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v4

    .line 127
    :goto_2
    check-cast v1, Lo/onChildDrawOver;

    if-eqz v1, :cond_4

    .line 25011
    iget-object v1, v1, Lo/onChildDrawOver;->onMessageChannelReady:Lo/clearView;

    if-eqz v1, :cond_4

    .line 26009
    iget-object v4, v1, Lo/clearView;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    :cond_4
    const-string v1, "emiData"

    .line 127
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26295
    new-instance v1, Lo/obtainVelocityTracker;

    invoke-direct {v1}, Lo/obtainVelocityTracker;-><init>()V

    .line 26296
    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    new-instance v5, Lo/obtainVelocityTracker$ICustomTabsCallback;

    invoke-direct {v5, v2, v0, v4}, Lo/obtainVelocityTracker$ICustomTabsCallback;-><init>(ILjava/util/ArrayList;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;)V

    check-cast v5, Landroid/os/Parcelable;

    const-string v0, "extra"

    .line 27016
    invoke-static {v3, v5, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lo/scrollHorizontallyBy;->ICustomTabsService:Landroidx/fragment/app/Fragment;

    const/16 v2, 0x68

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 129
    iget-object v0, p0, Lo/scrollHorizontallyBy;->ICustomTabsService:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 27464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const-string v0, "emi"

    .line 130
    invoke-virtual {v1, v2, v0}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 50267
    iget-object p1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 50268
    iget-object p1, p1, Lo/getSpanIndex;->IPostMessageService:Lo/setActive;

    .line 50265
    sget-object v0, Lo/onAnchorReady$onNavigationEvent;->extraCallback:Lo/onAnchorReady$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 25

    move-object/from16 v0, p0

    .line 87
    iget-object v1, v0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 1079
    iget-object v1, v1, Lo/getSpanIndex;->getDefaultImpl:Ljava/util/ArrayList;

    .line 87
    check-cast v1, Ljava/util/List;

    .line 271
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 272
    check-cast v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    .line 2023
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    if-nez v4, :cond_0

    move/from16 v7, p1

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move/from16 v7, p1

    if-ne v7, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    .line 88
    :goto_3
    iget-object v1, v0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 2079
    iget-object v1, v1, Lo/getSpanIndex;->getDefaultImpl:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    .line 3018
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    if-eqz v3, :cond_4

    .line 3144
    iget-boolean v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->ICustomTabsCallback:Z

    if-ne v3, v6, :cond_4

    .line 90
    new-instance v3, Lo/postDispatchSwipe;

    .line 4024
    iget-object v8, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->asInterface:Ljava/lang/Integer;

    .line 5021
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback:Ljava/lang/Double;

    .line 91
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 5023
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 91
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 6018
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    .line 6147
    iget-object v11, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onMessageChannelReady:Ljava/lang/String;

    .line 7018
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    .line 7146
    iget-boolean v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->onNavigationEvent:Z

    .line 92
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    .line 8018
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    .line 8149
    iget-object v14, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    const/16 v15, 0x40

    move-object v7, v3

    .line 90
    invoke-direct/range {v7 .. v15}, Lo/postDispatchSwipe;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;I)V

    goto :goto_5

    .line 94
    :cond_4
    new-instance v3, Lo/postDispatchSwipe;

    .line 9024
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->asInterface:Ljava/lang/Integer;

    .line 10021
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback:Ljava/lang/Double;

    .line 95
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 10023
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 95
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x1

    .line 11018
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    if-eqz v7, :cond_5

    .line 11149
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    move-object/from16 v23, v7

    const/16 v24, 0x20

    const-string v20, "#26e4dad2"

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 94
    invoke-direct/range {v16 .. v24}, Lo/postDispatchSwipe;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;I)V

    .line 12018
    :goto_5
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;

    if-eqz v1, :cond_a

    .line 12144
    iget-boolean v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$CardData;->ICustomTabsCallback:Z

    if-nez v1, :cond_a

    .line 99
    iget-object v1, v0, Lo/scrollHorizontallyBy;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string v4, "customPlan"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f130189

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, v0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 13078
    iget-object v1, v1, Lo/getSpanIndex;->notify:Ljava/util/List;

    .line 278
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 279
    check-cast v7, Lo/postDispatchSwipe;

    .line 14030
    iget-boolean v8, v7, Lo/postDispatchSwipe;->onRelationshipValidationResult:Z

    if-eqz v8, :cond_6

    .line 15030
    iget-boolean v7, v7, Lo/postDispatchSwipe;->onPostMessage:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_7

    :cond_6
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, -0x1

    :goto_8
    if-eq v4, v5, :cond_9

    .line 102
    iget-object v1, v0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 15078
    iget-object v1, v1, Lo/getSpanIndex;->notify:Ljava/util/List;

    .line 102
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 107
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v4, v0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 16078
    iget-object v4, v4, Lo/getSpanIndex;->notify:Ljava/util/List;

    .line 108
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v4, v0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 17078
    iget-object v4, v4, Lo/getSpanIndex;->notify:Ljava/util/List;

    .line 109
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 110
    iget-object v4, v0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 18078
    iget-object v4, v4, Lo/getSpanIndex;->notify:Ljava/util/List;

    .line 110
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    :cond_a
    move-object v1, v3

    check-cast v1, Lo/StaggeredGridLayoutManager;

    invoke-virtual {v0, v1}, Lo/scrollHorizontallyBy;->onMessageChannelReady(Lo/StaggeredGridLayoutManager;)V

    .line 113
    iget-object v1, v0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 19078
    iget-object v1, v1, Lo/getSpanIndex;->notify:Ljava/util/List;

    .line 285
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 286
    check-cast v4, Lo/postDispatchSwipe;

    .line 20029
    iget-object v4, v4, Lo/postDispatchSwipe;->extraCallback:Ljava/lang/Integer;

    .line 21029
    iget-object v6, v3, Lo/postDispatchSwipe;->extraCallback:Ljava/lang/Integer;

    .line 114
    invoke-static {v4, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v5, v2

    goto :goto_a

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 113
    :cond_c
    :goto_a
    invoke-virtual {v0, v5}, Lo/scrollHorizontallyBy;->onNavigationEvent(I)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/StaggeredGridLayoutManager;)V
    .locals 13

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    check-cast p1, Lo/postDispatchSwipe;

    .line 138
    iget-object v1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 28078
    iget-object v1, v1, Lo/getSpanIndex;->notify:Ljava/util/List;

    .line 138
    check-cast v1, Ljava/lang/Iterable;

    .line 300
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/postDispatchSwipe;

    .line 29029
    iget-object v3, v2, Lo/postDispatchSwipe;->extraCallback:Ljava/lang/Integer;

    .line 30029
    iget-object v4, p1, Lo/postDispatchSwipe;->extraCallback:Ljava/lang/Integer;

    .line 139
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    new-instance v2, Lo/postDispatchSwipe;

    .line 31029
    iget-object v5, p1, Lo/postDispatchSwipe;->extraCallback:Ljava/lang/Integer;

    .line 32029
    iget-object v6, p1, Lo/postDispatchSwipe;->onNavigationEvent:Ljava/lang/String;

    .line 33029
    iget-object v7, p1, Lo/postDispatchSwipe;->onMessageChannelReady:Ljava/lang/String;

    .line 34029
    iget-object v8, p1, Lo/postDispatchSwipe;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v9, 0x1

    .line 34030
    iget-object v10, p1, Lo/postDispatchSwipe;->asBinder:Ljava/lang/Boolean;

    .line 35030
    iget-boolean v11, p1, Lo/postDispatchSwipe;->onRelationshipValidationResult:Z

    .line 35031
    iget-object v12, p1, Lo/postDispatchSwipe;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    move-object v4, v2

    .line 140
    invoke-direct/range {v4 .. v12}, Lo/postDispatchSwipe;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;ZLcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36030
    :cond_1
    iget-boolean v3, v2, Lo/postDispatchSwipe;->onRelationshipValidationResult:Z

    if-nez v3, :cond_0

    .line 143
    new-instance v3, Lo/postDispatchSwipe;

    .line 37029
    iget-object v5, v2, Lo/postDispatchSwipe;->extraCallback:Ljava/lang/Integer;

    .line 38029
    iget-object v6, v2, Lo/postDispatchSwipe;->onNavigationEvent:Ljava/lang/String;

    .line 39029
    iget-object v7, v2, Lo/postDispatchSwipe;->onMessageChannelReady:Ljava/lang/String;

    .line 40029
    iget-object v8, v2, Lo/postDispatchSwipe;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v9, 0x0

    .line 40030
    iget-object v10, v2, Lo/postDispatchSwipe;->asBinder:Ljava/lang/Boolean;

    .line 41030
    iget-boolean v11, v2, Lo/postDispatchSwipe;->onRelationshipValidationResult:Z

    .line 41031
    iget-object v12, v2, Lo/postDispatchSwipe;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    move-object v4, v3

    .line 143
    invoke-direct/range {v4 .. v12}, Lo/postDispatchSwipe;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;ZLcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;)V

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 41054
    iget-object v1, v1, Lo/getSpanIndex;->getInterfaceDescriptor:Ljava/lang/Double;

    .line 42029
    iget-object v2, p1, Lo/postDispatchSwipe;->onNavigationEvent:Ljava/lang/String;

    .line 147
    invoke-static {v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lo/access$3000;->extraCallback(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 42058
    iget-object v1, v1, Lo/getSpanIndex;->updateVisuals:Ljava/lang/Integer;

    .line 43029
    iget-object v2, p1, Lo/postDispatchSwipe;->onMessageChannelReady:Ljava/lang/String;

    .line 147
    invoke-static {v2}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lo/scrollHorizontallyBy;->updateVisuals:Lo/setRecycleChildrenOnDetach;

    const/4 v2, 0x0

    .line 43055
    iput-object v2, v1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 43056
    iget-object v2, v1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v2, v1, Lo/setRecycleChildrenOnDetach;->warmup:Ljava/lang/String;

    .line 150
    :cond_3
    iget-object v1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 44029
    iget-object v2, p1, Lo/postDispatchSwipe;->onNavigationEvent:Ljava/lang/String;

    .line 150
    invoke-static {v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 44054
    iput-object v2, v1, Lo/getSpanIndex;->getInterfaceDescriptor:Ljava/lang/Double;

    .line 151
    iget-object v1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 45029
    iget-object p1, p1, Lo/postDispatchSwipe;->onMessageChannelReady:Ljava/lang/String;

    .line 151
    invoke-static {p1}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 45058
    iput-object p1, v1, Lo/getSpanIndex;->updateVisuals:Ljava/lang/Integer;

    .line 153
    check-cast v0, Ljava/util/List;

    const-string p1, "listItem"

    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46000
    iget-object p1, p0, Lo/scrollHorizontallyBy;->newSession:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/repositionToWrapContentIfNecessary;

    const-string/jumbo v1, "value"

    .line 45197
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 46038
    invoke-virtual {p1, v0}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 154
    iget-object p1, p0, Lo/scrollHorizontallyBy;->getInterfaceDescriptor:Lo/getSpanIndex;

    .line 47040
    iget-object p1, p1, Lo/getSpanIndex;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 154
    new-instance v0, Lo/throwIfInMutationOperation;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method final onNavigationEvent(I)V
    .locals 5

    .line 253
    iget-object v0, p0, Lo/scrollHorizontallyBy;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v1, "tenureList"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/scrollHorizontallyBy;->ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompatApi21$CallbackProxy;

    new-instance v2, Lo/scrollHorizontallyBy$asInterface;

    invoke-direct {v2, p0, p1}, Lo/scrollHorizontallyBy$asInterface;-><init>(Lo/scrollHorizontallyBy;I)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method
