.class final Lo/getServerCache$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/exceptionStacktrace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getServerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# static fields
.field private static synthetic onPostMessage:Z


# instance fields
.field private final ICustomTabsCallback:Lo/updatePriority;

.field extraCallback:Z

.field private synthetic onMessageChannelReady:Lo/getServerCache;

.field onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 538
    const-class v0, Lo/getServerCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getServerCache$extraCallback;->onPostMessage:Z

    return-void
.end method

.method constructor <init>(Lo/getServerCache;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    return-void
.end method

.method private onMessageChannelReady(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v1, v1, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

    invoke-virtual {v1}, Lo/getIndexedFilter;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    const/4 v1, 0x0

    .line 571
    :try_start_1
    iget-object v2, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-wide v2, v2, Lo/getServerCache;->onPostMessage:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    iget-boolean v2, p0, Lo/getServerCache$extraCallback;->extraCallback:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lo/getServerCache$extraCallback;->onNavigationEvent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v2, v2, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    if-nez v2, :cond_0

    .line 572
    iget-object v2, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1654
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1656
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1657
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 575
    :cond_0
    :try_start_4
    iget-object v2, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v2, v2, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

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

    .line 578
    iget-object v2, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    invoke-virtual {v2}, Lo/getServerCache;->onRelationshipValidationResult()V

    .line 579
    iget-object v2, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-wide v2, v2, Lo/getServerCache;->onPostMessage:J

    iget-object v4, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    .line 4067
    iget-wide v4, v4, Lo/updatePriority;->ICustomTabsCallback:J

    .line 579
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 580
    iget-object v2, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-wide v3, v2, Lo/getServerCache;->onPostMessage:J

    sub-long/2addr v3, v10

    iput-wide v3, v2, Lo/getServerCache;->onPostMessage:J

    .line 581
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 583
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v0, v0, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getIndexedFilter;->onMessageChannelReady()V

    .line 585
    :try_start_5
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v6, v0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget v7, v0, Lo/getServerCache;->onMessageChannelReady:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    .line 5067
    iget-wide v2, p1, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long p1, v10, v2

    if-nez p1, :cond_2

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 585
    :goto_2
    iget-object v9, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    invoke-virtual/range {v6 .. v11}, Lo/normalizeValue;->onMessageChannelReady(IZLo/updatePriority;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 587
    iget-object p1, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object p1, p1, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

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

    .line 6671
    :cond_4
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p1, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 5679
    throw p1

    :catchall_0
    move-exception p1

    .line 587
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v0, v0, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

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

    .line 7671
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p1, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 6679
    throw p1

    .line 587
    :cond_6
    throw p1

    .line 2671
    :cond_7
    :try_start_6
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {p1, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 1679
    throw p1

    :catchall_1
    move-exception p1

    .line 575
    iget-object v2, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v2, v2, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

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

    .line 3671
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {p1, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 2679
    throw p1

    .line 575
    :cond_9
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 581
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 603
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v0, v0, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

    return-object v0
.end method

.method public final close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    sget-boolean v0, Lo/getServerCache$extraCallback;->onPostMessage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 608
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    monitor-enter v0

    .line 609
    :try_start_0
    iget-boolean v1, p0, Lo/getServerCache$extraCallback;->onNavigationEvent:Z

    if-eqz v1, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 610
    :cond_2
    monitor-exit v0

    .line 611
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v0, v0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iget-boolean v0, v0, Lo/getServerCache$extraCallback;->extraCallback:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 613
    iget-object v0, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    .line 9067
    iget-wide v2, v0, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 614
    :goto_1
    iget-object v0, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    .line 10067
    iget-wide v2, v0, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 615
    invoke-direct {p0, v1}, Lo/getServerCache$extraCallback;->onMessageChannelReady(Z)V

    goto :goto_1

    .line 619
    :cond_3
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v2, v0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget v3, v0, Lo/getServerCache;->onMessageChannelReady:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lo/normalizeValue;->onMessageChannelReady(IZLo/updatePriority;J)V

    .line 622
    :cond_4
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    monitor-enter v0

    .line 623
    :try_start_1
    iput-boolean v1, p0, Lo/getServerCache$extraCallback;->onNavigationEvent:Z

    .line 624
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v0, v0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    .line 10412
    iget-object v0, v0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v0}, Lo/updateServerSnap;->extraCallback()V

    .line 626
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    invoke-virtual {v0}, Lo/getServerCache;->onPostMessage()V

    return-void

    :catchall_0
    move-exception v1

    .line 624
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 610
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

    .line 592
    sget-boolean v0, Lo/getServerCache$extraCallback;->onPostMessage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 593
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    monitor-enter v0

    .line 594
    :try_start_0
    iget-object v1, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    invoke-virtual {v1}, Lo/getServerCache;->onRelationshipValidationResult()V

    .line 595
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :goto_1
    iget-object v0, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    .line 8067
    iget-wide v0, v0, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, v0}, Lo/getServerCache$extraCallback;->onMessageChannelReady(Z)V

    .line 598
    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    iget-object v0, v0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    .line 8412
    iget-object v0, v0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v0}, Lo/updateServerSnap;->extraCallback()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 595
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

    .line 555
    sget-boolean v0, Lo/getServerCache$extraCallback;->onPostMessage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getServerCache$extraCallback;->onMessageChannelReady:Lo/getServerCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 556
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    invoke-virtual {v0, p1, p2, p3}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 557
    :goto_1
    iget-object p1, p0, Lo/getServerCache$extraCallback;->ICustomTabsCallback:Lo/updatePriority;

    .line 1067
    iget-wide p1, p1, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    .line 558
    invoke-direct {p0, p1}, Lo/getServerCache$extraCallback;->onMessageChannelReady(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
