.class final Lo/getItemAnimator$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getItemAnimator;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic onMessageChannelReady:Lo/StaggeredGridLayoutManager;

.field private synthetic onNavigationEvent:Lo/getItemAnimator;


# direct methods
.method constructor <init>(Lo/getItemAnimator;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/getItemAnimator$onNavigationEvent;->onNavigationEvent:Lo/getItemAnimator;

    iput-object p2, p0, Lo/getItemAnimator$onNavigationEvent;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 28
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    iget-object p1, p0, Lo/getItemAnimator$onNavigationEvent;->onNavigationEvent:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onPostMessage(Lo/getItemAnimator;)Lo/onDestroyView;

    move-result-object p1

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 1100
    iget-object p1, p0, Lo/getItemAnimator$onNavigationEvent;->onNavigationEvent:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onNavigationEvent(Lo/getItemAnimator;)Lo/findFirstVisibleItemClosestToEnd;

    move-result-object p1

    .line 1172
    iget-object p1, p1, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    .line 1100
    sget-object v0, Lo/getFirstChildPosition;->onPostMessage:Lo/getFirstChildPosition;

    if-ne p1, v0, :cond_0

    .line 1101
    iget-object p1, p0, Lo/getItemAnimator$onNavigationEvent;->onNavigationEvent:Lo/getItemAnimator;

    const-string/jumbo v0, "win_details_notify_opt_in"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    const-string p1, "opt_in"

    goto :goto_0

    .line 1104
    :cond_0
    iget-object p1, p0, Lo/getItemAnimator$onNavigationEvent;->onNavigationEvent:Lo/getItemAnimator;

    const-string/jumbo v0, "win_details_notify_opt_out"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    const-string p1, "opt_out"

    :goto_0
    const/4 v0, 0x6

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 1108
    iget-object v3, p0, Lo/getItemAnimator$onNavigationEvent;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v3, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 2010
    iget-object v3, v3, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 2021
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onPostMessage:Ljava/lang/String;

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "card_id"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 1109
    iget-object v3, p0, Lo/getItemAnimator$onNavigationEvent;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v3, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 3010
    iget v3, v3, Lo/processAdapterUpdatesAndSetAnimationFlags;->ICustomTabsCallback:I

    .line 1109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "position_vertical"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 1110
    iget-object v3, p0, Lo/getItemAnimator$onNavigationEvent;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v3, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 4010
    iget-object v3, v3, Lo/processAdapterUpdatesAndSetAnimationFlags;->onPostMessage:Ljava/lang/String;

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "game_id"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 1111
    iget-object v3, p0, Lo/getItemAnimator$onNavigationEvent;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v3, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 5010
    iget-object v3, v3, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 5039
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;

    if-nez v3, :cond_1

    const-string v3, "N"

    goto :goto_1

    :cond_1
    const-string v3, "Y"

    .line 5043
    :goto_1
    new-instance v4, Lo/addWrite;

    const-string v5, "interested_count_displayed"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x4

    .line 1112
    iget-object v3, p0, Lo/getItemAnimator$onNavigationEvent;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v3, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 6010
    iget-object v3, v3, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 6039
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;

    if-eqz v3, :cond_2

    .line 6087
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;->ICustomTabsCallback:Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 1112
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x0

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 7043
    new-instance v4, Lo/addWrite;

    const-string v5, "interested_count"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 8043
    new-instance v3, Lo/addWrite;

    const-string v4, "option"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string p1, "pairs"

    .line 1107
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "win_notify_cta_click"

    .line 1107
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 28
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
