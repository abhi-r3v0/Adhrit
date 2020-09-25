.class Lin/juspay/hypersdk/core/LogPusher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/hypersdk/core/LogPusher$LogPushTimerTask;,
        Lin/juspay/hypersdk/core/LogPusher$LogFlushTimerTask;,
        Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;
    }
.end annotation


# static fields
.field private static final LOGS_FILE_PATH:Ljava/lang/String; = "juspay-logs-queue.dat"

.field private static final LOGS_FLUSH_INTERVAL:I = 0x7d0

.field private static final LOGS_POST_INTERVAL:I = 0x2710

.field private static final MAX_LOGS_PER_PUSH:J = 0x4bL

.field private static final PERSISTED_LOGS_IO_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "LogPusher"

.field private static getLogsToPushErrorCounter:I

.field private static final inMemoryLogsBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static logFlushTimerTaskErrorCounter:I

.field private static logPushTimerTaskErrorCounter:I

.field private static persistedLogsIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static persistedLogsQueue:Lin/juspay/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lin/juspay/hypersdk/core/LogPusher;->PERSISTED_LOGS_IO_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lin/juspay/hypersdk/core/LogPusher;->inMemoryLogsBuffer:Ljava/util/Queue;

    const/4 v0, 0x0

    sput v0, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPushErrorCounter:I

    sput v0, Lin/juspay/hypersdk/core/LogPusher;->logFlushTimerTaskErrorCounter:I

    sput v0, Lin/juspay/hypersdk/core/LogPusher;->logPushTimerTaskErrorCounter:I

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "juspay-logs-queue.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    new-instance v2, Lin/juspay/a/a/a$a;

    invoke-direct {v2, v1}, Lin/juspay/a/a/a$a;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lin/juspay/a/a/a$a;->a()Lin/juspay/a/a/a;

    move-result-object v2

    sput-object v2, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsQueue:Lin/juspay/a/a/a;

    new-instance v3, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;

    invoke-direct {v3, v2}, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;-><init>(Ljava/lang/Iterable;)V

    sput-object v3, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsIterable:Ljava/lang/Iterable;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v8, v2

    const-string v3, "LogPusher"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "log_pusher"

    const-string v7, "Exception when trying to open cached log file"

    invoke-static/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "system"

    const-string v4, "info"

    const-string v5, "log_pusher"

    const-string v6, "cache_file_deleted"

    invoke-static {v3, v4, v5, v6, v2}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v8, v2

    const-string v3, "LogPusher"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "log_pusher"

    const-string v7, "Reached end of file while trying to read cached logs"

    invoke-static/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    sget-object v2, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsQueue:Lin/juspay/a/a/a;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    :cond_2
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lin/juspay/hypersdk/core/LogPusher$LogPushTimerTask;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lin/juspay/hypersdk/core/LogPusher$LogPushTimerTask;-><init>(Lin/juspay/hypersdk/core/LogPusher$1;)V

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x2710

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    sget-object v1, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsQueue:Lin/juspay/a/a/a;

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lin/juspay/hypersdk/core/LogPusher$LogFlushTimerTask;

    invoke-direct {v3, v0}, Lin/juspay/hypersdk/core/LogPusher$LogFlushTimerTask;-><init>(Lin/juspay/hypersdk/core/LogPusher$1;)V

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x7d0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_3
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(I)V
    .locals 0

    invoke-static {p0}, Lin/juspay/hypersdk/core/LogPusher;->acknowledgeLogsPushed(I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPushErrorCounter:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    sget v0, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPushErrorCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPushErrorCounter:I

    return v0
.end method

.method static synthetic access$400()Lin/juspay/a/a/a;
    .locals 1

    sget-object v0, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsQueue:Lin/juspay/a/a/a;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lin/juspay/hypersdk/core/LogPusher;->PERSISTED_LOGS_IO_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Queue;
    .locals 1

    sget-object v0, Lin/juspay/hypersdk/core/LogPusher;->inMemoryLogsBuffer:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lin/juspay/hypersdk/core/LogPusher;->logFlushTimerTaskErrorCounter:I

    return v0
.end method

.method static synthetic access$708()I
    .locals 2

    sget v0, Lin/juspay/hypersdk/core/LogPusher;->logFlushTimerTaskErrorCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lin/juspay/hypersdk/core/LogPusher;->logFlushTimerTaskErrorCounter:I

    return v0
.end method

.method static synthetic access$800()Lorg/json/JSONArray;
    .locals 1

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPush()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->getEndPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static acknowledgeLogsPushed(I)V
    .locals 7

    sget-object v0, Lin/juspay/hypersdk/core/LogPusher;->PERSISTED_LOGS_IO_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsQueue:Lin/juspay/a/a/a;

    if-eqz v1, :cond_0

    sget-object v1, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsQueue:Lin/juspay/a/a/a;

    invoke-virtual {v1, p0}, Lin/juspay/a/a/a;->a(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    sget-object v2, Lin/juspay/hypersdk/core/LogPusher;->inMemoryLogsBuffer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v6, p0

    :try_start_1
    sget p0, Lin/juspay/hypersdk/core/LogPusher;->logPushTimerTaskErrorCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lin/juspay/hypersdk/core/LogPusher;->logPushTimerTaskErrorCounter:I

    const/4 v1, 0x2

    if-gt p0, v1, :cond_1

    const-string v1, "LogPusher"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "log_pusher"

    const-string v5, "Exception in removal of logs from persisted Queue file"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string p0, "LogPusher"

    const-string v1, "Exception in removal of logs from persisted Queue file"

    invoke-static {p0, v1, v6}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method static addLogLine(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lin/juspay/hypersdk/core/LogPusher;->inMemoryLogsBuffer:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getEndPoint()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->juspay_analytics_endpoint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLogsToPush()Lorg/json/JSONArray;
    .locals 2

    sget-object v0, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsQueue:Lin/juspay/a/a/a;

    if-nez v0, :cond_0

    sget-object v0, Lin/juspay/hypersdk/core/LogPusher;->inMemoryLogsBuffer:Ljava/util/Queue;

    invoke-static {v0}, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPush(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lin/juspay/hypersdk/core/LogPusher;->PERSISTED_LOGS_IO_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lin/juspay/hypersdk/core/LogPusher;->persistedLogsIterable:Ljava/lang/Iterable;

    invoke-static {v1}, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPush(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getLogsToPush(Ljava/lang/Iterable;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    const-wide/16 v4, 0x4b

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    move-object v5, p0

    sget p0, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPushErrorCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lin/juspay/hypersdk/core/LogPusher;->getLogsToPushErrorCounter:I

    const/4 v0, 0x2

    if-gt p0, v0, :cond_2

    const-string v0, "LogPusher"

    const-string v1, "action"

    const-string v2, "system"

    const-string v3, "log_pusher"

    const-string v4, "Exception in reading logs from persisted Queue file"

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string p0, "LogPusher"

    const-string v0, "Exception in reading logs from persisted Queue file"

    invoke-static {p0, v0, v5}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
