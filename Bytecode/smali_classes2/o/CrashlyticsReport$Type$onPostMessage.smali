.class public Lo/CrashlyticsReport$Type$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private isShuttingDown:Z

.field final synthetic this$0:Lo/CrashlyticsReport$Type;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Type;)V
    .locals 4

    .line 241
    iput-object p1, p0, Lo/CrashlyticsReport$Type$onPostMessage;->this$0:Lo/CrashlyticsReport$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;-><init>(Lo/CrashlyticsReport$Type$onPostMessage;Lo/CrashlyticsReport$Type$2;)V

    .line 244
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lo/CrashlyticsReport$Type$onPostMessage;->thread:Ljava/lang/Thread;

    const-string v2, "FirestoreWorker"

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lo/CrashlyticsReport$Type$onPostMessage;->thread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 247
    iget-object v1, p0, Lo/CrashlyticsReport$Type$onPostMessage;->thread:Ljava/lang/Thread;

    invoke-static {p0}, Lo/toStringMap$extraCallback;->lambdaFactory$(Lo/CrashlyticsReport$Type$onPostMessage;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 249
    new-instance v1, Lo/CrashlyticsReport$Type$onPostMessage$3;

    invoke-direct {v1, p0, v2, v0, p1}, Lo/CrashlyticsReport$Type$onPostMessage$3;-><init>(Lo/CrashlyticsReport$Type$onPostMessage;ILjava/util/concurrent/ThreadFactory;Lo/CrashlyticsReport$Type;)V

    iput-object v1, p0, Lo/CrashlyticsReport$Type$onPostMessage;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 277
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lo/CrashlyticsReport$Type$onPostMessage;->isShuttingDown:Z

    return-void
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Type$onPostMessage;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2, p3, p4}, Lo/CrashlyticsReport$Type$onPostMessage;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lo/CrashlyticsReport$Type$onPostMessage;I)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Type$onPostMessage;->setCorePoolSize(I)V

    return-void
.end method

.method static synthetic access$300(Lo/CrashlyticsReport$Type$onPostMessage;)Ljava/lang/Thread;
    .locals 0

    .line 200
    iget-object p0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->thread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$500(Lo/CrashlyticsReport$Type$onPostMessage;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Type$onPostMessage;->executeAndReportResult(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lo/CrashlyticsReport$Type$onPostMessage;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Type$onPostMessage;->executeAndInitiateShutdown(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lo/CrashlyticsReport$Type$onPostMessage;)Z
    .locals 0

    .line 200
    invoke-direct {p0}, Lo/CrashlyticsReport$Type$onPostMessage;->isShuttingDown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lo/CrashlyticsReport$Type$onPostMessage;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lo/CrashlyticsReport$Type$onPostMessage;->shutdownNow()V

    return-void
.end method

.method private declared-synchronized executeAndInitiateShutdown(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-direct {p0}, Lo/CrashlyticsReport$Type$onPostMessage;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance p1, Lo/removeBackgroundStateChangeListener;

    invoke-direct {p1}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 2008
    iget-object v0, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 2014
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-object p1

    .line 348
    :cond_0
    :try_start_1
    invoke-static {p1}, Lo/toStringMap$onMessageChannelReady;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 349
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Type$onPostMessage;->executeAndReportResult(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->isShuttingDown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private executeAndReportResult(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 317
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 319
    :try_start_0
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->lambdaFactory$(Lo/removeBackgroundStateChangeListener;Ljava/util/concurrent/Callable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Type$onPostMessage;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    const-class p1, Lo/CrashlyticsReport$Type;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Refused to enqueue task after panic"

    invoke-static {p1, v2, v1}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    :goto_0
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method private declared-synchronized isShuttingDown()Z
    .locals 1

    monitor-enter p0

    .line 284
    :try_start_0
    iget-boolean v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->isShuttingDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic lambda$executeAndInitiateShutdown$2(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$executeAndReportResult$1(Lo/removeBackgroundStateChangeListener;Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 322
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 3008
    iget-object v0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3011
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 325
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static synthetic lambda$new$0(Lo/CrashlyticsReport$Type$onPostMessage;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 247
    iget-object p0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->this$0:Lo/CrashlyticsReport$Type;

    invoke-virtual {p0, p2}, Lo/CrashlyticsReport$Type;->panic(Ljava/lang/Throwable;)V

    return-void
.end method

.method private declared-synchronized schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->isShuttingDown:Z

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 369
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setCorePoolSize(I)V
    .locals 1

    .line 379
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method

.method private shutdownNow()V
    .locals 1

    .line 374
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 293
    :try_start_0
    iget-boolean v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->isShuttingDown:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public executeEvenAfterShutdown(Ljava/lang/Runnable;)V
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onPostMessage;->internalExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 305
    :catch_0
    const-class p1, Lo/CrashlyticsReport$Type;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Refused to enqueue task after panic"

    invoke-static {p1, v1, v0}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
