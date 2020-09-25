.class final Lo/clearOnChildAttachStateChangeListeners$warmup;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearOnChildAttachStateChangeListeners;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners;)V
    .locals 0

    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 53
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    const-string v0, "loaderView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 1184
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p1}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object p1

    .line 2057
    iget-object p1, p1, Lo/addItemDecoration;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;

    const-string v0, "Calendar.getInstance()"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3043
    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;->extraCallback:J

    .line 1185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 3051
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    if-eqz p1, :cond_1

    .line 3065
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 1186
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    .line 1188
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_2
    move-wide v5, v3

    :goto_1
    cmp-long p1, v5, v3

    if-gtz p1, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    move-wide v0, v3

    :goto_2
    cmp-long p1, v0, v3

    if-gtz p1, :cond_5

    .line 1189
    :cond_4
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p1}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object p1

    .line 4057
    iget-object p1, p1, Lo/addItemDecoration;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;

    if-eqz p1, :cond_5

    .line 5049
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardDetailsResponse;->asInterface:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 1190
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v0}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object v0

    invoke-virtual {v0}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v0

    const-string v1, "leaderboard_share_click"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1191
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->leaderBoardRecyclerView:I

    invoke-virtual {v0, v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1192
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->leaderBoardRecyclerView:I

    invoke-virtual {v0, v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;

    invoke-direct {v1, p1, p0}, Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;-><init>(Ljava/lang/String;Lo/clearOnChildAttachStateChangeListeners$warmup;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    :cond_5
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
