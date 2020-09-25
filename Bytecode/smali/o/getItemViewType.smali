.class public final Lo/getItemViewType;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/WinningStatisticsHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cashWon",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "cashWonText",
        "totalWins",
        "totalWinsText",
        "userName",
        "userPhoto",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "winnings",
        "winningsText",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

.field private final asInterface:Lo/createFullSpanItemFromEnd;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Lo/setSpeed;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 8010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->userPhoto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/getItemViewType;->onNavigationEvent:Lo/setSpeed;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->userName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getItemViewType;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->totalWins:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getItemViewType;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->totalWinsText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getItemViewType;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cashWon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getItemViewType;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cashWonText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getItemViewType;->asInterface:Lo/createFullSpanItemFromEnd;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->winnings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getItemViewType;->onTransact:Lo/createFullSpanItemFromEnd;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->winningsText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getItemViewType;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lo/getItemViewType$1;->onNavigationEvent:Lo/getItemViewType$1;

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    instance-of v0, p1, Lo/dispatchNestedPreFling;

    if-eqz v0, :cond_9

    .line 42
    check-cast p1, Lo/dispatchNestedPreFling;

    .line 1008
    iget-object v0, p1, Lo/dispatchNestedPreFling;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;

    .line 1011
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/UserWinningStatistics;

    .line 43
    iget-object v1, p0, Lo/getItemViewType;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "totalWins"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/UserWinningStatistics;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;

    if-eqz v3, :cond_0

    .line 1035
    iget-wide v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;->ICustomTabsCallback:D

    .line 43
    invoke-static {v3, v4}, Lo/resolveComplexDeferredValue;->onPostMessage(D)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lo/getItemViewType;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v3, "totalWinsText"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2008
    iget-object p1, p1, Lo/dispatchNestedPreFling;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;

    .line 2011
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningStatisticsResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/UserWinningStatistics;

    if-eqz p1, :cond_1

    .line 2025
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/UserWinningStatistics;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;

    if-eqz p1, :cond_1

    .line 2034
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 44
    :goto_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lo/getItemViewType;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string v1, "cashWon"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 3027
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/UserWinningStatistics;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;

    if-eqz v1, :cond_2

    .line 3035
    iget-wide v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;->ICustomTabsCallback:D

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf8

    invoke-static/range {v3 .. v10}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lo/getItemViewType;->asInterface:Lo/createFullSpanItemFromEnd;

    const-string v1, "cashWonText"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 4027
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/UserWinningStatistics;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;

    if-eqz v1, :cond_3

    .line 4034
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;->onPostMessage:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 47
    :goto_3
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lo/getItemViewType;->onTransact:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "winnings"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 5028
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/UserWinningStatistics;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;

    if-eqz v1, :cond_4

    .line 5035
    iget-wide v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;->ICustomTabsCallback:D

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf8

    invoke-static/range {v3 .. v10}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Lo/getItemViewType;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "winningsText"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 6028
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/UserWinningStatistics;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;

    if-eqz v0, :cond_5

    .line 6034
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/StatisticsItem;->onPostMessage:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v0, v2

    .line 50
    :goto_5
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lo/getItemViewType;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "userName"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object v0, Lo/setTrackTintMode;->onNavigationEvent:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget-object p1, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {}, Lo/shouldCollapse;->onPostMessage()Lo/setActive;

    move-result-object p1

    .line 7320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_6

    move-object v2, p1

    .line 53
    :cond_6
    check-cast v2, Ljava/lang/String;

    .line 54
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    const/4 v3, 0x1

    :cond_8
    if-nez v3, :cond_9

    .line 55
    iget-object p1, p0, Lo/getItemViewType;->onNavigationEvent:Lo/setSpeed;

    const-string/jumbo v0, "userPhoto"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
