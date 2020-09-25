.class Lo/waitForAutomaticDataCollectionEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/determineFrom$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;,
        Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;,
        Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "t"

.field private static final REQUEST_TYPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE:Ljava/lang/String; = "c"

.field private static final SERVER_CONTROL_MESSAGE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String; = "h"

.field private static final SERVER_CONTROL_MESSAGE_RESET:Ljava/lang/String; = "r"

.field private static final SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String; = "s"

.field private static final SERVER_CONTROL_MESSAGE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_MESSAGE:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_HELLO_HOST:Ljava/lang/String; = "h"

.field private static final SERVER_HELLO_SESSION_ID:Ljava/lang/String; = "s"

.field private static final SERVER_HELLO_TIMESTAMP:Ljava/lang/String; = "ts"

.field private static connectionIds:J


# instance fields
.field private conn:Lo/determineFrom;

.field private delegate:Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;

.field private hostInfo:Lo/grantDataCollectionPermission;

.field private final logger:Lo/FileLogStore;

.field private state:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Ljava/lang/String;Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)V
    .locals 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-wide v0, Lo/waitForAutomaticDataCollectionEnabled;->connectionIds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lo/waitForAutomaticDataCollectionEnabled;->connectionIds:J

    .line 80
    iput-object p2, p0, Lo/waitForAutomaticDataCollectionEnabled;->hostInfo:Lo/grantDataCollectionPermission;

    .line 81
    iput-object p4, p0, Lo/waitForAutomaticDataCollectionEnabled;->delegate:Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;

    .line 82
    new-instance p4, Lo/FileLogStore;

    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getLogger()Lo/deleteLogFile;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "conn_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-direct {p4, v2, v1, v0}, Lo/FileLogStore;-><init>(Lo/deleteLogFile;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    .line 83
    sget-object p4, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTING:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    iput-object p4, p0, Lo/waitForAutomaticDataCollectionEnabled;->state:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    .line 84
    new-instance p4, Lo/determineFrom;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/determineFrom;-><init>(Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Ljava/lang/String;Lo/determineFrom$onPostMessage;Ljava/lang/String;)V

    iput-object p4, p0, Lo/waitForAutomaticDataCollectionEnabled;->conn:Lo/determineFrom;

    return-void
.end method

