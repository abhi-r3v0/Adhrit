.class public final Lo/ItemTouchHelper;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/adapter/LoanPayViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "subTitle",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "title",
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
.field private final extraCallback:Landroid/widget/TextView;

.field private final onNavigationEvent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 4010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0150

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 45
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/ItemTouchHelper;->extraCallback:Landroid/widget/TextView;

    .line 46
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/ItemTouchHelper;->onNavigationEvent:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p1, Lo/setupCallbacks;

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lo/ItemTouchHelper;->extraCallback:Landroid/widget/TextView;

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setupCallbacks;

    .line 1035
    iget-object v2, p1, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 1064
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->onMessageChannelReady:Lo/getTargetScrollPosition;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 49
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2035
    iget-object v0, p1, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 2066
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_1

    .line 3000
    iget-object v0, v0, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 50
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    const-string v4, "itemView"

    const-string/jumbo v5, "subTitle"

    if-eqz v0, :cond_4

    .line 51
    iget-object p1, p0, Lo/ItemTouchHelper;->extraCallback:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/ItemTouchHelper;->extraCallback:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "title.context"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f140358

    invoke-static {p1, v0, v1}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 52
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/ItemTouchHelper$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/ItemTouchHelper$onMessageChannelReady;-><init>(Lo/ItemTouchHelper;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 55
    iget-object p1, p0, Lo/ItemTouchHelper;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 57
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/ItemTouchHelper$extraCallback;

    invoke-direct {v1, p0}, Lo/ItemTouchHelper$extraCallback;-><init>(Lo/ItemTouchHelper;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 60
    iget-object v0, p0, Lo/ItemTouchHelper;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lo/ItemTouchHelper;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3035
    iget-object p1, p1, Lo/setupCallbacks;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    .line 3066
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_5

    .line 4000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    .line 61
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method
