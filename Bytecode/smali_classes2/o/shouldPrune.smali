.class public final Lo/shouldPrune;
.super Lo/shouldPruneUnkeptDescendants;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u0010H\u0002J\r\u0010\u001e\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008\u001fJ\u001c\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00082\n\u0010#\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0008\u0010$\u001a\u00020\u0014H\u0002J\u0008\u0010%\u001a\u00020\u001cH\u0016J\u000e\u0010&\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020\u0008R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0011\u0010\u0004R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00148@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00108TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006("
    }
    d2 = {
        "Lkotlinx/coroutines/DefaultExecutor;",
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "()V",
        "ACTIVE",
        "",
        "DEFAULT_KEEP_ALIVE",
        "",
        "FRESH",
        "KEEP_ALIVE_NANOS",
        "SHUTDOWN_ACK",
        "SHUTDOWN_REQ",
        "THREAD_NAME",
        "",
        "_thread",
        "Ljava/lang/Thread;",
        "_thread$annotations",
        "debugStatus",
        "isShutdownRequested",
        "",
        "()Z",
        "isThreadPresent",
        "isThreadPresent$kotlinx_coroutines_core",
        "thread",
        "getThread",
        "()Ljava/lang/Thread;",
        "acknowledgeShutdownIfNeeded",
        "",
        "createThreadSync",
        "ensureStarted",
        "ensureStarted$kotlinx_coroutines_core",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "timeMillis",
        "block",
        "notifyStartup",
        "run",
        "shutdown",
        "timeout",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final onMessageChannelReady:Lo/shouldPrune;

.field private static final onRelationshipValidationResult:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lo/shouldPrune;

    invoke-direct {v0}, Lo/shouldPrune;-><init>()V

    sput-object v0, Lo/shouldPrune;->onMessageChannelReady:Lo/shouldPrune;

    .line 6104
    iget-wide v1, v0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lo/doPruneCheckAfterServerUpdate;->onPostMessage:J

    const/4 v1, 0x1

    .line 6105
    iput-boolean v1, v0, Lo/doPruneCheckAfterServerUpdate;->onNavigationEvent:Z

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 23
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 22
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lo/shouldPrune;->onRelationshipValidationResult:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/shouldPruneUnkeptDescendants;-><init>()V

    return-void
.end method

.method private final declared-synchronized ICustomTabsCallback$Stub$Proxy()Ljava/lang/Thread;
    .locals 3

    monitor-enter p0

    .line 95
    :try_start_0
    sget-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    sput-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized ICustomTabsService()V
    .locals 3

    monitor-enter p0

    .line 6044
    :try_start_0
    sget v0, Lo/shouldPrune;->debugStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 138
    monitor-exit p0

    return-void

    .line 139
    :cond_2
    :try_start_1
    sput v2, Lo/shouldPrune;->debugStatus:I

    .line 140
    invoke-virtual {p0}, Lo/shouldPrune;->asInterface()V

    .line 141
    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized warmup()Z
    .locals 4

    monitor-enter p0

    .line 5044
    :try_start_0
    sget v0, Lo/shouldPrune;->debugStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 114
    monitor-exit p0

    return v2

    .line 115
    :cond_2
    :try_start_1
    sput v3, Lo/shouldPrune;->debugStatus:I

    .line 116
    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final onMessageChannelReady()Ljava/lang/Thread;
    .locals 1

    .line 33
    sget-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Thread;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final run()V
    .locals 12

    .line 61
    sget-object v0, Lo/includedInDefaultCompleteQuery;->extraCallback:Lo/includedInDefaultCompleteQuery;

    move-object v0, p0

    check-cast v0, Lo/doPruneCheckAfterServerUpdate;

    invoke-static {v0}, Lo/includedInDefaultCompleteQuery;->onMessageChannelReady(Lo/doPruneCheckAfterServerUpdate;)V

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lo/shouldPrune;->warmup()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 85
    sput-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    .line 86
    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsService()V

    .line 89
    invoke-virtual {p0}, Lo/shouldPrune;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    sget-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Thread;

    :cond_0
    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    .line 67
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 68
    invoke-virtual {p0}, Lo/doPruneCheckAfterServerUpdate;->extraCallback()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v1

    if-nez v9, :cond_6

    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    cmp-long v11, v3, v1

    if-nez v11, :cond_3

    .line 72
    sget-wide v3, Lo/shouldPrune;->onRelationshipValidationResult:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v9

    :cond_3
    sub-long v9, v3, v9

    cmp-long v11, v9, v7

    if-gtz v11, :cond_5

    .line 85
    sput-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    .line 86
    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsService()V

    .line 89
    invoke-virtual {p0}, Lo/shouldPrune;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2033
    sget-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Thread;

    :cond_4
    return-void

    :cond_5
    cmp-long v11, v5, v9

    if-lez v11, :cond_7

    move-wide v5, v9

    goto :goto_1

    :cond_6
    move-wide v3, v1

    :cond_7
    :goto_1
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 3044
    :try_start_2
    sget v7, Lo/shouldPrune;->debugStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_b

    .line 85
    sput-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    .line 86
    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsService()V

    .line 89
    invoke-virtual {p0}, Lo/shouldPrune;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4033
    sget-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Thread;

    :cond_a
    return-void

    .line 81
    :cond_b
    :try_start_3
    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 85
    sput-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    .line 86
    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsService()V

    .line 89
    invoke-virtual {p0}, Lo/shouldPrune;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_c

    .line 5033
    sget-object v0, Lo/shouldPrune;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lo/shouldPrune;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Thread;

    .line 89
    :cond_c
    throw v1
.end method
