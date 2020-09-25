.class public Lo/CrashlyticsReport$Type;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Type$onPostMessage;,
        Lo/CrashlyticsReport$Type$onNavigationEvent;,
        Lo/CrashlyticsReport$Type$extraCallback;
    }
.end annotation


# instance fields
.field private final delayedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/CrashlyticsReport$Type$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Lo/CrashlyticsReport$Type$onPostMessage;

.field private final timerIdsToSkip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/CrashlyticsReport$Type$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsReport$Type;->timerIdsToSkip:Ljava/util/ArrayList;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsReport$Type;->delayedTasks:Ljava/util/ArrayList;

    .line 396
    new-instance v0, Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-direct {v0, p0}, Lo/CrashlyticsReport$Type$onPostMessage;-><init>(Lo/CrashlyticsReport$Type;)V

    iput-object v0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    return-void
.end method

.method static synthetic access$000(Lo/CrashlyticsReport$Type;)Lo/CrashlyticsReport$Type$onPostMessage;
    .locals 0

    .line 46
    iget-object p0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    return-object p0
.end method

.method static synthetic access$200(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$onNavigationEvent;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Type;->removeDelayedTask(Lo/CrashlyticsReport$Type$onNavigationEvent;)V

    return-void
.end method

.method public static callTask(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 163
    invoke-static {p1, p0, v0}, Lo/InstallException;->lambdaFactory$(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/removeBackgroundStateChangeListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1014
    iget-object p0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p0
.end method

.method private createAndScheduleDelayedTask(Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)Lo/CrashlyticsReport$Type$onNavigationEvent;
    .locals 9

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v5, v0, p2

    .line 623
    new-instance v0, Lo/CrashlyticsReport$Type$onNavigationEvent;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lo/CrashlyticsReport$Type$onNavigationEvent;-><init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;Lo/CrashlyticsReport$Type$2;)V

    .line 624
    invoke-static {v0, p2, p3}, Lo/CrashlyticsReport$Type$onNavigationEvent;->access$1200(Lo/CrashlyticsReport$Type$onNavigationEvent;J)V

    return-object v0
.end method

.method public static synthetic lambda$callTask$0(Lo/removeBackgroundStateChangeListener;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    .line 4008
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    .line 4011
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$callTask$1(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/removeBackgroundStateChangeListener;)V
    .locals 1

    .line 166
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    invoke-static {p2}, Lo/toStringMap;->lambdaFactory$(Lo/removeBackgroundStateChangeListener;)Lo/isDefaultApp;

    move-result-object v0

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 181
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unhandled throwable in callTask."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3011
    iget-object p0, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    .line 2011
    iget-object p1, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$enqueue$2(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$panic$3(Ljava/lang/Throwable;)V
    .locals 2

    .line 520
    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Firestore (21.6.0) ran out of memory. Check your queries to make sure they are not loading an excessive amount of data."

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 532
    throw v0

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error in Cloud Firestore (21.6.0)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$runDelayedTasksUntil$5(Lo/CrashlyticsReport$Type$onNavigationEvent;Lo/CrashlyticsReport$Type$onNavigationEvent;)I
    .locals 2

    .line 591
    invoke-static {p0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->access$1300(Lo/CrashlyticsReport$Type$onNavigationEvent;)J

    move-result-wide v0

    invoke-static {p1}, Lo/CrashlyticsReport$Type$onNavigationEvent;->access$1300(Lo/CrashlyticsReport$Type$onNavigationEvent;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$runDelayedTasksUntil$6(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;)V
    .locals 3

    .line 583
    sget-object v0, Lo/CrashlyticsReport$Type$extraCallback;->ALL:Lo/CrashlyticsReport$Type$extraCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    .line 584
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Type;->containsDelayedTask(Lo/CrashlyticsReport$Type$extraCallback;)Z

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
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "Attempted to run tasks until missing TimerId: %s"

    .line 583
    invoke-static {v0, v1, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->delayedTasks:Ljava/util/ArrayList;

    invoke-static {}, Lo/containsAll;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lo/CrashlyticsReport$Type;->delayedTasks:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Type$onNavigationEvent;

    .line 596
    invoke-virtual {v0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->skipDelay()V

    .line 597
    sget-object v1, Lo/CrashlyticsReport$Type$extraCallback;->ALL:Lo/CrashlyticsReport$Type$extraCallback;

    if-eq p1, v1, :cond_2

    invoke-static {v0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->access$900(Lo/CrashlyticsReport$Type$onNavigationEvent;)Lo/CrashlyticsReport$Type$extraCallback;

    move-result-object v0

    if-eq v0, p1, :cond_3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static synthetic lambda$runSync$4(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)V
    .locals 1

    .line 548
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    .line 550
    aput-object p0, p1, v0

    .line 552
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private removeDelayedTask(Lo/CrashlyticsReport$Type$onNavigationEvent;)V
    .locals 2

    .line 630
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->delayedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Delayed task not found."

    .line 631
    invoke-static {p1, v1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public containsDelayedTask(Lo/CrashlyticsReport$Type$extraCallback;)Z
    .locals 2

    .line 564
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->delayedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$Type$onNavigationEvent;

    .line 565
    invoke-static {v1}, Lo/CrashlyticsReport$Type$onNavigationEvent;->access$900(Lo/CrashlyticsReport$Type$onNavigationEvent;)Lo/CrashlyticsReport$Type$extraCallback;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public enqueue(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 0
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

    .line 434
    invoke-static {p1}, Lo/LocalTestingException$onPostMessage;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Type;->enqueue(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public enqueue(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 1
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

    .line 423
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Type$onPostMessage;->access$500(Lo/CrashlyticsReport$Type$onPostMessage;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public enqueueAfterDelay(Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)Lo/CrashlyticsReport$Type$onNavigationEvent;
    .locals 1

    .line 488
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->timerIdsToSkip:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p2, 0x0

    .line 492
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lo/CrashlyticsReport$Type;->createAndScheduleDelayedTask(Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)Lo/CrashlyticsReport$Type$onNavigationEvent;

    move-result-object p1

    .line 493
    iget-object p2, p0, Lo/CrashlyticsReport$Type;->delayedTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public enqueueAndForget(Ljava/lang/Runnable;)V
    .locals 0

    .line 472
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Type;->enqueue(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public enqueueAndForgetEvenAfterShutdown(Ljava/lang/Runnable;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type$onPostMessage;->executeEvenAfterShutdown(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enqueueAndInitiateShutdown(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 1
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

    .line 447
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Type$onPostMessage;->access$600(Lo/CrashlyticsReport$Type$onPostMessage;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 400
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    return-object v0
.end method

.method public isShuttingDown()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-static {v0}, Lo/CrashlyticsReport$Type$onPostMessage;->access$700(Lo/CrashlyticsReport$Type$onPostMessage;)Z

    move-result v0

    return v0
.end method

.method public panic(Ljava/lang/Throwable;)V
    .locals 2

    .line 516
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-static {v0}, Lo/CrashlyticsReport$Type$onPostMessage;->access$800(Lo/CrashlyticsReport$Type$onPostMessage;)V

    .line 517
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 518
    invoke-static {p1}, Lo/initializeAllApis;->lambdaFactory$(Ljava/lang/Throwable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runDelayedTasksUntil(Lo/CrashlyticsReport$Type$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 581
    invoke-static {p0, p1}, Lo/setStorageBucket$onMessageChannelReady;->lambdaFactory$(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Type;->runSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runSync(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Throwable;

    .line 545
    invoke-static {p1, v3, v0}, Lo/clearInstancesForTest;->lambdaFactory$(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 555
    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 556
    aget-object p1, v3, v1

    if-nez p1, :cond_0

    return-void

    .line 557
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    aget-object v0, v3, v1

    const-string v1, "Synchronous task failed"

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public shutdown()V
    .locals 2

    .line 610
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/CrashlyticsReport$Type$onPostMessage;->access$1000(Lo/CrashlyticsReport$Type$onPostMessage;I)V

    return-void
.end method

.method public skipDelaysForTimerId(Lo/CrashlyticsReport$Type$extraCallback;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lo/CrashlyticsReport$Type;->timerIdsToSkip:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public verifyIsCurrentThread()V
    .locals 5

    .line 405
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-static {v1}, Lo/CrashlyticsReport$Type$onPostMessage;->access$300(Lo/CrashlyticsReport$Type$onPostMessage;)Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 407
    iget-object v3, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    .line 410
    invoke-static {v3}, Lo/CrashlyticsReport$Type$onPostMessage;->access$300(Lo/CrashlyticsReport$Type$onPostMessage;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lo/CrashlyticsReport$Type;->executor:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-static {v3}, Lo/CrashlyticsReport$Type$onPostMessage;->access$300(Lo/CrashlyticsReport$Type$onPostMessage;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "We are running on the wrong thread. Expected to be on the AsyncQueue thread %s/%d but was %s/%d"

    .line 407
    invoke-static {v0, v1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method
