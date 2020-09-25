.class final Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$setState$3$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove$extraCommand;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1215
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v1, v1, Lo/offsetPositionRecordsForRemove$extraCommand;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast v1, Lo/saveOldPositions$extraCallback$onMessageChannelReady;

    .line 2155
    iget-object v1, v1, Lo/saveOldPositions$extraCallback$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    .line 1215
    invoke-static {v0, v1}, Lo/offsetPositionRecordsForRemove;->onPostMessage(Lo/offsetPositionRecordsForRemove;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;)V

    .line 1216
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast v0, Lo/saveOldPositions$extraCallback$onMessageChannelReady;

    .line 3155
    iget-object v0, v0, Lo/saveOldPositions$extraCallback$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    .line 4036
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asBinder:Ljava/lang/String;

    const-string v1, "lose"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    .line 4059
    iget-object v0, v0, Lo/offsetPositionRecordsForRemove;->extraCallback:Lo/onChildrenLoaded;

    if-eqz v0, :cond_0

    .line 1217
    new-instance v1, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent$5;

    invoke-direct {v1, p0}, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent$5;-><init>(Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1223
    :cond_0
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->onPostMessage(Lo/offsetPositionRecordsForRemove;)Lo/evictionCount;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/evictionCount;->onPostMessage()V

    .line 1225
    :cond_1
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    const/4 v1, 0x2

    iget-object v2, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v2, v2, Lo/offsetPositionRecordsForRemove$extraCommand;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast v2, Lo/saveOldPositions$extraCallback$onMessageChannelReady;

    .line 4155
    iget-object v2, v2, Lo/saveOldPositions$extraCallback$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    .line 1225
    invoke-static {v0, v1, v2}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;ILcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;)V

    .line 1226
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->extraCallback(Lo/offsetPositionRecordsForRemove;)Lo/saveOldPositions;

    move-result-object v0

    .line 5029
    iget-object v0, v0, Lo/saveOldPositions;->extraCallback:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 5320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1226
    :goto_0
    check-cast v0, Lo/saveOldPositions$ICustomTabsCallback;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(Lo/saveOldPositions$ICustomTabsCallback;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1227
    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v1, v1, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    iget-object v2, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v2, v2, Lo/offsetPositionRecordsForRemove$extraCommand;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast v2, Lo/saveOldPositions$extraCallback$onMessageChannelReady;

    .line 6155
    iget-object v2, v2, Lo/saveOldPositions$extraCallback$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    .line 1227
    invoke-static {v1, v2, v0}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;Ljava/lang/String;)V

    .line 56
    :cond_3
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