.method private onConnectionReady(JLjava/lang/String;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "realtime connection established"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_0
    sget-object v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    iput-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->state:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    .line 217
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->delegate:Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;

    invoke-interface {v0, p1, p2, p3}, Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;->onReady(JLjava/lang/String;)V

    return-void
.end method

.method private onConnectionShutdown(Ljava/lang/String;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Connection shutdown command received. Shutting down..."

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->delegate:Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;

    invoke-interface {v0, p1}, Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;->onKill(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lo/waitForAutomaticDataCollectionEnabled;->close()V

    return-void
.end method

.method private onControlMessage(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got control message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    const-string v0, "t"

    .line 170
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v2, "s"

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "d"

    if-eqz v2, :cond_1

    .line 173
    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 174
    invoke-direct {p0, p1}, Lo/waitForAutomaticDataCollectionEnabled;->onConnectionShutdown(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "r"

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lo/waitForAutomaticDataCollectionEnabled;->onReset(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "h"

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 182
    invoke-direct {p0, p1}, Lo/waitForAutomaticDataCollectionEnabled;->onHandshake(Ljava/util/Map;)V

    return-void

    .line 184
    :cond_3
    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    const-string v2, "Ignoring unknown control message: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 187
    :cond_4
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got invalid control message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_5
    invoke-virtual {p0}, Lo/waitForAutomaticDataCollectionEnabled;->close()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 191
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse control message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_7
    invoke-virtual {p0}, Lo/waitForAutomaticDataCollectionEnabled;->close()V

    return-void
.end method

.method private onDataMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received data message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->delegate:Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;

    invoke-interface {v0, p1}, Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;->onDataMessage(Ljava/util/Map;)V

    return-void
.end method

.method private onHandshake(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ts"

    .line 203
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-string v2, "h"

    .line 204
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    iget-object v3, p0, Lo/waitForAutomaticDataCollectionEnabled;->delegate:Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;

    invoke-interface {v3, v2}, Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;->onCacheHost(Ljava/lang/String;)V

    const-string v2, "s"

    .line 206
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lo/waitForAutomaticDataCollectionEnabled;->state:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    sget-object v3, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTING:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    if-ne v2, v3, :cond_0

    .line 209
    iget-object v2, p0, Lo/waitForAutomaticDataCollectionEnabled;->conn:Lo/determineFrom;

    invoke-virtual {v2}, Lo/determineFrom;->start()V

    .line 210
    invoke-direct {p0, v0, v1, p1}, Lo/waitForAutomaticDataCollectionEnabled;->onConnectionReady(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onReset(Ljava/lang/String;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got a reset; killing connection to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/waitForAutomaticDataCollectionEnabled;->hostInfo:Lo/grantDataCollectionPermission;

    .line 224
    invoke-virtual {v2}, Lo/grantDataCollectionPermission;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; Updating internalHost to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 222
    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->delegate:Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;

    invoke-interface {v0, p1}, Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;->onCacheHost(Ljava/lang/String;)V

    .line 231
    sget-object p1, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->SERVER_RESET:Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    invoke-virtual {p0, p1}, Lo/waitForAutomaticDataCollectionEnabled;->close(Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;)V

    return-void
.end method

.method private sendData(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->state:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    sget-object v1, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 236
    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Tried to send on an unconnected connection"

    invoke-virtual {p1, v0, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 239
    iget-object p2, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Sending data (contents hidden)"

    invoke-virtual {p2, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p2, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "Sending data: %s"

    invoke-virtual {p2, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :goto_0
    iget-object p2, p0, Lo/waitForAutomaticDataCollectionEnabled;->conn:Lo/determineFrom;

    invoke-virtual {p2, p1}, Lo/determineFrom;->send(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 107
    sget-object v0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->OTHER:Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/waitForAutomaticDataCollectionEnabled;->close(Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;)V

    return-void
.end method

.method public close(Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->state:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    sget-object v1, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_DISCONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    if-eq v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "closing realtime connection"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_0
    sget-object v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_DISCONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    iput-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->state:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    .line 97
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->conn:Lo/determineFrom;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lo/determineFrom;->close()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->conn:Lo/determineFrom;

    .line 102
    :cond_1
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->delegate:Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;

    invoke-interface {v0, p1}, Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;->onDisconnect(Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;)V

    :cond_2
    return-void
.end method

.method public injectConnectionFailure()V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lo/waitForAutomaticDataCollectionEnabled;->close()V

    return-void
.end method

.method public onDisconnect(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->conn:Lo/determineFrom;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->state:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    sget-object v1, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTING:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    if-ne p1, v1, :cond_0

    .line 153
    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Realtime connection failed"

    invoke-virtual {p1, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Realtime connection lost"

    invoke-virtual {p1, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/waitForAutomaticDataCollectionEnabled;->close()V

    return-void
.end method

.method public onMessage(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "d"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "t"

    .line 123
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 128
    invoke-direct {p0, p1}, Lo/waitForAutomaticDataCollectionEnabled;->onDataMessage(Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v3, "c"

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 132
    invoke-direct {p0, p1}, Lo/waitForAutomaticDataCollectionEnabled;->onControlMessage(Ljava/util/Map;)V

    return-void

    .line 134
    :cond_1
    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 135
    iget-object p1, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    const-string v0, "Ignoring unknown server message type: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse server message: missing message type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v0, p1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_3
    invoke-virtual {p0}, Lo/waitForAutomaticDataCollectionEnabled;->close()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 144
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse server message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_5
    invoke-virtual {p0}, Lo/waitForAutomaticDataCollectionEnabled;->close()V

    return-void
.end method

.method public open()V
    .locals 3

    .line 88
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Opening a connection"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lo/waitForAutomaticDataCollectionEnabled;->conn:Lo/determineFrom;

    invoke-virtual {v0}, Lo/determineFrom;->open()V

    return-void
.end method

.method public sendRequest(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "d"

    const-string v2, "t"

    .line 114
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0, v0, p2}, Lo/waitForAutomaticDataCollectionEnabled;->sendData(Ljava/util/Map;Z)V

    return-void
.end method
