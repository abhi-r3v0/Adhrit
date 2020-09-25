.class Lo/determineFrom;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/determineFrom$extraCallback;,
        Lo/determineFrom$onMessageChannelReady;,
        Lo/determineFrom$onPostMessage;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MS:J = 0x7530L

.field private static final KEEP_ALIVE_TIMEOUT_MS:J = 0xafc8L

.field private static final MAX_FRAME_SIZE:I = 0x4000

.field private static connectionId:J


# instance fields
.field private conn:Lo/determineFrom$onMessageChannelReady;

.field private connectTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final connectionContext:Lo/setCrashlyticsDataCollectionEnabled;

.field private delegate:Lo/determineFrom$onPostMessage;

.field private everConnected:Z

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private frameReader:Lo/ExecutorUtils;

.field private isClosed:Z

.field private keepAlive:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final logger:Lo/FileLogStore;

.field private totalFrames:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Ljava/lang/String;Lo/determineFrom$onPostMessage;Ljava/lang/String;)V
    .locals 4

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lo/determineFrom;->everConnected:Z

    .line 157
    iput-boolean v0, p0, Lo/determineFrom;->isClosed:Z

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lo/determineFrom;->totalFrames:J

    .line 173
    iput-object p1, p0, Lo/determineFrom;->connectionContext:Lo/setCrashlyticsDataCollectionEnabled;

    .line 174
    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/determineFrom;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 175
    iput-object p4, p0, Lo/determineFrom;->delegate:Lo/determineFrom$onPostMessage;

    .line 176
    sget-wide v0, Lo/determineFrom;->connectionId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lo/determineFrom;->connectionId:J

    .line 177
    new-instance p4, Lo/FileLogStore;

    invoke-virtual {p1}, Lo/setCrashlyticsDataCollectionEnabled;->getLogger()Lo/deleteLogFile;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ws_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocket"

    invoke-direct {p4, p1, v1, v0}, Lo/FileLogStore;-><init>(Lo/deleteLogFile;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    .line 178
    invoke-direct {p0, p2, p3, p5}, Lo/determineFrom;->createConnection(Lo/grantDataCollectionPermission;Ljava/lang/String;Ljava/lang/String;)Lo/determineFrom$onMessageChannelReady;

    move-result-object p1

    iput-object p1, p0, Lo/determineFrom;->conn:Lo/determineFrom$onMessageChannelReady;

    return-void
.end method

.method static synthetic access$000(Lo/determineFrom;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/determineFrom;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$102(Lo/determineFrom;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/determineFrom;->everConnected:Z

    return p1
.end method

.method static synthetic access$200(Lo/determineFrom;)Lo/FileLogStore;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    return-object p0
.end method

.method static synthetic access$300(Lo/determineFrom;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/determineFrom;->resetKeepAlive()V

    return-void
.end method

.method static synthetic access$400(Lo/determineFrom;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/determineFrom;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$500(Lo/determineFrom;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/determineFrom;->handleIncomingFrame(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lo/determineFrom;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/determineFrom;->onClosed()V

    return-void
.end method

.method static synthetic access$800(Lo/determineFrom;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/determineFrom;->closeIfNeverConnected()V

    return-void
.end method

.method static synthetic access$900(Lo/determineFrom;)Lo/determineFrom$onMessageChannelReady;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/determineFrom;->conn:Lo/determineFrom$onMessageChannelReady;

    return-object p0
.end method

.method private appendFrame(Ljava/lang/String;)V
    .locals 4

    .line 248
    iget-object v0, p0, Lo/determineFrom;->frameReader:Lo/ExecutorUtils;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils;->addString(Ljava/lang/String;)V

    .line 249
    iget-wide v0, p0, Lo/determineFrom;->totalFrames:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/determineFrom;->totalFrames:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 253
    :try_start_0
    iget-object p1, p0, Lo/determineFrom;->frameReader:Lo/ExecutorUtils;

    invoke-virtual {p1}, Lo/ExecutorUtils;->freeze()V

    .line 254
    iget-object p1, p0, Lo/determineFrom;->frameReader:Lo/ExecutorUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/hasSpaceFor;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lo/determineFrom;->frameReader:Lo/ExecutorUtils;

    .line 256
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    const-string v1, "handleIncomingFrame complete frame: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lo/determineFrom;->delegate:Lo/determineFrom$onPostMessage;

    invoke-interface {v0, p1}, Lo/determineFrom$onPostMessage;->onMessage(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 263
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing frame (cast error): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/determineFrom;->frameReader:Lo/ExecutorUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    invoke-virtual {p0}, Lo/determineFrom;->close()V

    .line 265
    invoke-direct {p0}, Lo/determineFrom;->shutdown()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 259
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing frame: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/determineFrom;->frameReader:Lo/ExecutorUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {p0}, Lo/determineFrom;->close()V

    .line 261
    invoke-direct {p0}, Lo/determineFrom;->shutdown()V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeIfNeverConnected()V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lo/determineFrom;->everConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/determineFrom;->isClosed:Z

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "timed out on connect"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lo/determineFrom;->conn:Lo/determineFrom$onMessageChannelReady;

    invoke-interface {v0}, Lo/determineFrom$onMessageChannelReady;->close()V

    :cond_1
    return-void
.end method

.method private createConnection(Lo/grantDataCollectionPermission;Ljava/lang/String;Ljava/lang/String;)Lo/determineFrom$onMessageChannelReady;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Lo/grantDataCollectionPermission;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 186
    :goto_0
    invoke-virtual {p1}, Lo/grantDataCollectionPermission;->isSecure()Z

    move-result v0

    invoke-virtual {p1}, Lo/grantDataCollectionPermission;->getNamespace()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p2, v0, p1, p3}, Lo/grantDataCollectionPermission;->getConnectionUrl(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 187
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 188
    iget-object p3, p0, Lo/determineFrom;->connectionContext:Lo/setCrashlyticsDataCollectionEnabled;

    invoke-virtual {p3}, Lo/setCrashlyticsDataCollectionEnabled;->getUserAgent()Ljava/lang/String;

    move-result-object p3

    const-string v0, "User-Agent"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object p3, p0, Lo/determineFrom;->connectionContext:Lo/setCrashlyticsDataCollectionEnabled;

    invoke-virtual {p3}, Lo/setCrashlyticsDataCollectionEnabled;->getApplicationId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "X-Firebase-GMPID"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance p3, Lo/ringRead;

    iget-object v0, p0, Lo/determineFrom;->connectionContext:Lo/setCrashlyticsDataCollectionEnabled;

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, v1, p2}, Lo/ringRead;-><init>(Lo/setCrashlyticsDataCollectionEnabled;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    new-instance p1, Lo/determineFrom$extraCallback;

    invoke-direct {p1, p0, p3, v1}, Lo/determineFrom$extraCallback;-><init>(Lo/determineFrom;Lo/ringRead;Lo/determineFrom$2;)V

    return-object p1
.end method

.method private extractFrameCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 283
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    invoke-direct {p0, v0}, Lo/determineFrom;->handleNewFrameCount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    :cond_1
    const/4 v0, 0x1

    .line 292
    invoke-direct {p0, v0}, Lo/determineFrom;->handleNewFrameCount(I)V

    return-object p1
.end method

.method private handleIncomingFrame(Ljava/lang/String;)V
    .locals 1

    .line 297
    iget-boolean v0, p0, Lo/determineFrom;->isClosed:Z

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0}, Lo/determineFrom;->resetKeepAlive()V

    .line 299
    invoke-direct {p0}, Lo/determineFrom;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lo/determineFrom;->appendFrame(Ljava/lang/String;)V

    return-void

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lo/determineFrom;->extractFrameCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    invoke-direct {p0, p1}, Lo/determineFrom;->appendFrame(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleNewFrameCount(I)V
    .locals 3

    int-to-long v0, p1

    .line 271
    iput-wide v0, p0, Lo/determineFrom;->totalFrames:J

    .line 272
    new-instance p1, Lo/ExecutorUtils;

    invoke-direct {p1}, Lo/ExecutorUtils;-><init>()V

    iput-object p1, p0, Lo/determineFrom;->frameReader:Lo/ExecutorUtils;

    .line 273
    iget-object p1, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HandleNewFrameCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/determineFrom;->totalFrames:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private isBuffering()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lo/determineFrom;->frameReader:Lo/ExecutorUtils;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private nop()Ljava/lang/Runnable;
    .locals 1

    .line 324
    new-instance v0, Lo/determineFrom$5;

    invoke-direct {v0, p0}, Lo/determineFrom$5;-><init>(Lo/determineFrom;)V

    return-object v0
.end method

.method private onClosed()V
    .locals 4

    .line 342
    iget-boolean v0, p0, Lo/determineFrom;->isClosed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "closing itself"

    invoke-virtual {v0, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lo/determineFrom;->shutdown()V

    :cond_1
    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lo/determineFrom;->conn:Lo/determineFrom$onMessageChannelReady;

    .line 347
    iget-object v0, p0, Lo/determineFrom;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method private resetKeepAlive()V
    .locals 5

    .line 311
    iget-boolean v0, p0, Lo/determineFrom;->isClosed:Z

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lo/determineFrom;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 314
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reset keepAlive. Remaining: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/determineFrom;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Reset keepAlive"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/determineFrom;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lo/determineFrom;->nop()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lo/determineFrom;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private shutdown()V
    .locals 2

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lo/determineFrom;->isClosed:Z

    .line 354
    iget-object v0, p0, Lo/determineFrom;->delegate:Lo/determineFrom$onPostMessage;

    iget-boolean v1, p0, Lo/determineFrom;->everConnected:Z

    invoke-interface {v0, v1}, Lo/determineFrom$onPostMessage;->onDisconnect(Z)V

    return-void
.end method

.method private static splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object p0, p1, v1

    return-object p1

    .line 368
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int v2, v1, p1

    .line 370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 371
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 214
    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "websocket is being closed"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lo/determineFrom;->isClosed:Z

    .line 219
    iget-object v1, p0, Lo/determineFrom;->conn:Lo/determineFrom$onMessageChannelReady;

    invoke-interface {v1}, Lo/determineFrom$onMessageChannelReady;->close()V

    .line 220
    iget-object v1, p0, Lo/determineFrom;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 223
    :cond_1
    iget-object v1, p0, Lo/determineFrom;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    .line 224
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public open()V
    .locals 5

    .line 196
    iget-object v0, p0, Lo/determineFrom;->conn:Lo/determineFrom$onMessageChannelReady;

    invoke-interface {v0}, Lo/determineFrom$onMessageChannelReady;->connect()V

    .line 197
    iget-object v0, p0, Lo/determineFrom;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/determineFrom$2;

    invoke-direct {v1, p0}, Lo/determineFrom$2;-><init>(Lo/determineFrom;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    .line 198
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lo/determineFrom;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public send(Ljava/util/Map;)V
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

    .line 229
    invoke-direct {p0}, Lo/determineFrom;->resetKeepAlive()V

    .line 232
    :try_start_0
    invoke-static {p1}, Lo/hasSpaceFor;->serializeJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4000

    .line 233
    invoke-static {v0, v1}, Lo/determineFrom;->splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 234
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 235
    iget-object v1, p0, Lo/determineFrom;->conn:Lo/determineFrom$onMessageChannelReady;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/determineFrom$onMessageChannelReady;->send(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 238
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 239
    iget-object v2, p0, Lo/determineFrom;->conn:Lo/determineFrom$onMessageChannelReady;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lo/determineFrom$onMessageChannelReady;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 242
    iget-object v1, p0, Lo/determineFrom;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to serialize message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    invoke-direct {p0}, Lo/determineFrom;->shutdown()V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
