.class final Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub$Proxy;
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
.field private synthetic ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 56
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 1124
    iget-object v2, p0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {v2}, Lo/offsetPositionRecordsForRemove;->onPostMessage(Lo/offsetPositionRecordsForRemove;)Lo/evictionCount;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/evictionCount;->onMessageChannelReady()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "time_spent"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v3, "pairs"

    .line 1123
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1125
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->extraCallback(Lo/offsetPositionRecordsForRemove;)Lo/saveOldPositions;

    move-result-object v0

    invoke-virtual {v0}, Lo/saveOldPositions;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "arcade_number_cta_click"

    .line 1122
    invoke-static {v0, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1127
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1128
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {p1}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;)V

    .line 56
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
