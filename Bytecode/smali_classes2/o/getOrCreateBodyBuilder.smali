.class public Lo/getOrCreateBodyBuilder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_DELAY_SEC:J


# instance fields
.field private final context:Landroid/content/Context;

.field private final iid:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final metadata:Lo/parseEventSignal;

.field private final pendingOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final rpc:Lo/parseDevice;

.field private final store:Lo/part;

.field private final syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private syncScheduledOrRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lo/getOrCreateBodyBuilder;->MAX_DELAY_SEC:J

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/part;Lo/parseDevice;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lo/getOrCreateBodyBuilder;->syncScheduledOrRunning:Z

    .line 6
    iput-object p1, p0, Lo/getOrCreateBodyBuilder;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 7
    iput-object p2, p0, Lo/getOrCreateBodyBuilder;->metadata:Lo/parseEventSignal;

    .line 8
    iput-object p3, p0, Lo/getOrCreateBodyBuilder;->store:Lo/part;

    .line 9
    iput-object p4, p0, Lo/getOrCreateBodyBuilder;->rpc:Lo/parseDevice;

    .line 10
    iput-object p5, p0, Lo/getOrCreateBodyBuilder;->context:Landroid/content/Context;

    .line 11
    iput-object p6, p0, Lo/getOrCreateBodyBuilder;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private addToPendingOperations(Lo/HttpRequestFactory;Lo/removeBackgroundStateChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HttpRequestFactory;",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lo/HttpRequestFactory;->serialize()Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object v1, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayDeque;

    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 28
    iget-object v2, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 29
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private static awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1e

    .line 96
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lo/clearInstancesForTest;->ICustomTabsCallback(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 105
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 99
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 101
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 103
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 100
    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private blockingSubscribeToTopic(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lo/getOrCreateBodyBuilder;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lo/getOrCreateBodyBuilder;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/parseEventExecutionException;

    .line 89
    iget-object v1, p0, Lo/getOrCreateBodyBuilder;->rpc:Lo/parseDevice;

    invoke-interface {v0}, Lo/parseEventExecutionException;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lo/parseEventExecutionException;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lo/parseDevice;->subscribeToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lo/getOrCreateBodyBuilder;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void
.end method

.method private blockingUnsubscribeFromTopic(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lo/getOrCreateBodyBuilder;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lo/getOrCreateBodyBuilder;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/parseEventExecutionException;

    .line 92
    iget-object v1, p0, Lo/getOrCreateBodyBuilder;->rpc:Lo/parseDevice;

    .line 93
    invoke-interface {v0}, Lo/parseEventExecutionException;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lo/parseEventExecutionException;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lo/parseDevice;->unsubscribeFromTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 94
    invoke-static {p1}, Lo/getOrCreateBodyBuilder;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void
.end method

.method public static createInstance(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            "Lo/parseEventSignal;",
            "Lo/CrashlyticsReportPersistence$$Lambda$2;",
            "Lo/parseFile;",
            "Lo/CrashlyticsReportJsonTransform$$Lambda$4;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/getOrCreateBodyBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lo/parseDevice;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/parseDevice;-><init>(Lcom/google/firebase/FirebaseApp;Lo/parseEventSignal;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;Lo/CrashlyticsReportJsonTransform$$Lambda$4;)V

    invoke-static {p1, p2, v6, p6, p7}, Lo/getOrCreateBodyBuilder;->createInstance(Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/parseDevice;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static createInstance(Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/parseDevice;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            "Lo/parseEventSignal;",
            "Lo/parseDevice;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/getOrCreateBodyBuilder;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v6, Lo/lastIndexOf;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/lastIndexOf;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/parseDevice;)V

    invoke-static {p4, v6}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static isDebugLogEnabled()Z
    .locals 4

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final synthetic lambda$createInstance$0$TopicsSubscriber(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/parseDevice;)Lo/getOrCreateBodyBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-static {p0, p1}, Lo/part;->getInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lo/part;

    move-result-object v3

    .line 113
    new-instance v7, Lo/getOrCreateBodyBuilder;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lo/getOrCreateBodyBuilder;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/part;Lo/parseDevice;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v7
.end method

.method private markCompletePendingOperation(Lo/HttpRequestFactory;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lo/HttpRequestFactory;->serialize()Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v1, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    monitor-exit v0

    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeBackgroundStateChangeListener;

    if-eqz v2, :cond_1

    .line 2008
    iget-object v2, v2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lo/getOrCreateBodyBuilder;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private startSync()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lo/getOrCreateBodyBuilder;->isSyncScheduledOrRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Lo/getOrCreateBodyBuilder;->syncWithDelaySecondsInternal(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method hasPendingOperation()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lo/getOrCreateBodyBuilder;->store:Lo/part;

    invoke-virtual {v0}, Lo/part;->getNextTopicOperation()Lo/HttpRequestFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized isSyncScheduledOrRunning()Z
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lo/getOrCreateBodyBuilder;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method performTopicOperation(Lo/HttpRequestFactory;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lo/HttpRequestFactory;->getOperation()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/16 v5, 0x53

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const/16 v5, 0x55

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "U"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "S"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    const-string v2, " succeeded."

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    .line 75
    :try_start_1
    invoke-static {}, Lo/getOrCreateBodyBuilder;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown topic operation"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p1}, Lo/HttpRequestFactory;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/getOrCreateBodyBuilder;->blockingUnsubscribeFromTopic(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lo/getOrCreateBodyBuilder;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    invoke-virtual {p1}, Lo/HttpRequestFactory;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsubscribe from topic: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p1}, Lo/HttpRequestFactory;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/getOrCreateBodyBuilder;->blockingSubscribeToTopic(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lo/getOrCreateBodyBuilder;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 71
    invoke-virtual {p1}, Lo/HttpRequestFactory;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Subscribe to topic: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    return v6

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTERNAL_SERVER_ERROR"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 83
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string p1, "Topic operation failed without exception message. Will retry Topic operation."

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 86
    :cond_7
    throw p1

    .line 81
    :cond_8
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Topic operation failed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Will retry Topic operation."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method scheduleSyncTaskWithDelaySeconds(Ljava/lang/Runnable;J)V
    .locals 2

    .line 43
    iget-object v0, p0, Lo/getOrCreateBodyBuilder;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method scheduleTopicOperation(Lo/HttpRequestFactory;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HttpRequestFactory;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lo/getOrCreateBodyBuilder;->store:Lo/part;

    invoke-virtual {v0, p1}, Lo/part;->addTopicOperation(Lo/HttpRequestFactory;)Z

    .line 20
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 21
    invoke-direct {p0, p1, v0}, Lo/getOrCreateBodyBuilder;->addToPendingOperations(Lo/HttpRequestFactory;Lo/removeBackgroundStateChangeListener;)V

    .line 1014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method declared-synchronized setSyncScheduledOrRunning(Z)V
    .locals 0

    monitor-enter p0

    .line 107
    :try_start_0
    iput-boolean p1, p0, Lo/getOrCreateBodyBuilder;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startTopicsSyncIfNecessary()V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lo/getOrCreateBodyBuilder;->hasPendingOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lo/getOrCreateBodyBuilder;->startSync()V

    :cond_0
    return-void
.end method

.method public subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lo/HttpRequestFactory;->subscribe(Ljava/lang/String;)Lo/HttpRequestFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getOrCreateBodyBuilder;->scheduleTopicOperation(Lo/HttpRequestFactory;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lo/getOrCreateBodyBuilder;->startTopicsSyncIfNecessary()V

    return-object p1
.end method

.method syncTopics()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    :goto_0
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lo/getOrCreateBodyBuilder;->store:Lo/part;

    invoke-virtual {v0}, Lo/part;->getNextTopicOperation()Lo/HttpRequestFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Lo/getOrCreateBodyBuilder;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseMessaging"

    const-string v1, "topic sync succeeded"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 51
    :cond_1
    monitor-exit p0

    .line 52
    invoke-virtual {p0, v0}, Lo/getOrCreateBodyBuilder;->performTopicOperation(Lo/HttpRequestFactory;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return v0

    .line 54
    :cond_2
    iget-object v1, p0, Lo/getOrCreateBodyBuilder;->store:Lo/part;

    invoke-virtual {v1, v0}, Lo/part;->removeTopicOperation(Lo/HttpRequestFactory;)Z

    .line 55
    invoke-direct {p0, v0}, Lo/getOrCreateBodyBuilder;->markCompletePendingOperation(Lo/HttpRequestFactory;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0

    throw v0
.end method

.method syncWithDelaySecondsInternal(J)V
    .locals 11

    const/4 v0, 0x1

    shl-long v1, p1, v0

    const-wide/16 v3, 0x1e

    .line 38
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    sget-wide v3, Lo/getOrCreateBodyBuilder;->MAX_DELAY_SEC:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 39
    new-instance v1, Lo/CrashlyticsReportPersistence;

    iget-object v7, p0, Lo/getOrCreateBodyBuilder;->context:Landroid/content/Context;

    iget-object v8, p0, Lo/getOrCreateBodyBuilder;->metadata:Lo/parseEventSignal;

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lo/CrashlyticsReportPersistence;-><init>(Lo/getOrCreateBodyBuilder;Landroid/content/Context;Lo/parseEventSignal;J)V

    .line 40
    invoke-virtual {p0, v1, p1, p2}, Lo/getOrCreateBodyBuilder;->scheduleSyncTaskWithDelaySeconds(Ljava/lang/Runnable;J)V

    .line 41
    invoke-virtual {p0, v0}, Lo/getOrCreateBodyBuilder;->setSyncScheduledOrRunning(Z)V

    return-void
.end method

.method public unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {p1}, Lo/HttpRequestFactory;->unsubscribe(Ljava/lang/String;)Lo/HttpRequestFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getOrCreateBodyBuilder;->scheduleTopicOperation(Lo/HttpRequestFactory;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lo/getOrCreateBodyBuilder;->startTopicsSyncIfNecessary()V

    return-object p1
.end method
