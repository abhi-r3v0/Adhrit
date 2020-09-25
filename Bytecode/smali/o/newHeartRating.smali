.class public final Lo/newHeartRating;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/newHeartRating$onNavigationEvent;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/os/Handler;

.field private final asBinder:Ljava/lang/String;

.field private extraCallback:I

.field final onMessageChannelReady:I

.field private onNavigationEvent:Landroid/os/HandlerThread;

.field final onPostMessage:Ljava/lang/Object;

.field private final onRelationshipValidationResult:I

.field private onTransact:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/newHeartRating;->onPostMessage:Ljava/lang/Object;

    .line 58
    iput-object p0, p0, Lo/newHeartRating;->onTransact:Landroid/os/Handler$Callback;

    .line 80
    iput-object p1, p0, Lo/newHeartRating;->asBinder:Ljava/lang/String;

    const/16 p1, 0xa

    .line 81
    iput p1, p0, Lo/newHeartRating;->onRelationshipValidationResult:I

    const/16 p1, 0x2710

    .line 82
    iput p1, p0, Lo/newHeartRating;->onMessageChannelReady:I

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lo/newHeartRating;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 166
    new-instance v7, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 167
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v8

    .line 169
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 170
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 171
    new-instance v11, Lo/newHeartRating$4;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v9

    move-object v3, p1

    move-object v4, v7

    move-object v5, v10

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lo/newHeartRating$4;-><init>(Lo/newHeartRating;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {p0, v11}, Lo/newHeartRating;->extraCallback(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    :try_start_0
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 194
    :cond_0
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :goto_0
    :try_start_2
    invoke-interface {v8, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :catch_0
    :try_start_3
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    goto :goto_0

    .line 205
    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/InterruptedException;

    const-string/jumbo p2, "timeout"

    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 209
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    throw p1
.end method

.method final extraCallback(Ljava/lang/Runnable;)V
    .locals 5

    .line 107
    iget-object v0, p0, Lo/newHeartRating;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lo/newHeartRating;->onNavigationEvent:Landroid/os/HandlerThread;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    iget-object v3, p0, Lo/newHeartRating;->asBinder:Ljava/lang/String;

    iget v4, p0, Lo/newHeartRating;->onRelationshipValidationResult:I

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lo/newHeartRating;->onNavigationEvent:Landroid/os/HandlerThread;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 111
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lo/newHeartRating;->onNavigationEvent:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lo/newHeartRating;->onTransact:Landroid/os/Handler$Callback;

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    .line 112
    iget v1, p0, Lo/newHeartRating;->extraCallback:I

    add-int/2addr v1, v2

    iput v1, p0, Lo/newHeartRating;->extraCallback:I

    .line 114
    :cond_0
    iget-object v1, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v1, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object v3, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1061
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    return v1

    .line 1063
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 1214
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1215
    iget-object p1, p0, Lo/newHeartRating;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    .line 1216
    :try_start_0
    iget-object v0, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1217
    iget-object v0, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object v3, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lo/newHeartRating;->onMessageChannelReady:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1219
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 1223
    :cond_1
    iget-object p1, p0, Lo/newHeartRating;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    .line 1224
    :try_start_1
    iget-object v0, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1227
    monitor-exit p1

    goto :goto_0

    .line 1229
    :cond_2
    iget-object v0, p0, Lo/newHeartRating;->onNavigationEvent:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lo/newHeartRating;->onNavigationEvent:Landroid/os/HandlerThread;

    .line 1231
    iput-object v0, p0, Lo/newHeartRating;->ICustomTabsCallback:Landroid/os/Handler;

    .line 1232
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return v1

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method
