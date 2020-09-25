.class public abstract Lo/BinaryImagesConverter$FileIdStrategy;
.super Landroid/app/Service;
.source ""


# instance fields
.field private binder:Landroid/os/Binder;

.field final executor:Ljava/util/concurrent/ExecutorService;

.field private lastStartId:I

.field private final lock:Ljava/lang/Object;

.field private runningTasks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    invoke-static {}, Lo/extraCallback;->newIntentHandleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/BinaryImagesConverter$FileIdStrategy;->executor:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/BinaryImagesConverter$FileIdStrategy;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lo/BinaryImagesConverter$FileIdStrategy;->runningTasks:I

    return-void
.end method

.method static synthetic access$000(Lo/BinaryImagesConverter$FileIdStrategy;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private finishTask(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    invoke-static {p1}, Lo/toStringMap$asInterface;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 34
    :cond_0
    iget-object p1, p0, Lo/BinaryImagesConverter$FileIdStrategy;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 35
    :try_start_0
    iget v0, p0, Lo/BinaryImagesConverter$FileIdStrategy;->runningTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/BinaryImagesConverter$FileIdStrategy;->runningTasks:I

    if-nez v0, :cond_1

    .line 37
    iget v0, p0, Lo/BinaryImagesConverter$FileIdStrategy;->lastStartId:I

    invoke-virtual {p0, v0}, Lo/BinaryImagesConverter$FileIdStrategy;->stopSelfResultHook(I)Z

    .line 38
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->handleIntentOnMainThread(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 1002
    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 13
    iget-object v1, p0, Lo/BinaryImagesConverter$FileIdStrategy;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lo/AutoValue_CrashlyticsReport_Session_Device;

    invoke-direct {v2, p0, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device;-><init>(Lo/BinaryImagesConverter$FileIdStrategy;Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method


# virtual methods
.method protected getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p1
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleIntentOnMainThread(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic lambda$onStartCommand$1$EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->finishTask(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$processIntent$0$EnhancedIntentService(Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->handleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    iget-object p1, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 3008
    iget-object p2, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p2, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 47
    throw p1
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object p1, p0, Lo/BinaryImagesConverter$FileIdStrategy;->binder:Landroid/os/Binder;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lo/parseCustomAttribute;

    new-instance v0, Lo/BinaryImagesConverter$FileIdStrategy$3;

    invoke-direct {v0, p0}, Lo/BinaryImagesConverter$FileIdStrategy$3;-><init>(Lo/BinaryImagesConverter$FileIdStrategy;)V

    invoke-direct {p1, v0}, Lo/parseCustomAttribute;-><init>(Lo/parseCustomAttribute$onPostMessage;)V

    iput-object p1, p0, Lo/BinaryImagesConverter$FileIdStrategy;->binder:Landroid/os/Binder;

    .line 9
    :cond_1
    iget-object p1, p0, Lo/BinaryImagesConverter$FileIdStrategy;->binder:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 29
    iget-object v0, p0, Lo/BinaryImagesConverter$FileIdStrategy;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 15
    iget-object p2, p0, Lo/BinaryImagesConverter$FileIdStrategy;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 16
    :try_start_0
    iput p3, p0, Lo/BinaryImagesConverter$FileIdStrategy;->lastStartId:I

    .line 17
    iget p3, p0, Lo/BinaryImagesConverter$FileIdStrategy;->runningTasks:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lo/BinaryImagesConverter$FileIdStrategy;->runningTasks:I

    .line 18
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->finishTask(Landroid/content/Intent;)V

    return p3

    .line 23
    :cond_0
    invoke-direct {p0, p2}, Lo/BinaryImagesConverter$FileIdStrategy;->processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-direct {p0, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->finishTask(Landroid/content/Intent;)V

    return p3

    .line 27
    :cond_1
    sget-object p3, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->$instance:Ljava/util/concurrent/Executor;

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;

    invoke-direct {v0, p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;-><init>(Lo/BinaryImagesConverter$FileIdStrategy;Landroid/content/Intent;)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p2

    throw p1
.end method

.method stopSelfResultHook(I)Z
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method
