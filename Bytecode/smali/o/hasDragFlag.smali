.class public final Lo/hasDragFlag;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0010*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n \u0010*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/holder/CarouselCardNoPitViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recycledViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V",
        "mScrollTouchListener",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
        "preX",
        "",
        "preY",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "kotlin.jvm.PlatformType",
        "stashAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "text1",
        "Lcom/dreamplug/widget/CredTextView;",
        "text2",
        "yBuffer",
        "",
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
.field private final ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

.field private final asInterface:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private onMessageChannelReady:F

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private onPostMessage:F

.field private onTransact:Lo/repositionToWrapContentIfNecessary;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycledViewPool"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 5010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e018a

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/hasDragFlag;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/hasDragFlag;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/hasDragFlag;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 30
    new-instance v0, Lo/setSpanCount;

    invoke-direct {v0, p2}, Lo/setSpanCount;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v0, Lo/checkForGaps;

    const-string p2, "adapter"

    invoke-static {v0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object p2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 31
    iput-object p2, p0, Lo/hasDragFlag;->onTransact:Lo/repositionToWrapContentIfNecessary;

    .line 33
    new-instance p1, Lo/hasDragFlag$onPostMessage;

    invoke-direct {p1, p0}, Lo/hasDragFlag$onPostMessage;-><init>(Lo/hasDragFlag;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    iput-object p1, p0, Lo/hasDragFlag;->asInterface:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 63
    iget-object p1, p0, Lo/hasDragFlag;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 65
    iget-object p2, p0, Lo/hasDragFlag;->onTransact:Lo/repositionToWrapContentIfNecessary;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    new-instance p2, Lo/setGapStrategy;

    .line 69
    new-instance v5, Lo/getGapStrategy;

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "Resources.getSystem()"

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 6010
    invoke-static {v2, v3, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 69
    invoke-direct {v5, v1, v1, v1, p3}, Lo/getGapStrategy;-><init>(IIII)V

    .line 70
    new-instance v6, Lo/getGapStrategy;

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v3, 0x41a00000    # 20.0f

    .line 7010
    invoke-static {v2, v3, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 8010
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 70
    invoke-direct {v6, v1, v1, p3, v0}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x2

    move-object v2, p2

    .line 67
    invoke-direct/range {v2 .. v7}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 66
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 74
    new-instance p2, Lo/hasDragFlag$ICustomTabsCallback;

    invoke-direct {p2}, Lo/hasDragFlag$ICustomTabsCallback;-><init>()V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/hasDragFlag;)F
    .locals 0

    .line 17
    iget p0, p0, Lo/hasDragFlag;->onMessageChannelReady:F

    return p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/hasDragFlag;F)V
    .locals 0

    .line 17
    iput p1, p0, Lo/hasDragFlag;->onPostMessage:F

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/hasDragFlag;)F
    .locals 0

    .line 17
    iget p0, p0, Lo/hasDragFlag;->onPostMessage:F

    return p0
.end method

.method public static final synthetic onNavigationEvent(Lo/hasDragFlag;F)V
    .locals 0

    .line 17
    iput p1, p0, Lo/hasDragFlag;->onMessageChannelReady:F

    return-void
.end method

.method public static final synthetic onPostMessage()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz v0, :cond_6

    .line 95
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 1027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;

    if-eqz p1, :cond_6

    .line 96
    iget-object v0, p0, Lo/hasDragFlag;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "text1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 1063
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->newSession:Lo/getTargetScrollPosition;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 96
    :goto_0
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lo/hasDragFlag;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "text2"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 2065
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->ICustomTabsCallback$Stub$Proxy:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_1

    .line 3000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .line 97
    :cond_1
    invoke-static {v0, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 3045
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/TemplateProperties;->onMessageChannelReady:Ljava/util/List;

    if-nez p1, :cond_2

    .line 3070
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast p1, Ljava/util/List;

    .line 100
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 101
    check-cast p1, Ljava/lang/Iterable;

    .line 115
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    .line 102
    sget-object v2, Lo/setSpanCount;->ICustomTabsCallback:Lo/setSpanCount$onNavigationEvent;

    move-object v2, v1

    check-cast v2, Lo/StaggeredGridLayoutManager;

    invoke-static {v2}, Lo/setSpanCount$onNavigationEvent;->onNavigationEvent(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_5

    .line 107
    iget-object p1, p0, Lo/hasDragFlag;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/hasDragFlag;->asInterface:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 109
    :cond_5
    iget-object p1, p0, Lo/hasDragFlag;->onTransact:Lo/repositionToWrapContentIfNecessary;

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {p1, v0}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_6
    return-void
.end method
