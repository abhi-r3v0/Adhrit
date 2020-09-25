.class public final Lo/startPostponedEnterTransition;
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
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J(\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00192\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/adapters/Card11ViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "recycledViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "filterText",
        "Landroid/widget/TextView;",
        "headerText",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "sortKey",
        "",
        "templateResponse",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
        "verticalAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getFilteredDataList",
        "",
        "list",
        "",
        "getSelectedFilter",
        "Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;",
        "cta",
        "Lcom/dreamplug/fabrik/ui/cm/models/Cta;",
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

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

.field private onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Template;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "recycledViewPool"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 14010
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14011
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e01dc

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p2, p3}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 29
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "itemView.recyclerView"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/startPostponedEnterTransition;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->filter:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v2, "itemView.filter"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/startPostponedEnterTransition;->extraCallback:Landroid/widget/TextView;

    .line 31
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->headerText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "itemView.headerText"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/startPostponedEnterTransition;->onMessageChannelReady:Landroid/widget/TextView;

    .line 32
    new-instance p2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p2}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 33
    new-instance v0, Lo/performCreateView;

    invoke-direct {v0, p3}, Lo/performCreateView;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v0, Lo/checkForGaps;

    const-string p3, "adapter"

    invoke-static {v0, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14036
    check-cast p2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object p3, p2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14043
    new-instance p3, Lo/repositionToWrapContentIfNecessary;

    iget-object p2, p2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p3, p2, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 34
    iput-object p3, p0, Lo/startPostponedEnterTransition;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    .line 40
    iget-object p2, p0, Lo/startPostponedEnterTransition;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 42
    iget-object p1, p0, Lo/startPostponedEnterTransition;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 44
    iget-object p1, p0, Lo/startPostponedEnterTransition;->extraCallback:Landroid/widget/TextView;

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/startPostponedEnterTransition$2;

    invoke-direct {p2, p0}, Lo/startPostponedEnterTransition$2;-><init>(Lo/startPostponedEnterTransition;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/startPostponedEnterTransition;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/startPostponedEnterTransition;->extraCallback:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/startPostponedEnterTransition;)Lo/repositionToWrapContentIfNecessary;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/startPostponedEnterTransition;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/startPostponedEnterTransition;)Ljava/lang/String;
    .locals 1

    .line 21
    iget-object p0, p0, Lo/startPostponedEnterTransition;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo v0, "sortKey"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/startPostponedEnterTransition;Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/startPostponedEnterTransition;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/startPostponedEnterTransition;)Lcom/dreamplug/fabrik/ui/cm/models/Template;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/startPostponedEnterTransition;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 14091
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x1024ed05

    if-eq v0, v1, :cond_1

    const v1, -0x849ef33

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "high_to_low"

    .line 14097
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14098
    check-cast p0, Ljava/lang/Iterable;

    .line 14117
    new-instance p1, Lo/startPostponedEnterTransition$ICustomTabsCallback;

    invoke-direct {p1}, Lo/startPostponedEnterTransition$ICustomTabsCallback;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p0, p1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v0, "low_to_high"

    .line 14092
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14093
    check-cast p0, Ljava/lang/Iterable;

    .line 14116
    new-instance p1, Lo/startPostponedEnterTransition$onMessageChannelReady;

    invoke-direct {p1}, Lo/startPostponedEnterTransition$onMessageChannelReady;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p0, p1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 14103
    :cond_2
    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    .line 14118
    new-instance p1, Lo/startPostponedEnterTransition$onPostMessage;

    invoke-direct {p1}, Lo/startPostponedEnterTransition$onPostMessage;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p0, p1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 14108
    check-cast p0, Ljava/util/Collection;

    const-string p1, "$this$toMutableList"

    invoke-static {p0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_11

    .line 71
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    iput-object p1, p0, Lo/startPostponedEnterTransition;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 72
    iget-object v0, p0, Lo/startPostponedEnterTransition;->extraCallback:Landroid/widget/TextView;

    .line 2027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2071
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2175
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 4018
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asBinder:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;

    if-eqz v1, :cond_2

    .line 4031
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz v1, :cond_2

    .line 5016
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    if-eqz v1, :cond_2

    const-string v3, "$this$firstOrNull"

    .line 3080
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5243
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3080
    :goto_1
    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v1, :cond_2

    .line 6027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz v1, :cond_2

    .line 6076
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v3, "most_recent"

    if-eqz v1, :cond_5

    .line 3081
    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    .line 3112
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 7027
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 7091
    iget-boolean v6, v6, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->validateRelationship:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_4
    move-object v5, v2

    .line 3113
    :goto_3
    check-cast v5, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-nez v5, :cond_a

    :cond_5
    if-eqz v1, :cond_9

    .line 3083
    check-cast v1, Ljava/lang/Iterable;

    .line 3114
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 8029
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v5, :cond_7

    .line 3084
    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSortKey()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v2

    :goto_4
    invoke-static {v5, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_8
    move-object v4, v2

    .line 3115
    :goto_5
    move-object v5, v4

    check-cast v5, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    goto :goto_6

    :cond_9
    move-object v5, v2

    :cond_a
    :goto_6
    if-eqz v5, :cond_c

    .line 9029
    iget-object v1, v5, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v1, :cond_c

    .line 3086
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSortKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    move-object v3, v1

    :cond_c
    :goto_7
    iput-object v3, p0, Lo/startPostponedEnterTransition;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 10027
    iget-object v1, v5, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    goto :goto_8

    :cond_d
    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_e

    .line 10051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_e

    .line 11000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_9

    :cond_e
    move-object v1, v2

    .line 72
    :goto_9
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lo/startPostponedEnterTransition;->onMessageChannelReady:Landroid/widget/TextView;

    .line 11027
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 11051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_f

    .line 12000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .line 73
    :cond_f
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lo/startPostponedEnterTransition;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    .line 12027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 12076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    if-nez p1, :cond_10

    .line 74
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_10
    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 13038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_11
    return-void
.end method
