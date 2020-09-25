.class final Lo/appendFrame$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/markSent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/appendFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getSnap$onPostMessage;

.field private asBinder:Z

.field private final extraCallback:Lo/filtersNodes;

.field private onMessageChannelReady:I

.field private final onNavigationEvent:Lo/updatePriority;

.field private final onPostMessage:Z


# direct methods
.method constructor <init>(Lo/filtersNodes;Z)V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lo/appendFrame$extraCallback;->onPostMessage:Z

    .line 385
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/appendFrame$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 386
    new-instance p2, Lo/getSnap$onPostMessage;

    invoke-direct {p2, p1}, Lo/getSnap$onPostMessage;-><init>(Lo/updatePriority;)V

    iput-object p2, p0, Lo/appendFrame$extraCallback;->ICustomTabsCallback:Lo/getSnap$onPostMessage;

    const/16 p1, 0x4000

    .line 387
    iput p1, p0, Lo/appendFrame$extraCallback;->onMessageChannelReady:I

    return-void
.end method

.method private onMessageChannelReady(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 469
    iget v2, p0, Lo/appendFrame$extraCallback;->onMessageChannelReady:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr p2, v4

    const/16 v2, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 471
    :goto_1
    invoke-direct {p0, p1, v3, v2, v0}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    .line 472
    iget-object v0, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    iget-object v1, p0, Lo/appendFrame$extraCallback;->onNavigationEvent:Lo/updatePriority;

    invoke-interface {v0, v1, v4, v5}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onNavigationEvent(IIBB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    invoke-static {}, Lo/appendFrame;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/appendFrame;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1, p1, p2, p3, p4}, Lo/appendFrame$onNavigationEvent;->onPostMessage(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 579
    :cond_0
    iget v0, p0, Lo/appendFrame$extraCallback;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-static {v0, p2}, Lo/appendFrame;->onPostMessage(Lo/filtersNodes;I)V

    .line 584
    iget-object p2, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 585
    iget-object p2, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 586
    iget-object p2, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    return-void

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    .line 582
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lo/appendFrame;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lo/appendFrame;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 559
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 567
    invoke-direct {p0, p1, v0, v1, v2}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    .line 568
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 569
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 562
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    .line 561
    invoke-static {p1, v0}, Lo/appendFrame;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 559
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 573
    :try_start_0
    iput-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    .line 574
    iget-object v0, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 490
    iget v0, p0, Lo/appendFrame$extraCallback;->onMessageChannelReady:I

    return v0
.end method

.method public final declared-synchronized extraCallback(ILo/wasSent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_1

    .line 479
    iget v0, p2, Lo/wasSent;->newSession:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 484
    invoke-direct {p0, p1, v0, v1, v2}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    .line 485
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    iget p2, p2, Lo/wasSent;->newSession:I

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 486
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    .line 479
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 478
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(Lo/orderBy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 510
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_5

    .line 3135
    iget v0, p1, Lo/orderBy;->onPostMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 515
    invoke-direct {p0, v2, v0, v1, v2}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    const/4 v3, 0x1

    shl-int v4, v3, v0

    .line 4117
    iget v5, p1, Lo/orderBy;->onPostMessage:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    if-ne v0, v1, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :cond_1
    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :cond_2
    move v3, v0

    .line 521
    :goto_2
    iget-object v4, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {v4, v3}, Lo/filtersNodes;->onRelationshipValidationResult(I)Lo/filtersNodes;

    .line 522
    iget-object v3, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    .line 4122
    iget-object v4, p1, Lo/orderBy;->onNavigationEvent:[I

    aget v4, v4, v0

    .line 522
    invoke-interface {v3, v4}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_4
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 510
    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(ZZIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_5

    .line 420
    :try_start_0
    iget-boolean p2, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez p2, :cond_4

    .line 1453
    iget-boolean p2, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez p2, :cond_3

    .line 1454
    iget-object p2, p0, Lo/appendFrame$extraCallback;->ICustomTabsCallback:Lo/getSnap$onPostMessage;

    invoke-virtual {p2, p5}, Lo/getSnap$onPostMessage;->onMessageChannelReady(Ljava/util/List;)V

    .line 1456
    iget-object p2, p0, Lo/appendFrame$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 2067
    iget-wide p4, p2, Lo/updatePriority;->ICustomTabsCallback:J

    .line 1457
    iget p2, p0, Lo/appendFrame$extraCallback;->onMessageChannelReady:I

    int-to-long v0, p2

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    int-to-long v0, p2

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v3, 0x1

    int-to-byte v3, p1

    :cond_1
    const/4 p1, 0x1

    .line 1461
    invoke-direct {p0, p3, p2, p1, v3}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    .line 1462
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    iget-object p2, p0, Lo/appendFrame$extraCallback;->onNavigationEvent:Lo/updatePriority;

    invoke-interface {p1, p2, v0, v1}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V

    if-lez v2, :cond_2

    sub-long/2addr p4, v0

    .line 1464
    invoke-direct {p0, p3, p4, p5}, Lo/appendFrame$extraCallback;->onMessageChannelReady(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_2
    monitor-exit p0

    return-void

    .line 1453
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 420
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 419
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 391
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent(ILo/wasSent;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 542
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_2

    .line 543
    iget v0, p2, Lo/wasSent;->newSession:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 544
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 548
    invoke-direct {p0, v2, v0, v1, v2}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    .line 549
    iget-object v0, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 550
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    iget p2, p2, Lo/wasSent;->newSession:I

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 551
    array-length p1, p3

    if-lez p1, :cond_0

    .line 552
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1, p3}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 554
    :cond_0
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 543
    invoke-static {p1, p2}, Lo/appendFrame;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 542
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 529
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x6

    .line 534
    invoke-direct {p0, v0, v1, v2, p1}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    .line 535
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 536
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1, p3}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 537
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    .line 529
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(ZILo/updatePriority;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 495
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2503
    invoke-direct {p0, p2, p4, v0, p1}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    if-lez p4, :cond_0

    .line 2505
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :cond_0
    monitor-exit p0

    return-void

    .line 495
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_2

    .line 408
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 409
    :cond_0
    :try_start_1
    invoke-static {}, Lo/appendFrame;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-static {}, Lo/appendFrame;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lo/appendFrame;->extraCallback()Lo/matches;

    move-result-object v4

    invoke-virtual {v4}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 412
    :cond_1
    iget-object v0, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-static {}, Lo/appendFrame;->extraCallback()Lo/matches;

    move-result-object v1

    invoke-virtual {v1}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 413
    iget-object v0, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 407
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage(Lo/orderBy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lo/appendFrame$extraCallback;->asBinder:Z

    if-nez v0, :cond_1

    .line 397
    iget v0, p0, Lo/appendFrame$extraCallback;->onMessageChannelReady:I

    .line 1184
    iget v1, p1, Lo/orderBy;->onPostMessage:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object p1, p1, Lo/orderBy;->onNavigationEvent:[I

    const/4 v0, 0x5

    aget v0, p1, v0

    .line 397
    :cond_0
    iput v0, p0, Lo/appendFrame$extraCallback;->onMessageChannelReady:I

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 402
    invoke-direct {p0, v1, v1, p1, v0}, Lo/appendFrame$extraCallback;->onNavigationEvent(IIBB)V

    .line 403
    iget-object p1, p0, Lo/appendFrame$extraCallback;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 396
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
