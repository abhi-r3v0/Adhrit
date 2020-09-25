.class final Lo/getServerCache$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getServerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onMessageChannelReady"
.end annotation


# static fields
.field private static synthetic asBinder:Z


# instance fields
.field private final ICustomTabsCallback:J

.field private synthetic asInterface:Lo/getServerCache;

.field private final extraCallback:Lo/updatePriority;

.field onMessageChannelReady:Z

.field onNavigationEvent:Z

.field private final onPostMessage:Lo/updatePriority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 329
    const-class v0, Lo/getServerCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getServerCache$onMessageChannelReady;->asBinder:Z

    return-void
.end method

.method constructor <init>(Lo/getServerCache;J)V
    .locals 0

    .line 348
    iput-object p1, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/getServerCache$onMessageChannelReady;->extraCallback:Lo/updatePriority;

    .line 334
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;

    .line 349
    iput-wide p2, p0, Lo/getServerCache$onMessageChannelReady;->ICustomTabsCallback:J

    return-void
.end method

.method private onMessageChannelReady(J)V
    .locals 1

    .line 428
    sget-boolean v0, Lo/getServerCache$onMessageChannelReady;->asBinder:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 429
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object v0, v0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    invoke-virtual {v0, p1, p2}, Lo/normalizeValue;->onPostMessage(J)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_f

    :goto_0
    const/4 v2, 0x0

    .line 363
    iget-object v3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    monitor-enter v3

    .line 364
    :try_start_0
    iget-object v4, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object v4, v4, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    invoke-virtual {v4}, Lo/getIndexedFilter;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 366
    :try_start_1
    iget-object v5, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object v5, v5, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    if-eqz v5, :cond_0

    .line 368
    iget-object v2, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object v2, v2, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    .line 371
    :cond_0
    iget-boolean v5, p0, Lo/getServerCache$onMessageChannelReady;->onNavigationEvent:Z

    if-nez v5, :cond_c

    .line 374
    iget-object v5, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    invoke-static {v5}, Lo/getServerCache;->ICustomTabsCallback(Lo/getServerCache;)Ljava/util/Deque;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lo/getServerCache;->ICustomTabsCallback$Stub()Lo/loadsAllData$onPostMessage;

    .line 379
    :cond_1
    iget-object v5, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;

    .line 1067
    iget-wide v5, v5, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v0

    if-lez v9, :cond_3

    .line 381
    iget-object v5, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;

    iget-object v6, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;

    .line 2067
    iget-wide v9, v6, Lo/updatePriority;->ICustomTabsCallback:J

    .line 381
    invoke-static {p2, p3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v5, p1, p2, p3}, Lo/updatePriority;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    .line 382
    iget-object p3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-wide v5, p3, Lo/getServerCache;->extraCallback:J

    add-long/2addr v5, p1

    iput-wide v5, p3, Lo/getServerCache;->extraCallback:J

    if-nez v2, :cond_7

    .line 384
    iget-object p3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-wide v5, p3, Lo/getServerCache;->extraCallback:J

    iget-object p3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object p3, p3, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget-object p3, p3, Lo/normalizeValue;->warmup:Lo/getInitialEvents;

    .line 2114
    iget v9, p3, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_2

    iget-object p3, p3, Lo/getInitialEvents;->onPostMessage:[I

    const/4 v9, 0x7

    aget p3, p3, v9

    goto :goto_1

    :cond_2
    const p3, 0xffff

    .line 386
    :goto_1
    div-int/lit8 p3, p3, 0x2

    int-to-long v9, p3

    cmp-long p3, v5, v9

    if-ltz p3, :cond_7

    .line 389
    iget-object p3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object p3, p3, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget-object v5, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget v5, v5, Lo/getServerCache;->onMessageChannelReady:I

    iget-object v6, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-wide v9, v6, Lo/getServerCache;->extraCallback:J

    invoke-virtual {p3, v5, v9, v10}, Lo/normalizeValue;->ICustomTabsCallback(IJ)V

    .line 390
    iget-object p3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iput-wide v0, p3, Lo/getServerCache;->extraCallback:J

    goto :goto_3

    .line 392
    :cond_3
    iget-boolean v5, p0, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v5, :cond_6

    if-nez v2, :cond_6

    .line 394
    iget-object v2, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2654
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    :try_start_3
    iget-object v2, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object v2, v2, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    .line 3120
    iget-boolean v5, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v5, :cond_4

    goto :goto_2

    .line 3121
    :cond_4
    iput-boolean v4, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 3122
    invoke-static {v2}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_5

    .line 398
    monitor-exit v3

    goto/16 :goto_0

    .line 3671
    :cond_5
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 2679
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2656
    :catch_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 2657
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-wide p1, v7

    .line 398
    :cond_7
    :goto_3
    :try_start_5
    iget-object p3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object p3, p3, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    .line 4120
    iget-boolean v0, p3, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v0, :cond_8

    goto :goto_4

    .line 4121
    :cond_8
    iput-boolean v4, p3, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 4122
    invoke-static {p3}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v4

    :goto_4
    if-nez v4, :cond_b

    .line 400
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    cmp-long p3, p1, v7

    if-eqz p3, :cond_9

    .line 411
    invoke-direct {p0, p1, p2}, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady(J)V

    return-wide p1

    :cond_9
    if-nez v2, :cond_a

    return-wide v7

    .line 420
    :cond_a
    new-instance p1, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {p1, v2}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lo/getNodeFilter;)V

    throw p1

    .line 4671
    :cond_b
    :try_start_6
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3679
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 372
    :cond_c
    :try_start_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    .line 398
    :try_start_8
    iget-object p2, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object p2, p2, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    .line 5120
    iget-boolean p3, p2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez p3, :cond_d

    goto :goto_5

    .line 5121
    :cond_d
    iput-boolean v4, p2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 5122
    invoke-static {p2}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v4

    :goto_5
    if-eqz v4, :cond_e

    .line 5671
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 4679
    throw p1

    .line 398
    :cond_e
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    .line 400
    monitor-exit v3

    throw p1

    .line 353
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 488
    iget-object v0, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    iget-object v0, v0, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    return-object v0
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    monitor-enter v0

    const/4 v1, 0x1

    .line 496
    :try_start_0
    iput-boolean v1, p0, Lo/getServerCache$onMessageChannelReady;->onNavigationEvent:Z

    .line 497
    iget-object v1, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;

    .line 9067
    iget-wide v1, v1, Lo/updatePriority;->ICustomTabsCallback:J

    .line 498
    iget-object v3, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9930
    :try_start_1
    iget-wide v4, v3, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {v3, v4, v5}, Lo/updatePriority;->asInterface(J)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :try_start_2
    iget-object v3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    invoke-static {v3}, Lo/getServerCache;->ICustomTabsCallback(Lo/getServerCache;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lo/getServerCache;->ICustomTabsCallback$Stub()Lo/loadsAllData$onPostMessage;

    .line 504
    :cond_0
    iget-object v3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 505
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 507
    invoke-direct {p0, v1, v2}, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady(J)V

    .line 509
    :cond_1
    iget-object v0, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    invoke-virtual {v0}, Lo/getServerCache;->onPostMessage()V

    return-void

    :catch_0
    move-exception v1

    .line 9932
    :try_start_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 505
    monitor-exit v0

    throw v1
.end method

.method final onPostMessage(Lo/fullLimitUpdateChild;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    sget-boolean v0, Lo/getServerCache$onMessageChannelReady;->asBinder:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_a

    .line 442
    iget-object v2, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    monitor-enter v2

    .line 443
    :try_start_0
    iget-boolean v3, p0, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady:Z

    .line 444
    iget-object v4, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;

    .line 6067
    iget-wide v4, v4, Lo/updatePriority;->ICustomTabsCallback:J

    add-long/2addr v4, p2

    .line 444
    iget-wide v6, p0, Lo/getServerCache$onMessageChannelReady;->ICustomTabsCallback:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 445
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_4

    .line 449
    invoke-interface {p1, p2, p3}, Lo/fullLimitUpdateChild;->asInterface(J)V

    .line 450
    iget-object p1, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    sget-object p2, Lo/getNodeFilter;->ICustomTabsCallback:Lo/getNodeFilter;

    .line 6251
    invoke-virtual {p1, p2}, Lo/getServerCache;->onPostMessage(Lo/getNodeFilter;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6254
    iget-object p3, p1, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget p1, p1, Lo/getServerCache;->onMessageChannelReady:I

    invoke-virtual {p3, p1, p2}, Lo/normalizeValue;->extraCallback(ILo/getNodeFilter;)V

    :cond_3
    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 456
    invoke-interface {p1, p2, p3}, Lo/fullLimitUpdateChild;->asInterface(J)V

    return-void

    .line 461
    :cond_5
    iget-object v2, p0, Lo/getServerCache$onMessageChannelReady;->extraCallback:Lo/updatePriority;

    invoke-interface {p1, v2, p2, p3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    sub-long/2addr p2, v2

    .line 469
    iget-object v2, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    monitor-enter v2

    .line 470
    :try_start_1
    iget-boolean v3, p0, Lo/getServerCache$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v3, :cond_6

    .line 471
    iget-object v3, p0, Lo/getServerCache$onMessageChannelReady;->extraCallback:Lo/updatePriority;

    .line 7067
    iget-wide v3, v3, Lo/updatePriority;->ICustomTabsCallback:J

    .line 472
    iget-object v5, p0, Lo/getServerCache$onMessageChannelReady;->extraCallback:Lo/updatePriority;

    invoke-virtual {v5}, Lo/updatePriority;->updateVisuals()V

    goto :goto_3

    .line 474
    :cond_6
    iget-object v3, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;

    .line 8067
    iget-wide v3, v3, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 475
    :goto_2
    iget-object v3, p0, Lo/getServerCache$onMessageChannelReady;->onPostMessage:Lo/updatePriority;

    iget-object v4, p0, Lo/getServerCache$onMessageChannelReady;->extraCallback:Lo/updatePriority;

    invoke-virtual {v3, v4}, Lo/updatePriority;->ICustomTabsCallback(Lo/toLog;)J

    if-eqz v8, :cond_8

    .line 477
    iget-object v3, p0, Lo/getServerCache$onMessageChannelReady;->asInterface:Lo/getServerCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_8
    move-wide v3, v0

    .line 480
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v3, v0

    if-lez v2, :cond_1

    .line 482
    invoke-direct {p0, v3, v4}, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 480
    monitor-exit v2

    throw p1

    .line 462
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 445
    monitor-exit v2

    throw p1

    :cond_a
    return-void
.end method
