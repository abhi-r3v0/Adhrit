.class Lin/juspay/hypersdk/core/LogPusher$LogFlushTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/LogPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogFlushTimerTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lin/juspay/hypersdk/core/LogPusher$1;)V
    .locals 0

    invoke-direct {p0}, Lin/juspay/hypersdk/core/LogPusher$LogFlushTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$400()Lin/juspay/a/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$600()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :try_start_1
    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$600()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$400()Lin/juspay/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$400()Lin/juspay/a/a/a;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lin/juspay/a/a/a;->a([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    :try_start_2
    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$708()I

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$700()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    const-string v2, "LogPusher"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "log_pusher"

    const-string v6, "Exception while flushing the logs to persisted queue file"

    invoke-static/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string v1, "LogPusher"

    const-string v2, "Exception while flushing the logs to persisted queue file"

    invoke-static {v1, v2, v7}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
