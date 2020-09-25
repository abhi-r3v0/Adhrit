.class public final Lo/detachAndScrapAttachedViews;
.super Lo/getPaddingEnd;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \u000b*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \u000b*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationTemplate4;",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationBaseTemplate;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recycledViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V",
        "cta",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "ctaIcon",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "iconsAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "image",
        "linearLayoutManager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "notificationTime",
        "rewardsIconsRecyclerview",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "text",
        "Landroid/widget/TextView;",
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

.field private final ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

.field private final asInterface:Lo/repositionToWrapContentIfNecessary;

.field private final extraCallback:Lo/setSpeed;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycledViewPool"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 6010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e0161

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lo/getPaddingEnd;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/detachAndScrapAttachedViews;->extraCallback:Lo/setSpeed;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/detachAndScrapAttachedViews;->onMessageChannelReady:Landroid/widget/TextView;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/detachAndScrapAttachedViews;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/detachAndScrapAttachedViews;->ICustomTabsCallback:Lo/setSpeed;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->notificationTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/detachAndScrapAttachedViews;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->rewardsIconsRecyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/detachAndScrapAttachedViews;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 30
    new-instance v0, Lo/removeAndRecycleScrapInt;

    invoke-direct {v0}, Lo/removeAndRecycleScrapInt;-><init>()V

    check-cast v0, Lo/checkForGaps;

    const-string v2, "adapter"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6043
    new-instance v0, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 31
    iput-object v0, p0, Lo/detachAndScrapAttachedViews;->asInterface:Lo/repositionToWrapContentIfNecessary;

    .line 33
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lo/detachAndScrapAttachedViews;->onTransact:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    iget-object p1, p0, Lo/detachAndScrapAttachedViews;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v0, "rewardsIconsRecyclerview"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/detachAndScrapAttachedViews;->onTransact:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    iget-object p1, p0, Lo/detachAndScrapAttachedViews;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 38
    iget-object p1, p0, Lo/detachAndScrapAttachedViews;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lo/detachAndScrapAttachedViews;->asInterface:Lo/repositionToWrapContentIfNecessary;

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object p1, p0, Lo/detachAndScrapAttachedViews;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string p3, "cta"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p3, Lo/detachAndScrapAttachedViews$5;

    invoke-direct {p3, p0}, Lo/detachAndScrapAttachedViews$5;-><init>(Lo/detachAndScrapAttachedViews;)V

    check-cast p3, Lo/onDisconnectSetValue;

    invoke-static {p1, p3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/detachAndScrapAttachedViews$2;

    invoke-direct {p2, p0}, Lo/detachAndScrapAttachedViews$2;-><init>(Lo/detachAndScrapAttachedViews;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/detachAndScrapAttachedViews;)Landroid/widget/TextView;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/detachAndScrapAttachedViews;->onMessageChannelReady:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Lo/getPaddingEnd;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V

    .line 49
    instance-of v0, p1, Lo/shouldMeasureChild;

    if-eqz v0, :cond_6

    .line 50
    iget-object v0, p0, Lo/detachAndScrapAttachedViews;->extraCallback:Lo/setSpeed;

    const-string v1, "image"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/detachAndScrapAttachedViews;->onPostMessage(Lo/setSpeed;)V

    .line 51
    iget-object v0, p0, Lo/detachAndScrapAttachedViews;->onMessageChannelReady:Landroid/widget/TextView;

    const-string/jumbo v1, "text"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/detachAndScrapAttachedViews;->onPostMessage(Landroid/widget/TextView;)V

    .line 52
    iget-object v0, p0, Lo/detachAndScrapAttachedViews;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string v1, "notificationTime"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lo/detachAndScrapAttachedViews;->onNavigationEvent(Landroid/widget/TextView;)V

    .line 53
    iget-object v0, p0, Lo/detachAndScrapAttachedViews;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string v1, "cta"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lo/detachAndScrapAttachedViews;->ICustomTabsCallback:Lo/setSpeed;

    invoke-virtual {p0, v0, v1}, Lo/detachAndScrapAttachedViews;->onMessageChannelReady(Landroid/widget/TextView;Lo/setSpeed;)V

    .line 54
    check-cast p1, Lo/shouldMeasureChild;

    .line 1043
    iget-object v0, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 56
    iget-object v2, p0, Lo/detachAndScrapAttachedViews;->ICustomTabsCallback:Lo/setSpeed;

    const-string v3, "ctaIcon"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lo/setInflatedId;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3043
    :cond_1
    iget-object p1, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz p1, :cond_2

    .line 4026
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz p1, :cond_2

    .line 4042
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

    if-eqz p1, :cond_2

    .line 4054
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Body;->onMessageChannelReady:Ljava/util/List;

    :cond_2
    if-eqz v1, :cond_6

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 64
    new-instance v3, Lo/measureChildWithMargins;

    invoke-direct {v3, v2}, Lo/measureChildWithMargins;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 69
    new-instance v0, Lo/isMeasurementUpToDate;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/isMeasurementUpToDate;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_5
    iget-object v0, p0, Lo/detachAndScrapAttachedViews;->asInterface:Lo/repositionToWrapContentIfNecessary;

    check-cast p1, Ljava/util/List;

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 5038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_6
    return-void
.end method
