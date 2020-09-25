.class public final Lo/unionWith;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/unionWith$extraCallback;,
        Lo/unionWith$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final extraCallback:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lo/unionWith;->onNavigationEvent:Ljava/util/Queue;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/unionWith;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    check-cast p1, Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lo/unionWith;->extraCallback:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 88
    :cond_0
    iget-object v0, p0, Lo/unionWith;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 93
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/unionWith;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 95
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 97
    :try_start_2
    iget-object v1, p0, Lo/unionWith;->extraCallback:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lo/unionWith;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lo/unionWith;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catchall_1
    move-exception v0

    .line 101
    iget-object v1, p0, Lo/unionWith;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {p0}, Lo/unionWith;->ICustomTabsCallback()V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/unionWith$extraCallback;
    .locals 2

    .line 151
    new-instance v0, Lo/unionWith$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/unionWith$ICustomTabsCallback;-><init>(Ljava/lang/Runnable;)V

    .line 152
    new-instance v1, Lo/unionWith$1;

    invoke-direct {v1, p0, v0, p1}, Lo/unionWith$1;-><init>(Lo/unionWith;Lo/unionWith$ICustomTabsCallback;Ljava/lang/Runnable;)V

    invoke-interface {p5, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 163
    new-instance p2, Lo/unionWith$extraCallback;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p1, p3}, Lo/unionWith$extraCallback;-><init>(Lo/unionWith$ICustomTabsCallback;Ljava/util/concurrent/ScheduledFuture;B)V

    return-object p2
.end method

.method public final onPostMessage()V
    .locals 2

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lo/unionWith;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 3511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not called from the SynchronizationContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Ljava/lang/Runnable;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/unionWith;->onNavigationEvent:Ljava/util/Queue;

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "runnable is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
