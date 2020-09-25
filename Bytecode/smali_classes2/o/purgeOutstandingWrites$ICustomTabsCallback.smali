.class final Lo/purgeOutstandingWrites$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/exceptionStacktrace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/purgeOutstandingWrites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field private static synthetic ICustomTabsCallback:Z


# instance fields
.field private extraCallback:Z

.field private onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Lo/purgeOutstandingWrites;

.field private final onPostMessage:Lo/updatePriority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 470
    const-class v0, Lo/purgeOutstandingWrites;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->ICustomTabsCallback:Z

    return-void
.end method

.method constructor <init>(Lo/purgeOutstandingWrites;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/purgeOutstandingWrites$ICustomTabsCallback;Z)Z
    .locals 0

    .line 470
    iput-boolean p1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onMessageChannelReady:Z

    return p1
.end method

.method private extraCallback(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v1}, Lo/purgeOutstandingWrites;->onTransact(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v1

    invoke-virtual {v1}, Lo/getIndexedFilter;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    const/4 v1, 0x0

    .line 504
    :try_start_1
    iget-object v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    iget-wide v2, v2, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    iget-boolean v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onMessageChannelReady:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onMessageChannelReady(Lo/purgeOutstandingWrites;)Lo/getReferenceFromUrl;

    move-result-object v2

    if-nez v2, :cond_0

    .line 505
    iget-object v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onNavigationEvent(Lo/purgeOutstandingWrites;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 508
    :cond_0
    :try_start_2
    iget-object v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onTransact(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v2

    .line 2120
    iget-boolean v3, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 2121
    :cond_1
    iput-boolean v1, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 2122
    invoke-static {v2}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_7

    .line 511
    iget-object v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub(Lo/purgeOutstandingWrites;)V

    .line 512
    iget-object v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    iget-wide v2, v2, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    iget-object v4, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    .line 4067
    iget-wide v4, v4, Lo/updatePriority;->ICustomTabsCallback:J

    .line 512
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 513
    iget-object v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    iget-wide v3, v2, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    sub-long/2addr v3, v10

    iput-wide v3, v2, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    .line 514
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 516
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->onTransact(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/getIndexedFilter;->onMessageChannelReady()V

    .line 518
    :try_start_3
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v6

    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->extraCallback(Lo/purgeOutstandingWrites;)I

    move-result v7

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    .line 5067
    iget-wide v2, p1, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long p1, v10, v2

    if-nez p1, :cond_2

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 518
    :goto_2
    iget-object v9, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    invoke-virtual/range {v6 .. v11}, Lo/setPersistenceEnabled;->onNavigationEvent(IZLo/updatePriority;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    iget-object p1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {p1}, Lo/purgeOutstandingWrites;->onTransact(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object p1

    .line 6120
    iget-boolean v0, p1, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v0, :cond_3

    goto :goto_3

    .line 6121
    :cond_3
    iput-boolean v1, p1, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 6122
    invoke-static {p1}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v1

    :goto_3
    if-nez v1, :cond_4

    return-void

    .line 6605
    :cond_4
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p1, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 5613
    throw p1

    :catchall_0
    move-exception p1

    .line 520
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->onTransact(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v0

    .line 7120
    iget-boolean v2, v0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v2, :cond_5

    goto :goto_4

    .line 7121
    :cond_5
    iput-boolean v1, v0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 7122
    invoke-static {v0}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_6

    .line 7605
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p1, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 6613
    throw p1

    .line 520
    :cond_6
    throw p1

    .line 2605
    :cond_7
    :try_start_4
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {p1, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 1613
    throw p1

    :catchall_1
    move-exception p1

    .line 508
    iget-object v2, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onTransact(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v2

    .line 3120
    iget-boolean v3, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v3, :cond_8

    goto :goto_5

    .line 3121
    :cond_8
    iput-boolean v1, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 3122
    invoke-static {v2}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_9

    .line 3605
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {p1, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 2613
    throw p1

    .line 508
    :cond_9
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 514
    monitor-exit v0

    throw p1
.end method

.method static synthetic extraCallback(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onMessageChannelReady:Z

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 536
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->onTransact(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    sget-boolean v0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 541
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    monitor-enter v0

    .line 542
    :try_start_0
    iget-boolean v1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback:Z

    if-eqz v1, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 543
    :cond_2
    monitor-exit v0

    .line 544
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    iget-object v0, v0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    iget-boolean v0, v0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 546
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    .line 9067
    iget-wide v2, v0, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 547
    :goto_1
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    .line 10067
    iget-wide v2, v0, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 548
    invoke-direct {p0, v1}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback(Z)V

    goto :goto_1

    .line 552
    :cond_3
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v2

    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->extraCallback(Lo/purgeOutstandingWrites;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lo/setPersistenceEnabled;->onNavigationEvent(IZLo/updatePriority;J)V

    .line 555
    :cond_4
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    monitor-enter v0

    .line 556
    :try_start_1
    iput-boolean v1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback:Z

    .line 557
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v0

    .line 10420
    iget-object v0, v0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v0}, Lo/getReference;->ICustomTabsCallback()V

    .line 559
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->asInterface(Lo/purgeOutstandingWrites;)V

    return-void

    :catchall_0
    move-exception v1

    .line 557
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 543
    monitor-exit v0

    throw v1
.end method

.method public final flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    sget-boolean v0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 526
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    monitor-enter v0

    .line 527
    :try_start_0
    iget-object v1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v1}, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub(Lo/purgeOutstandingWrites;)V

    .line 528
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :goto_1
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    .line 8067
    iget-wide v0, v0, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .line 530
    invoke-direct {p0, v0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback(Z)V

    .line 531
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v0

    .line 8420
    iget-object v0, v0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v0}, Lo/getReference;->ICustomTabsCallback()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 528
    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    sget-boolean v0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 489
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    invoke-virtual {v0, p1, p2, p3}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 490
    :goto_1
    iget-object p1, p0, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onPostMessage:Lo/updatePriority;

    .line 1067
    iget-wide p1, p1, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    .line 491
    invoke-direct {p0, p1}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
