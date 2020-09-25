.class final Lo/interrupt$ICustomTabsCallback;
.super Ljava/io/FilterInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/interrupt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private final extraCallback:I

.field private onMessageChannelReady:J

.field private onNavigationEvent:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;ILo/restoreAuth;)V
    .locals 2

    .line 450
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, -0x1

    .line 447
    iput-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onMessageChannelReady:J

    .line 451
    iput p2, p0, Lo/interrupt$ICustomTabsCallback;->extraCallback:I

    return-void
.end method

.method private onNavigationEvent()V
    .locals 5

    .line 514
    iget-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    iget v2, p0, Lo/interrupt$ICustomTabsCallback;->extraCallback:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 515
    :cond_0
    sget-object v0, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lo/interrupt$ICustomTabsCallback;->extraCallback:I

    .line 517
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Compressed gRPC message exceeds maximum size %d: %d bytes read"

    .line 515
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 3524
    new-instance v1, Lio/grpc/StatusRuntimeException;

    invoke-direct {v1, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 517
    throw v1
.end method


# virtual methods
.method public final declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 489
    iget-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    iput-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onMessageChannelReady:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 459
    iget-wide v1, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    .line 461
    :cond_0
    invoke-direct {p0}, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent()V

    .line 1507
    iget-wide v1, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    iget-wide v3, p0, Lo/interrupt$ICustomTabsCallback;->ICustomTabsCallback:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 1509
    iput-wide v1, p0, Lo/interrupt$ICustomTabsCallback;->ICustomTabsCallback:J

    :cond_1
    return v0
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 470
    iget-wide p2, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    .line 472
    :cond_0
    invoke-direct {p0}, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent()V

    .line 2507
    iget-wide p2, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    iget-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->ICustomTabsCallback:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 2509
    iput-wide p2, p0, Lo/interrupt$ICustomTabsCallback;->ICustomTabsCallback:J

    :cond_1
    return p1
.end method

.method public final declared-synchronized reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onMessageChannelReady:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 502
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 503
    iget-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onMessageChannelReady:J

    iput-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    .line 499
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 480
    iget-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    .line 481
    invoke-direct {p0}, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent()V

    .line 3507
    iget-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->onNavigationEvent:J

    iget-wide v2, p0, Lo/interrupt$ICustomTabsCallback;->ICustomTabsCallback:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3509
    iput-wide v0, p0, Lo/interrupt$ICustomTabsCallback;->ICustomTabsCallback:J

    :cond_0
    return-wide p1
.end method
