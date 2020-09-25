.class public Lcom/appsflyer/AFExecutor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ι:Lcom/appsflyer/AFExecutor;


# instance fields
.field final ı:Ljava/util/concurrent/ThreadFactory;

.field ǃ:Ljava/util/concurrent/ScheduledExecutorService;

.field ɩ:Ljava/util/concurrent/ScheduledExecutorService;

.field Ι:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/appsflyer/AFExecutor$1;

    invoke-direct {v0}, Lcom/appsflyer/AFExecutor$1;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFExecutor;->ı:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public static getInstance()Lcom/appsflyer/AFExecutor;
    .locals 1

    .line 45
    sget-object v0, Lcom/appsflyer/AFExecutor;->ι:Lcom/appsflyer/AFExecutor;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/appsflyer/AFExecutor;

    invoke-direct {v0}, Lcom/appsflyer/AFExecutor;-><init>()V

    sput-object v0, Lcom/appsflyer/AFExecutor;->ι:Lcom/appsflyer/AFExecutor;

    .line 48
    :cond_0
    sget-object v0, Lcom/appsflyer/AFExecutor;->ι:Lcom/appsflyer/AFExecutor;

    return-object v0
.end method

.method static ɩ(Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    const-string v0, "killing non-finished tasks"

    :try_start_0
    const-string/jumbo v1, "shut downing executor ..."

    .line 111
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 112
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v1, 0xa

    .line 113
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v1, "InterruptedException!!!"

    .line 115
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    .line 118
    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 121
    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 122
    throw v1
.end method


# virtual methods
.method public getThreadPoolExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->Ι:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->Ι:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->Ι:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 68
    iget-object v1, p0, Lcom/appsflyer/AFExecutor;->ı:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFExecutor;->Ι:Ljava/util/concurrent/Executor;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->Ι:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final ι()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->ɩ:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->ɩ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 82
    iget-object v1, p0, Lcom/appsflyer/AFExecutor;->ı:Ljava/util/concurrent/ThreadFactory;

    .line 83
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFExecutor;->ɩ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->ɩ:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method
