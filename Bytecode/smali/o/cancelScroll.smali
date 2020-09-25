.class public final Lo/cancelScroll;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cancelScroll$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00082\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0008H\u0002J\u0008\u0010\u0017\u001a\u00020\u0012H\u0002R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u000c*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/holder/StoreGridViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cardList",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/holder/StoreGridViewHolder$InnerCardHolder;",
        "headerView",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "itemData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;",
        "pit",
        "Lcom/dreamplug/ui/neu/PitView;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getValidChildCards",
        "childCards",
        "onTimerExpired",
        "InnerCardHolder",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/cancelScroll$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 28010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e0195

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    const/4 p1, 0x4

    new-array p1, p1, [Lo/cancelScroll$onPostMessage;

    .line 38
    new-instance p2, Lo/cancelScroll$onPostMessage;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "itemView.context"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->firstCard:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "itemView.firstCard"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/cancelScroll$ICustomTabsCallback;

    invoke-direct {v5, p0}, Lo/cancelScroll$ICustomTabsCallback;-><init>(Lo/cancelScroll;)V

    check-cast v5, Lo/getServerTime;

    invoke-direct {p2, v0, v4, v5}, Lo/cancelScroll$onPostMessage;-><init>(Landroid/content/Context;Landroid/view/View;Lo/getServerTime;)V

    aput-object p2, p1, v1

    .line 39
    new-instance p2, Lo/cancelScroll$onPostMessage;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->secondCard:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "itemView.secondCard"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/cancelScroll$onMessageChannelReady;

    invoke-direct {v5, p0}, Lo/cancelScroll$onMessageChannelReady;-><init>(Lo/cancelScroll;)V

    check-cast v5, Lo/getServerTime;

    invoke-direct {p2, v0, v4, v5}, Lo/cancelScroll$onPostMessage;-><init>(Landroid/content/Context;Landroid/view/View;Lo/getServerTime;)V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 40
    new-instance p2, Lo/cancelScroll$onPostMessage;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->thirdCard:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "itemView.thirdCard"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/cancelScroll$onNavigationEvent;

    invoke-direct {v5, p0}, Lo/cancelScroll$onNavigationEvent;-><init>(Lo/cancelScroll;)V

    check-cast v5, Lo/getServerTime;

    invoke-direct {p2, v0, v4, v5}, Lo/cancelScroll$onPostMessage;-><init>(Landroid/content/Context;Landroid/view/View;Lo/getServerTime;)V

    const/4 v0, 0x2

    aput-object p2, p1, v0

    .line 41
    new-instance p2, Lo/cancelScroll$onPostMessage;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->fourthCard:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "itemView.fourthCard"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lo/cancelScroll$asBinder;

    invoke-direct {v4, p0}, Lo/cancelScroll$asBinder;-><init>(Lo/cancelScroll;)V

    check-cast v4, Lo/getServerTime;

    invoke-direct {p2, v0, v3, v4}, Lo/cancelScroll$onPostMessage;-><init>(Landroid/content/Context;Landroid/view/View;Lo/getServerTime;)V

    const/4 v0, 0x3

    aput-object p2, p1, v0

    const-string p2, "elements"

    .line 37
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this$asList"

    .line 28076
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29013
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "ArraysUtilJVM.asList(this)"

    .line 28129
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lo/cancelScroll;->onNavigationEvent:Ljava/util/List;

    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->headerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/cancelScroll;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->pit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    iget-object p1, p0, Lo/cancelScroll;->onNavigationEvent:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 202
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v0, v1, 0x1

    if-ltz v1, :cond_0

    check-cast p2, Lo/cancelScroll$onPostMessage;

    .line 30090
    iget-object p2, p2, Lo/cancelScroll$onPostMessage;->onNavigationEvent:Landroid/view/View;

    const-wide/16 v2, 0x3e8

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lo/cancelScroll$extraCallback;

    invoke-direct {v3, v1, p0}, Lo/cancelScroll$extraCallback;-><init>(ILo/cancelScroll;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {p2, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/view/View;Ljava/lang/Long;Lo/onDisconnectSetValue;)V

    move v1, v0

    goto :goto_0

    .line 29441
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Index overflow has happened."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/cancelScroll;)V
    .locals 1

    const-string/jumbo v0, "timer_expired"

    .line 31054
    invoke-virtual {p0, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz v2, :cond_16

    .line 59
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    iput-object v1, v0, Lo/cancelScroll;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    .line 1030
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onMessageChannelReady:Ljava/util/List;

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    .line 1082
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v5, :cond_0

    .line 2070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    goto :goto_0

    .line 1083
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v5}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 1084
    :cond_1
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 3070
    :cond_2
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    .line 4037
    :goto_0
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 4057
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->onNavigationEvent:Ljava/lang/String;

    .line 63
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    const-string v9, "headerView"

    const-string v10, "$this$visible"

    const/16 v11, 0x8

    const-string v12, "$this$gone"

    const/4 v13, 0x0

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 64
    iget-object v7, v0, Lo/cancelScroll;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    invoke-static {v7, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v7, v0, Lo/cancelScroll;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_3
    iget-object v6, v0, Lo/cancelScroll;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5017
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 5037
    :goto_1
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 5055
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;

    const-string v7, "$this$lastIndex"

    const-string v9, "$this$getOrNull"

    if-eqz v6, :cond_4

    .line 5077
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;

    if-eqz v6, :cond_4

    .line 5101
    iget v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->onPostMessage:F

    .line 69
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_3

    .line 70
    :cond_4
    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5266
    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6210
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v8

    if-ltz v6, :cond_5

    .line 5266
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 70
    :goto_2
    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz v6, :cond_6

    .line 7037
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    if-eqz v6, :cond_6

    .line 7055
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;

    if-eqz v6, :cond_6

    .line 7077
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;

    if-eqz v6, :cond_6

    .line 7101
    iget v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->onPostMessage:F

    .line 70
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_7

    const-wide v15, 0x3fe54fdf3b645a1dL    # 0.666

    .line 71
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    iget-object v15, v0, Lo/cancelScroll;->onNavigationEvent:Ljava/util/List;

    check-cast v15, Ljava/lang/Iterable;

    .line 199
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v3, 0x1

    if-ltz v3, :cond_15

    move-object/from16 v4, v16

    check-cast v4, Lo/cancelScroll$onPostMessage;

    .line 73
    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v3, :cond_8

    .line 8266
    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9210
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    if-gt v3, v5, :cond_8

    .line 8266
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 73
    :goto_5
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    .line 74
    iget-object v5, v0, Lo/cancelScroll;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-nez v5, :cond_9

    const-string v16, "itemData"

    invoke-static/range {v16 .. v16}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10030
    :cond_9
    iget-object v8, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onMessageChannelReady:Ljava/util/List;

    if-eqz v8, :cond_a

    .line 74
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    const-string v14, "holder"

    invoke-static {v0, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "parent"

    invoke-static {v5, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "dimensionRatio"

    invoke-static {v6, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11185
    iget-object v14, v4, Lo/cancelScroll$onPostMessage;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v14, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11186
    iget-object v14, v4, Lo/cancelScroll$onPostMessage;->ICustomTabsCallback:Lo/getSharedPreferences;

    const-string/jumbo v11, "shimmer"

    invoke-static {v14, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroid/view/View;

    invoke-static {v14, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12009
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 11187
    iget-object v11, v4, Lo/cancelScroll$onPostMessage;->ICustomTabsCallback:Lo/getSharedPreferences;

    .line 12090
    iget-object v11, v11, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 13061
    iget-object v14, v11, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v14, :cond_c

    .line 13075
    iget-object v14, v11, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v14, :cond_b

    iget-object v14, v11, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    if-nez v14, :cond_c

    .line 13061
    invoke-virtual {v11}, Lo/і;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 13062
    iget-object v11, v11, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 10104
    :cond_c
    iget-object v11, v4, Lo/cancelScroll$onPostMessage;->onPostMessage:Lo/flagRemovedAndOffsetPosition;

    const-string v14, "image"

    invoke-static {v11, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/view/View;

    invoke-static {v11, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x8

    .line 14017
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 10105
    iget-object v11, v4, Lo/cancelScroll$onPostMessage;->onPostMessage:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v11, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10106
    iget-object v11, v4, Lo/cancelScroll$onPostMessage;->onMessageChannelReady:Lo/setMinimumHeight;

    const-string v13, "lottie"

    invoke-static {v11, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/view/View;

    invoke-static {v11, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 15017
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10107
    iget-object v11, v4, Lo/cancelScroll$onPostMessage;->onMessageChannelReady:Lo/setMinimumHeight;

    invoke-static {v11, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10108
    iget-object v11, v4, Lo/cancelScroll$onPostMessage;->extraCallback:Landroid/widget/FrameLayout;

    const-string/jumbo v13, "videoView"

    invoke-static {v11, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/view/View;

    invoke-static {v11, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16017
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_14

    .line 10110
    iget-object v0, v4, Lo/cancelScroll$onPostMessage;->onNavigationEvent:Landroid/view/View;

    invoke-static {v0, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 17009
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 10111
    iget-object v0, v4, Lo/cancelScroll$onPostMessage;->onNavigationEvent:Landroid/view/View;

    .line 10198
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :cond_13

    check-cast v11, Lo/onChildrenLoaded$onPostMessage;

    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    .line 10199
    move-object v13, v11

    check-cast v13, Lo/onChildrenLoaded$onPostMessage;

    .line 10112
    iput-object v6, v13, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 10200
    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10115
    invoke-static {v3}, Lo/extraCallback;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;)Ljava/util/Map;

    move-result-object v0

    const/4 v11, 0x5

    new-array v13, v11, [Lo/addWrite;

    .line 10116
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    .line 17043
    new-instance v1, Lo/addWrite;

    move-object/from16 v19, v2

    const-string v2, "is_grid"

    invoke-direct {v1, v2, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v13, v2

    .line 10117
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 18043
    new-instance v2, Lo/addWrite;

    const-string v11, "position"

    invoke-direct {v2, v11, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v13, v1

    .line 19043
    new-instance v1, Lo/addWrite;

    const-string v2, "group_size"

    invoke-direct {v1, v2, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v13, v2

    .line 20028
    iget-object v1, v5, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onPostMessage:Ljava/lang/String;

    .line 20043
    new-instance v8, Lo/addWrite;

    const-string v11, "grid_parent_id"

    invoke-direct {v8, v11, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v8, v13, v1

    .line 21035
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 21043
    new-instance v8, Lo/addWrite;

    const-string v11, "parent_component_id"

    invoke-direct {v8, v11, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v8, v13, v5

    const-string v8, "pairs"

    .line 10115
    invoke-static {v13, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21105
    new-instance v8, Ljava/util/HashMap;

    const/4 v11, 0x5

    invoke-static {v11}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    invoke-static {v8, v13}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "$this$plus"

    .line 10115
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "map"

    invoke-static {v8, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21659
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v8}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    .line 10115
    invoke-static {v1}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "discover_card_land"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 22037
    iget-object v0, v3, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 22055
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;

    if-eqz v0, :cond_d

    .line 22079
    iget-object v13, v0, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    .line 23009
    :goto_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v8, 0x1

    .line 23010
    invoke-static {v8, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 10128
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v11, 0x5

    invoke-static {v13, v1, v0, v1, v11}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 23037
    iget-object v11, v3, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 23055
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;

    if-eqz v11, :cond_12

    .line 23077
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;

    if-eqz v11, :cond_12

    .line 23095
    iget-object v13, v11, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v13, :cond_11

    .line 10130
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x18fc4

    if-eq v1, v2, :cond_f

    const v2, 0x5faa95b

    if-eq v1, v2, :cond_e

    const v2, 0x6b0147b

    if-ne v1, v2, :cond_11

    const-string/jumbo v1, "video"

    .line 10150
    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10151
    iget-object v1, v4, Lo/cancelScroll$onPostMessage;->onPostMessage:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 26009
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10152
    iget-object v1, v4, Lo/cancelScroll$onPostMessage;->onPostMessage:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v1

    check-cast v20, Lo/setSpeed;

    .line 26093
    iget-object v1, v11, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->onNavigationEvent:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 10152
    new-instance v2, Lo/cancelScroll$onPostMessage$ICustomTabsCallback;

    invoke-direct {v2, v4, v0}, Lo/cancelScroll$onPostMessage$ICustomTabsCallback;-><init>(Lo/cancelScroll$onPostMessage;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v26, v2

    check-cast v26, Lo/onDisconnectSetValue;

    const/16 v27, 0x1e

    move-object/from16 v21, v1

    invoke-static/range {v20 .. v27}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    goto/16 :goto_c

    .line 10131
    :cond_e
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_f
    const-string v1, "gif"

    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10132
    :goto_9
    iget-object v1, v4, Lo/cancelScroll$onPostMessage;->onPostMessage:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 24009
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10133
    iget-object v1, v4, Lo/cancelScroll$onPostMessage;->onPostMessage:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v1

    check-cast v20, Lo/setSpeed;

    .line 24097
    iget-object v1, v11, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->extraCallback:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 10133
    new-instance v11, Lo/cancelScroll$onPostMessage$extraCallback;

    invoke-direct {v11, v4, v0}, Lo/cancelScroll$onPostMessage$extraCallback;-><init>(Lo/cancelScroll$onPostMessage;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v26, v11

    check-cast v26, Lo/onDisconnectSetValue;

    const/16 v27, 0x1e

    move-object/from16 v21, v1

    invoke-static/range {v20 .. v27}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 10141
    iget-object v0, v4, Lo/cancelScroll$onPostMessage;->onPostMessage:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v0, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25037
    iget-object v1, v3, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 25070
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreAccessibility;

    if-eqz v1, :cond_10

    .line 25114
    iget-object v13, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreAccessibility;->onPostMessage:Ljava/lang/String;

    goto :goto_a

    :cond_10
    const/4 v13, 0x0

    .line 10141
    :goto_a
    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v0, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 10176
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown child asset type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26095
    iget-object v2, v11, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->ICustomTabsCallback:Ljava/lang/String;

    .line 10176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_12
    const/4 v2, 0x0

    :goto_b
    const/16 v1, 0x8

    goto :goto_c

    .line 10198
    :cond_13
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v8, 0x1

    .line 10181
    iget-object v0, v4, Lo/cancelScroll$onPostMessage;->onNavigationEvent:Landroid/view/View;

    invoke-static {v0, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 27017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    move-object/from16 v0, p0

    move/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v11, 0x8

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 7441
    :cond_15
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_16
    return-void
.end method
