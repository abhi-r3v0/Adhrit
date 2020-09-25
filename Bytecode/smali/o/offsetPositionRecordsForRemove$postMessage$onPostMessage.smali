.class final Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetPositionRecordsForRemove$postMessage;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$setState$4$1$1$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$setState$4$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove$postMessage;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1249
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;

    iget-object v1, v1, Lo/offsetPositionRecordsForRemove$postMessage;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast v1, Lo/saveOldPositions$extraCallback$onPostMessage;

    .line 2156
    iget-object v1, v1, Lo/saveOldPositions$extraCallback$onPostMessage;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    .line 1249
    invoke-static {v0, v1}, Lo/offsetPositionRecordsForRemove;->onPostMessage(Lo/offsetPositionRecordsForRemove;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;)V

    .line 1250
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;

    iget-object v1, v1, Lo/offsetPositionRecordsForRemove$postMessage;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast v1, Lo/saveOldPositions$extraCallback$onPostMessage;

    .line 3156
    iget-object v1, v1, Lo/saveOldPositions$extraCallback$onPostMessage;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    const/4 v2, 0x4

    .line 1250
    invoke-static {v0, v2, v1}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;ILcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;)V

    .line 1251
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->extraCallback(Lo/offsetPositionRecordsForRemove;)Lo/saveOldPositions;

    move-result-object v0

    .line 4029
    iget-object v0, v0, Lo/saveOldPositions;->extraCallback:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1251
    :goto_0
    check-cast v0, Lo/saveOldPositions$ICustomTabsCallback;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(Lo/saveOldPositions$ICustomTabsCallback;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1252
    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;

    iget-object v1, v1, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    iget-object v2, p0, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$postMessage;

    iget-object v2, v2, Lo/offsetPositionRecordsForRemove$postMessage;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast v2, Lo/saveOldPositions$extraCallback$onPostMessage;

    .line 5156
    iget-object v2, v2, Lo/saveOldPositions$extraCallback$onPostMessage;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    .line 1252
    invoke-static {v1, v2, v0}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;Ljava/lang/String;)V

    .line 56
    :cond_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
