.class public final Lo/dispatchLayoutStep1;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recycledViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V",
        "icon",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "innerRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "kotlin.jvm.PlatformType",
        "tncAssetAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "tncSubtitle",
        "Landroid/widget/TextView;",
        "tncTitle",
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

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycledViewPool"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 10010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e01ae

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string v2, "itemView.icon"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/dispatchLayoutStep1;->ICustomTabsCallback:Lo/setSpeed;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->tncTitle:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "itemView.tncTitle"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/dispatchLayoutStep1;->onNavigationEvent:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->tncDesc:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "itemView.tncDesc"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/dispatchLayoutStep1;->extraCallback:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tncAssetRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/dispatchLayoutStep1;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 35
    new-instance v0, Lo/dispatchLayoutStep2;

    invoke-direct {v0, p2}, Lo/dispatchLayoutStep2;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v0, Lo/checkForGaps;

    const-string p2, "adapter"

    invoke-static {v0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object p2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 36
    iput-object p2, p0, Lo/dispatchLayoutStep1;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    .line 39
    iget-object p1, p0, Lo/dispatchLayoutStep1;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 40
    iget-object p1, p0, Lo/dispatchLayoutStep1;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    new-instance p2, Lo/setGapStrategy;

    .line 42
    new-instance p3, Lo/getGapStrategy;

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "Resources.getSystem()"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    .line 11010
    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 42
    invoke-direct {p3, v1, v1, v0, v1}, Lo/getGapStrategy;-><init>(IIII)V

    .line 43
    new-instance v0, Lo/getGapStrategy;

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x428c0000    # 70.0f

    .line 12010
    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 13009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v5, 0x42480000    # 50.0f

    .line 13010
    invoke-static {v3, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 43
    invoke-direct {v0, v1, v1, v4, v2}, Lo/getGapStrategy;-><init>(IIII)V

    .line 41
    invoke-direct {p2, v1, v3, p3, v0}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 40
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 48
    iget-object p1, p0, Lo/dispatchLayoutStep1;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "innerRecyclerView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/dispatchLayoutStep1;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    instance-of v0, p1, Lo/setItemAnimator;

    if-eqz v0, :cond_f

    .line 54
    check-cast p1, Lo/setItemAnimator;

    .line 1034
    iget-object v0, p1, Lo/setItemAnimator;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 55
    iget-object v1, p0, Lo/dispatchLayoutStep1;->ICustomTabsCallback:Lo/setSpeed;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x36

    invoke-static/range {v1 .. v8}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 2034
    :cond_0
    iget-object v0, p1, Lo/setItemAnimator;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;

    if-eqz v0, :cond_1

    .line 3017
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    iget-object v1, p0, Lo/dispatchLayoutStep1;->onNavigationEvent:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3034
    :cond_1
    iget-object v0, p1, Lo/setItemAnimator;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;

    if-eqz v0, :cond_2

    .line 4020
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Data;

    if-eqz v0, :cond_2

    .line 4026
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Data;->extraCallback:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 65
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x50

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Index overflow has happened."

    if-eqz v0, :cond_8

    .line 66
    check-cast v0, Ljava/lang/Iterable;

    .line 129
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_7

    check-cast v6, Ljava/lang/String;

    .line 5035
    iget-boolean v5, p1, Lo/setItemAnimator;->onMessageChannelReady:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    const-string/jumbo v5, "\u2022 "

    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v7, v2, :cond_6

    .line 5036
    iget-boolean v5, p1, Lo/setItemAnimator;->extraCallback:Z

    if-eqz v5, :cond_5

    const-string v5, ","

    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v5, "\n\n"

    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    move v5, v7

    goto :goto_2

    .line 4441
    :cond_7
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 80
    :cond_8
    iget-object v0, p0, Lo/dispatchLayoutStep1;->extraCallback:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6034
    iget-object p1, p1, Lo/setItemAnimator;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;

    if-eqz p1, :cond_9

    .line 7020
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Data;

    if-eqz p1, :cond_9

    .line 7028
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Data;->ICustomTabsCallback:Ljava/util/List;

    if-nez p1, :cond_a

    .line 7070
    :cond_9
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast p1, Ljava/util/List;

    .line 84
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, "innerRecyclerView"

    if-eqz v0, :cond_b

    .line 85
    iget-object v0, p0, Lo/dispatchLayoutStep1;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 87
    :cond_b
    iget-object v0, p0, Lo/dispatchLayoutStep1;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :goto_3
    iget-object v0, p0, Lo/dispatchLayoutStep1;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    const-string v5, "$this$collectionSizeOrDefault"

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8039
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_c

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    goto :goto_4

    :cond_c
    const/16 v5, 0xa

    .line 131
    :goto_4
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 133
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    if-ltz v1, :cond_d

    .line 91
    new-instance v6, Lo/setOnScrollListener;

    invoke-direct {v6, v1, p1}, Lo/setOnScrollListener;-><init>(ILjava/util/List;)V

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_5

    .line 8441
    :cond_d
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 135
    :cond_e
    check-cast v3, Ljava/util/List;

    const-string/jumbo p1, "value"

    invoke-static {v3, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object p1, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 9038
    invoke-virtual {p1, v3}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_f
    return-void
.end method
