.class public abstract Lo/shouldPruneUnkeptDescendants;
.super Lo/affectsPath;
.source ""

# interfaces
.implements Lo/applyUserWriteToServerCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;,
        Lo/shouldPruneUnkeptDescendants$extraCallback;,
        Lo/shouldPruneUnkeptDescendants$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008 \u0018\u00002\u0002092\u00020::\u00044567B\u0007\u00a2\u0006\u0004\u0008\u0001\u0010\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0002J\u0017\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000c\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u00032\n\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0002J\u000f\u0010\u0018\u001a\u00020\u0003H\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0002J\u001d\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J#\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u00142\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006H\u0004\u00a2\u0006\u0004\u0008#\u0010$J%\u0010\'\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00142\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00030%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010)\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008+\u0010\u0002R$\u0010-\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00118B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0016\u00101\u001a\u00020\u00118T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010.R\u0016\u00103\u001a\u00020\u00148T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u0016\u00a8\u00068"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "<init>",
        "()V",
        "",
        "closeQueue",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "dequeue",
        "()Ljava/lang/Runnable;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "block",
        "dispatch",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V",
        "task",
        "enqueue",
        "(Ljava/lang/Runnable;)V",
        "",
        "enqueueImpl",
        "(Ljava/lang/Runnable;)Z",
        "",
        "processNextEvent",
        "()J",
        "rescheduleAllDelayed",
        "resetAll",
        "now",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        "delayedTask",
        "schedule",
        "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V",
        "",
        "scheduleImpl",
        "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I",
        "timeMillis",
        "Lkotlinx/coroutines/DisposableHandle;",
        "scheduleInvokeOnTimeout",
        "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "continuation",
        "scheduleResumeAfterDelay",
        "(JLkotlinx/coroutines/CancellableContinuation;)V",
        "shouldUnpark",
        "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z",
        "shutdown",
        "value",
        "isCompleted",
        "()Z",
        "setCompleted",
        "(Z)V",
        "isEmpty",
        "getNextTime",
        "nextTime",
        "DelayedResumeTask",
        "DelayedRunnableTask",
        "DelayedTask",
        "DelayedTaskQueue",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/EventLoopImplPlatform;",
        "Lkotlinx/coroutines/Delay;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final asInterface:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;

.field private volatile _isCompleted:I

.field private volatile _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/shouldPruneUnkeptDescendants;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_queue"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/shouldPruneUnkeptDescendants;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_delayed"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/shouldPruneUnkeptDescendants;->asInterface:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lo/affectsPath;-><init>()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_queue:Ljava/lang/Object;

    .line 184
    iput-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lo/shouldPruneUnkeptDescendants;->_isCompleted:I

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/Runnable;)Z
    .locals 6

    .line 540
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_queue:Ljava/lang/Object;

    .line 14188
    iget v1, p0, Lo/shouldPruneUnkeptDescendants;->_isCompleted:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 296
    sget-object v0, Lo/shouldPruneUnkeptDescendants;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 297
    :cond_2
    instance-of v3, v0, Lo/doubleToHashString;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    .line 298
    move-object v3, v0

    check-cast v3, Lo/doubleToHashString;

    invoke-virtual {v3, p1}, Lo/doubleToHashString;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 301
    :cond_4
    sget-object v1, Lo/shouldPruneUnkeptDescendants;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14214
    invoke-virtual {v3}, Lo/doubleToHashString;->extraCallback()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lo/doubleToHashString;->onNavigationEvent(J)Lo/doubleToHashString;

    move-result-object v2

    .line 301
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 298
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_7
    invoke-static {}, Lo/shouldKeep;->extraCallback()Lo/AppCompatDrawableManager;

    move-result-object v3

    if-ne v0, v3, :cond_8

    return v2

    .line 308
    :cond_8
    new-instance v2, Lo/doubleToHashString;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lo/doubleToHashString;-><init>(IZ)V

    if-eqz v0, :cond_9

    .line 309
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo/doubleToHashString;->onMessageChannelReady(Ljava/lang/Object;)I

    .line 310
    invoke-virtual {v2, p1}, Lo/doubleToHashString;->onMessageChannelReady(Ljava/lang/Object;)I

    .line 311
    sget-object v3, Lo/shouldPruneUnkeptDescendants;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 309
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic ICustomTabsCallback(Lo/shouldPruneUnkeptDescendants;)Z
    .locals 0

    .line 16188
    iget p0, p0, Lo/shouldPruneUnkeptDescendants;->_isCompleted:I

    return p0
