.class public final Lo/initAdapterManager;
.super Lo/isForwardFling;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/LifestyleGroup2;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/BaseLifestyleHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recycledViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "pageLoaded",
        "Lcom/dreamplug/fabrik/ui/lifestyle/cards/LifestyleCardsAdapter$PageLoaded;",
        "lifecycleStateData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/Lifecycle$State;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lcom/dreamplug/fabrik/ui/lifestyle/cards/LifestyleCardsAdapter$PageLoaded;Landroidx/lifecycle/MutableLiveData;)V",
        "cardImage",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "dp10",
        "",
        "dp20",
        "guideBottom",
        "Landroidx/constraintlayout/widget/Guideline;",
        "guideTop",
        "innerRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "linearLayoutManager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "logoImage",
        "marginItemDecorator",
        "Lcom/dreamplug/utils/list/MarginItemDecorator;",
        "masonryAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final ICustomTabsCallback:Lo/setSpeed;

.field private final ICustomTabsCallback$Stub:I

.field private final ICustomTabsCallback$Stub$Proxy:Lo/applyOptions;

.field private final ICustomTabsService:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:I

.field private final extraCallback:Lo/setSpeed;

.field private final getInterfaceDescriptor:Lo/applyOptions;

.field private onNavigationEvent:Lo/setGapStrategy;

.field private final onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

.field private final onTransact:Lo/repositionToWrapContentIfNecessary;

.field private final warmup:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/hasGapsToFix$onMessageChannelReady;",
            "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
            "Lo/collectAdjacentPrefetchPositions$onNavigationEvent;",
            "Lo/setActive<",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycledViewPool"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageLoaded"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleStateData"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 5010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e0220

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p4, p5}, Lo/isForwardFling;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V

    iput-object p5, p0, Lo/initAdapterManager;->ICustomTabsService:Lo/setActive;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p5, "itemView"

    invoke-static {p1, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifestyleInnerRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iput-object p1, p0, Lo/initAdapterManager;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    iput-object p1, p0, Lo/initAdapterManager;->extraCallback:Lo/setSpeed;

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->logoImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    iput-object p1, p0, Lo/initAdapterManager;->ICustomTabsCallback:Lo/setSpeed;

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "Resources.getSystem()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x1

    .line 6010
    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 37
    iput p1, p0, Lo/initAdapterManager;->ICustomTabsCallback$Stub:I

    shl-int/2addr p1, v3

    .line 38
    iput p1, p0, Lo/initAdapterManager;->asInterface:I

    .line 40
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 41
    new-instance v2, Lo/collectAdjacentPrefetchPositions;

    iget-object v4, p0, Lo/initAdapterManager;->ICustomTabsService:Lo/setActive;

    invoke-direct {v2, p2, p4, v4}, Lo/collectAdjacentPrefetchPositions;-><init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V

    check-cast v2, Lo/checkForGaps;

    const-string p2, "adapter"

    invoke-static {v2, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object p2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 42
    iput-object p2, p0, Lo/initAdapterManager;->onTransact:Lo/repositionToWrapContentIfNecessary;

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->guideBottom:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/applyOptions;

    if-nez p1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    iput-object p1, p0, Lo/initAdapterManager;->ICustomTabsCallback$Stub$Proxy:Lo/applyOptions;

    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->guideTop:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/applyOptions;

    if-nez p1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    iput-object p1, p0, Lo/initAdapterManager;->getInterfaceDescriptor:Lo/applyOptions;

    .line 45
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lo/initAdapterManager;->warmup:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 48
    iget-object p1, p0, Lo/initAdapterManager;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 49
    iget-object p1, p0, Lo/initAdapterManager;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lo/initAdapterManager;->warmup:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    iget-object p1, p0, Lo/initAdapterManager;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iget-object p2, p0, Lo/initAdapterManager;->onNavigationEvent:Lo/setGapStrategy;

    if-eqz p2, :cond_5

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 52
    :cond_5
    new-instance p2, Lo/setGapStrategy;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 54
    new-instance v7, Lo/getGapStrategy;

    invoke-direct {v7, v1, v1, v1, v1}, Lo/getGapStrategy;-><init>(IIII)V

    .line 55
    new-instance v8, Lo/getGapStrategy;

    iget p3, p0, Lo/initAdapterManager;->asInterface:I

    invoke-direct {v8, v1, v1, p3, p3}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v9, 0x2

    move-object v4, p2

    .line 52
    invoke-direct/range {v4 .. v9}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    iput-object p2, p0, Lo/initAdapterManager;->onNavigationEvent:Lo/setGapStrategy;

    if-nez p2, :cond_6

    .line 57
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 59
    iget-object p2, p0, Lo/initAdapterManager;->onTransact:Lo/repositionToWrapContentIfNecessary;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    .line 7010
    invoke-static {v3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Lo/isForwardFling;->onNavigationEvent(F)V

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    .line 8010
    invoke-static {v3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lo/isForwardFling;->onMessageChannelReady(F)V

    .line 64
    invoke-virtual {p0}, Lo/isForwardFling;->extraCallback()V

    .line 66
    iget-object p1, p0, Lo/initAdapterManager;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lo/initAdapterManager$5;

    invoke-direct {p2, p0}, Lo/initAdapterManager$5;-><init>(Lo/initAdapterManager;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/initAdapterManager;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/initAdapterManager;->warmup:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Lo/isForwardFling;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V

    .line 99
    instance-of v0, p1, Lo/ensureLayoutState;

    if-eqz v0, :cond_3

    .line 100
    check-cast p1, Lo/ensureLayoutState;

    .line 1015
    iget-object v0, p1, Lo/ensureLayoutState;->ICustomTabsCallback:Ljava/util/List;

    .line 100
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "value"

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lo/initAdapterManager;->onTransact:Lo/repositionToWrapContentIfNecessary;

    .line 1070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    .line 101
    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {v0, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    goto :goto_2

    .line 103
    :cond_2
    iget-object v0, p0, Lo/initAdapterManager;->onTransact:Lo/repositionToWrapContentIfNecessary;

    .line 3015
    iget-object v2, p1, Lo/ensureLayoutState;->ICustomTabsCallback:Ljava/util/List;

    .line 103
    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 106
    :goto_2
    iget-object v0, p0, Lo/initAdapterManager;->extraCallback:Lo/setSpeed;

    invoke-virtual {p0, v0}, Lo/initAdapterManager;->onNavigationEvent(Lo/setSpeed;)V

    .line 107
    iget-object v1, p0, Lo/initAdapterManager;->ICustomTabsCallback:Lo/setSpeed;

    .line 4025
    iget-object p1, p1, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 4033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 4150
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 107
    sget-object v5, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x36

    invoke-static/range {v1 .. v8}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 108
    iget-object p1, p0, Lo/initAdapterManager;->getInterfaceDescriptor:Lo/applyOptions;

    iget-object v0, p0, Lo/initAdapterManager;->ICustomTabsCallback$Stub$Proxy:Lo/applyOptions;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lo/isForwardFling;->ICustomTabsCallback(Lo/applyOptions;Lo/applyOptions;Lo/applyOptions;Lo/applyOptions;)V

    :cond_3
    return-void
.end method
