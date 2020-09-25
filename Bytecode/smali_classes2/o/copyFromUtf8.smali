.class public Lo/copyFromUtf8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/copyFromUtf8$onPostMessage;
    }
.end annotation


# static fields
.field private static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field static final DISK_READ_TIMEOUT_IN_SECONDS:J = 0x5L

.field private static final clientInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/copyFromUtf8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cachedContainerTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final storageClient:Lo/newOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/copyFromUtf8;->clientInstances:Ljava/util/Map;

    .line 258
    invoke-static {}, Lo/byteAt;->lambdaFactory$()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lo/copyFromUtf8;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lo/newOutput;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lo/copyFromUtf8;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object p2, p0, Lo/copyFromUtf8;->storageClient:Lo/newOutput;

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 240
    new-instance v0, Lo/copyFromUtf8$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/copyFromUtf8$onPostMessage;-><init>(Lo/copyFromUtf8$3;)V

    .line 242
    sget-object v1, Lo/copyFromUtf8;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    .line 243
    sget-object v1, Lo/copyFromUtf8;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    .line 244
    sget-object v1, Lo/copyFromUtf8;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/notifyBackgroundStateChangeListeners;)Lcom/google/android/gms/tasks/Task;

    .line 246
    invoke-virtual {v0, p1, p2, p3}, Lo/copyFromUtf8$onPostMessage;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 253
    :cond_0
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 247
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Task await timed out."

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized clearInstancesForTest()V
    .locals 2

    const-class v0, Lo/copyFromUtf8;

    monitor-enter v0

    .line 224
    :try_start_0
    sget-object v1, Lo/copyFromUtf8;->clientInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Ljava/util/concurrent/ExecutorService;Lo/newOutput;)Lo/copyFromUtf8;
    .locals 4

    const-class v0, Lo/copyFromUtf8;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lo/newOutput;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 216
    sget-object v2, Lo/copyFromUtf8;->clientInstances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    sget-object v2, Lo/copyFromUtf8;->clientInstances:Ljava/util/Map;

    new-instance v3, Lo/copyFromUtf8;

    invoke-direct {v3, p0, p1}, Lo/copyFromUtf8;-><init>(Ljava/util/concurrent/ExecutorService;Lo/newOutput;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    sget-object p0, Lo/copyFromUtf8;->clientInstances:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/copyFromUtf8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$put$0(Lo/copyFromUtf8;Lo/ByteString;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lo/copyFromUtf8;->storageClient:Lo/newOutput;

    invoke-virtual {p0, p1}, Lo/newOutput;->write(Lo/ByteString;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$put$1(Lo/copyFromUtf8;ZLo/ByteString;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0, p2}, Lo/copyFromUtf8;->updateInMemoryConfigContainer(Lo/ByteString;)V

    .line 3001
    :cond_0
    new-instance p0, Lo/getProjectId;

    invoke-direct {p0}, Lo/getProjectId;-><init>()V

    .line 3002
    invoke-virtual {p0, p2}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p0
.end method

.method private declared-synchronized updateInMemoryConfigContainer(Lo/ByteString;)V
    .locals 1

    monitor-enter p0

    .line 2001
    :try_start_0
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 2002
    invoke-virtual {v0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 199
    iput-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 186
    monitor-enter p0

    .line 1001
    :try_start_0
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {v0, v1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 192
    iput-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lo/copyFromUtf8;->storageClient:Lo/newOutput;

    invoke-virtual {v0}, Lo/newOutput;->clear()Ljava/lang/Void;

    return-void

    :catchall_0
    move-exception v0

    .line 193
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/ByteString;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Lo/copyFromUtf8;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lo/copyFromUtf8;->storageClient:Lo/newOutput;

    invoke-static {v1}, Lo/handleException;->lambdaFactory$(Lo/newOutput;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    .line 181
    :cond_1
    iget-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBlocking()Lo/ByteString;
    .locals 2

    const-wide/16 v0, 0x5

    .line 100
    invoke-virtual {p0, v0, v1}, Lo/copyFromUtf8;->getBlocking(J)Lo/ByteString;

    move-result-object v0

    return-object v0
.end method

.method getBlocking(J)Lo/ByteString;
    .locals 2

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object p1, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ByteString;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 110
    :cond_0
    monitor-exit p0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lo/copyFromUtf8;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ByteString;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string p2, "FirebaseRemoteConfig"

    const-string v0, "Reading from storage file failed."

    .line 115
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getCachedContainerTask()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/ByteString;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lo/copyFromUtf8;->cachedContainerTask:Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ByteString;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/ByteString;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, p1, v0}, Lo/copyFromUtf8;->put(Lo/ByteString;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public put(Lo/ByteString;Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ByteString;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/ByteString;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lo/copyFromUtf8;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lo/saveUserOverwrite$onPostMessage;->lambdaFactory$(Lo/copyFromUtf8;Lo/ByteString;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lo/copyFromUtf8;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p2, p1}, Lo/saveUserOverwrite$onMessageChannelReady;->lambdaFactory$(Lo/copyFromUtf8;ZLo/ByteString;)Lo/getPersistenceKey;

    move-result-object p1

    .line 141
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public putWithoutWaitingForDiskWrite(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ByteString;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/ByteString;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lo/copyFromUtf8;->updateInMemoryConfigContainer(Lo/ByteString;)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lo/copyFromUtf8;->put(Lo/ByteString;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