.end method

.method private final onPostMessage(JLo/shouldPruneUnkeptDescendants$ICustomTabsCallback;)I
    .locals 4

    .line 15188
    iget v0, p0, Lo/shouldPruneUnkeptDescendants;->_isCompleted:I

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 372
    :cond_0
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lo/shouldPruneUnkeptDescendants;

    .line 373
    sget-object v1, Lo/shouldPruneUnkeptDescendants;->asInterface:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    new-instance v3, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    invoke-direct {v3, p1, p2}, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;-><init>(J)V

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    iget-object v0, v0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast v0, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    .line 376
    :cond_2
    invoke-virtual {p3, p1, p2, v0, p0}, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->ICustomTabsCallback(JLo/shouldPruneUnkeptDescendants$onNavigationEvent;Lo/shouldPruneUnkeptDescendants;)I

    move-result p1

    return p1
.end method

.method private final warmup()V
    .locals 3

    .line 387
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 396
    :goto_0
    iget-object v2, p0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    check-cast v2, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/isWritableKey;->ICustomTabsCallback()Lo/validateRootPathString;

    move-result-object v2

    check-cast v2, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;

    if-nez v2, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lo/shouldPruneUnkeptDescendants;->extraCallback(JLo/shouldPruneUnkeptDescendants$ICustomTabsCallback;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(JLo/shouldPruneUnkeptDescendants$ICustomTabsCallback;)V
    .locals 2

    .line 360
    invoke-direct {p0, p1, p2, p3}, Lo/shouldPruneUnkeptDescendants;->onPostMessage(JLo/shouldPruneUnkeptDescendants$ICustomTabsCallback;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    return-void

    .line 364
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 362
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lo/shouldPruneUnkeptDescendants;->extraCallback(JLo/shouldPruneUnkeptDescendants$ICustomTabsCallback;)V

    return-void

    .line 14368
    :cond_2
    iget-object p1, p0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    check-cast p1, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/isWritableKey;->onMessageChannelReady()Lo/validateRootPathString;

    move-result-object p1

    check-cast p1, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-ne p1, p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 361
    invoke-virtual {p0}, Lo/shouldPruneUnkeptDescendants;->getInterfaceDescriptor()V

    :cond_5
    return-void
.end method

.method protected final asInterface()V
    .locals 1

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_queue:Ljava/lang/Object;

    .line 382
    iput-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final extraCallback()J
    .locals 13

    .line 254
    invoke-virtual {p0}, Lo/doPruneCheckAfterServerUpdate;->asBinder()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 256
    :cond_0
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 9030
    iget v4, v0, Lo/isWritableKey;->_size:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_7

    .line 258
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 263
    :goto_1
    move-object v4, v0

    check-cast v4, Lo/isWritableKey;

    .line 531
    monitor-enter v4

    .line 10085
    :try_start_0
    iget-object v9, v4, Lo/isWritableKey;->onNavigationEvent:[Lo/validateRootPathString;

    if-eqz v9, :cond_2

    aget-object v9, v9, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-object v9, v3

    :goto_2
    if-nez v9, :cond_3

    .line 532
    monitor-exit v4

    move-object v9, v3

    goto :goto_6

    .line 533
    :cond_3
    :try_start_1
    check-cast v9, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;

    .line 10428
    iget-wide v10, v9, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    sub-long v10, v7, v10

    cmp-long v12, v10, v1

    if-ltz v12, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    .line 265
    check-cast v9, Ljava/lang/Runnable;

    invoke-direct {p0, v9}, Lo/shouldPruneUnkeptDescendants;->ICustomTabsCallback(Ljava/lang/Runnable;)Z

    move-result v9

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_6

    .line 534
    invoke-virtual {v4, v6}, Lo/isWritableKey;->onPostMessage(I)Lo/validateRootPathString;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_6
    move-object v9, v3

    .line 537
    :goto_5
    monitor-exit v4

    .line 538
    :goto_6
    check-cast v9, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;

    if-eqz v9, :cond_7

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 537
    monitor-exit v4

    throw v0

    .line 11542
    :cond_7
    :goto_7
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_8

    goto :goto_8

    .line 11323
    :cond_8
    instance-of v4, v0, Lo/doubleToHashString;

    if-eqz v4, :cond_b

    if-eqz v0, :cond_a

    .line 11324
    move-object v4, v0

    check-cast v4, Lo/doubleToHashString;

    invoke-virtual {v4}, Lo/doubleToHashString;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v5

    .line 11325
    sget-object v6, Lo/doubleToHashString;->onPostMessage:Lo/AppCompatDrawableManager;

    if-eq v5, v6, :cond_9

    move-object v3, v5

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_8

    .line 11326
    :cond_9
    sget-object v5, Lo/shouldPruneUnkeptDescendants;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12214
    invoke-virtual {v4}, Lo/doubleToHashString;->extraCallback()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/doubleToHashString;->onNavigationEvent(J)Lo/doubleToHashString;

    move-result-object v4

    .line 11326
    invoke-virtual {v5, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    .line 11324
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11329
    :cond_b
    invoke-static {}, Lo/shouldKeep;->extraCallback()Lo/AppCompatDrawableManager;

    move-result-object v4

    if-ne v0, v4, :cond_c

    goto :goto_8

    .line 11330
    :cond_c
    sget-object v4, Lo/shouldPruneUnkeptDescendants;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_e

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    :goto_8
    if-eqz v3, :cond_d

    .line 274
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 277
    :cond_d
    invoke-virtual {p0}, Lo/shouldPruneUnkeptDescendants;->onPostMessage()J

    move-result-wide v0

    return-wide v0

    .line 11330
    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent(JLo/addMerge;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lo/addMerge<",
            "-",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-static {p1, p2}, Lo/shouldKeep;->extraCallback(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 232
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 233
    new-instance v2, Lo/shouldPruneUnkeptDescendants$extraCallback;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lo/shouldPruneUnkeptDescendants$extraCallback;-><init>(Lo/shouldPruneUnkeptDescendants;JLo/addMerge;)V

    .line 234
    move-object p1, v2

    check-cast p1, Lo/setQueryInactive;

    .line 7289
    new-instance p2, Lo/setQueryComplete;

    invoke-direct {p2, p1}, Lo/setQueryComplete;-><init>(Lo/setQueryInactive;)V

    check-cast p2, Lo/calcCompleteEventChildren;

    .line 7320
    check-cast p2, Lo/onDisconnectSetValue;

    .line 7289
    invoke-interface {p3, p2}, Lo/addMerge;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 235
    check-cast v2, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;

    invoke-virtual {p0, v0, v1, v2}, Lo/shouldPruneUnkeptDescendants;->ICustomTabsCallback(JLo/shouldPruneUnkeptDescendants$ICustomTabsCallback;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/isZombied;Ljava/lang/Runnable;)V
    .locals 1

    .line 12283
    invoke-direct {p0, p2}, Lo/shouldPruneUnkeptDescendants;->ICustomTabsCallback(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12285
    invoke-virtual {p0}, Lo/shouldPruneUnkeptDescendants;->getInterfaceDescriptor()V

    return-void

    .line 12287
    :cond_0
    sget-object p1, Lo/shouldPrune;->onMessageChannelReady:Lo/shouldPrune;

    .line 13283
    :goto_0
    invoke-direct {p1, p2}, Lo/shouldPruneUnkeptDescendants;->ICustomTabsCallback(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13285
    invoke-virtual {p1}, Lo/shouldPruneUnkeptDescendants;->getInterfaceDescriptor()V

    return-void

    .line 13287
    :cond_1
    sget-object p1, Lo/shouldPrune;->onMessageChannelReady:Lo/shouldPrune;

    goto :goto_0
.end method

.method protected final onNavigationEvent()Z
    .locals 7

    .line 192
    invoke-virtual {p0}, Lo/doPruneCheckAfterServerUpdate;->ICustomTabsCallback$Stub()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2030
    iget v0, v0, Lo/isWritableKey;->_size:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v1

    .line 195
    :cond_2
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_3

    return v2

    .line 197
    :cond_3
    instance-of v3, v0, Lo/doubleToHashString;

    if-eqz v3, :cond_5

    check-cast v0, Lo/doubleToHashString;

    .line 2091
    iget-wide v3, v0, Lo/doubleToHashString;->_state:J

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v3

    long-to-int v0, v5

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v3, v5

    const/16 v5, 0x1e

    shr-long/2addr v3, v5

    long-to-int v4, v3

    if-ne v0, v4, :cond_4

    return v2

    :cond_4
    return v1

    .line 198
    :cond_5
    invoke-static {}, Lo/shouldKeep;->extraCallback()Lo/AppCompatDrawableManager;

    move-result-object v3

    if-ne v0, v3, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method protected final onPostMessage()J
    .locals 10

    .line 204
    invoke-super {p0}, Lo/affectsPath;->onPostMessage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 205
    :cond_0
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_4

    .line 208
    instance-of v1, v0, Lo/doubleToHashString;

    if-eqz v1, :cond_2

    check-cast v0, Lo/doubleToHashString;

    .line 3091
    iget-wide v0, v0, Lo/doubleToHashString;->_state:J

    const-wide/32 v6, 0x3fffffff

    and-long/2addr v6, v0

    long-to-int v7, v6

    const-wide v8, 0xfffffffc0000000L

    and-long/2addr v0, v8

    const/16 v6, 0x1e

    shr-long/2addr v0, v6

    long-to-int v1, v0

    if-ne v7, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    return-wide v2

    .line 209
    :cond_2
    invoke-static {}, Lo/shouldKeep;->extraCallback()Lo/AppCompatDrawableManager;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-wide v4

    :cond_3
    return-wide v2

    .line 212
    :cond_4
    iget-object v0, p0, Lo/shouldPruneUnkeptDescendants;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/shouldPruneUnkeptDescendants$onNavigationEvent;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lo/isWritableKey;->onMessageChannelReady()Lo/validateRootPathString;

    move-result-object v0

    check-cast v0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;

    if-nez v0, :cond_5

    goto :goto_1

    .line 213
    :cond_5
    iget-wide v0, v0, Lo/shouldPruneUnkeptDescendants$ICustomTabsCallback;->onMessageChannelReady:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    return-wide v2

    :cond_6
    return-wide v0

    :cond_7
    :goto_1
    return-wide v4
.end method

.method public final onPostMessage(Ljava/lang/Runnable;)V
    .locals 2

    move-object v0, p0

    .line 283
    :goto_0
    invoke-direct {v0, p1}, Lo/shouldPruneUnkeptDescendants;->ICustomTabsCallback(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Lo/shouldPruneUnkeptDescendants;->getInterfaceDescriptor()V

    return-void

    .line 287
    :cond_0
    sget-object v0, Lo/shouldPrune;->onMessageChannelReady:Lo/shouldPrune;

    goto :goto_0
.end method

.method protected final onTransact()V
    .locals 5

    .line 218
    sget-object v0, Lo/includedInDefaultCompleteQuery;->extraCallback:Lo/includedInDefaultCompleteQuery;

    invoke-static {}, Lo/includedInDefaultCompleteQuery;->onNavigationEvent()V

    const/4 v0, 0x1

    .line 5189
    iput v0, p0, Lo/shouldPruneUnkeptDescendants;->_isCompleted:I

    .line 5337
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6188
    iget v1, p0, Lo/shouldPruneUnkeptDescendants;->_isCompleted:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 5544
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/shouldPruneUnkeptDescendants;->_queue:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 5340
    sget-object v1, Lo/shouldPruneUnkeptDescendants;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {}, Lo/shouldKeep;->extraCallback()Lo/AppCompatDrawableManager;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5341
    :cond_2
    instance-of v2, v1, Lo/doubleToHashString;

    if-eqz v2, :cond_3

    .line 5342
    check-cast v1, Lo/doubleToHashString;

    invoke-virtual {v1}, Lo/doubleToHashString;->onNavigationEvent()Z

    goto :goto_1

    .line 5346
    :cond_3
    invoke-static {}, Lo/shouldKeep;->extraCallback()Lo/AppCompatDrawableManager;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 5349
    new-instance v2, Lo/doubleToHashString;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0}, Lo/doubleToHashString;-><init>(IZ)V

    if-eqz v1, :cond_4

    .line 5350
    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo/doubleToHashString;->onMessageChannelReady(Ljava/lang/Object;)I

    .line 5351
    sget-object v3, Lo/shouldPruneUnkeptDescendants;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 5350
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lo/doPruneCheckAfterServerUpdate;->extraCallback()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 226
    invoke-direct {p0}, Lo/shouldPruneUnkeptDescendants;->warmup()V

    return-void
.end method
