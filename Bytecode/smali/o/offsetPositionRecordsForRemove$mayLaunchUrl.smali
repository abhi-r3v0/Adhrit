.class final Lo/offsetPositionRecordsForRemove$mayLaunchUrl;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/offsetPositionRecordsForRemove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/trimToSize;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/androidapp/utils/DownloadListeners;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$setViewData$1$1$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

.field final synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lo/offsetPositionRecordsForRemove;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$mayLaunchUrl;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    iput-object p2, p0, Lo/offsetPositionRecordsForRemove$mayLaunchUrl;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 56
    check-cast p1, Lo/trimToSize;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    new-instance v0, Lo/offsetPositionRecordsForRemove$mayLaunchUrl$4;

    invoke-direct {v0, p0}, Lo/offsetPositionRecordsForRemove$mayLaunchUrl$4;-><init>(Lo/offsetPositionRecordsForRemove$mayLaunchUrl;)V

    check-cast v0, Lo/nextTransactionOrder;

    const-string v1, "downloadFinishListener"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2104
    new-instance v1, Lo/trimToSize$onPostMessage;

    invoke-direct {v1, v0}, Lo/trimToSize$onPostMessage;-><init>(Lo/nextTransactionOrder;)V

    check-cast v1, Lo/trimToSize$onNavigationEvent;

    iput-object v1, p1, Lo/trimToSize;->onPostMessage:Lo/trimToSize$onNavigationEvent;

    .line 1387
    new-instance v0, Lo/offsetPositionRecordsForRemove$mayLaunchUrl$3;

    invoke-direct {v0, p0}, Lo/offsetPositionRecordsForRemove$mayLaunchUrl$3;-><init>(Lo/offsetPositionRecordsForRemove$mayLaunchUrl;)V

    check-cast v0, Lo/nextTransactionOrder;

    const-string v1, "downloadFailedListener"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2112
    new-instance v1, Lo/trimToSize$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/trimToSize$ICustomTabsCallback;-><init>(Lo/nextTransactionOrder;)V

    check-cast v1, Lo/trimToSize$extraCallback;

    iput-object v1, p1, Lo/trimToSize;->extraCallback:Lo/trimToSize$extraCallback;

    .line 56
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
