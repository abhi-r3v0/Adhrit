.class final Lo/value$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Z

.field private final extraCallback:Lo/assertUnfrozen$ICustomTabsCallback;

.field private final onMessageChannelReady:Lo/updatePriority;

.field private onNavigationEvent:I

.field private final onPostMessage:Lo/filtersNodes;


# direct methods
.method constructor <init>(Lo/filtersNodes;Z)V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    .line 373
    iput-boolean p2, p0, Lo/value$extraCallback;->ICustomTabsCallback:Z

    .line 374
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/value$extraCallback;->onMessageChannelReady:Lo/updatePriority;

    .line 375
    new-instance p2, Lo/assertUnfrozen$ICustomTabsCallback;

    invoke-direct {p2, p1}, Lo/assertUnfrozen$ICustomTabsCallback;-><init>(Lo/updatePriority;)V

    iput-object p2, p0, Lo/value$extraCallback;->extraCallback:Lo/assertUnfrozen$ICustomTabsCallback;

    const/16 p1, 0x4000

    .line 376
    iput p1, p0, Lo/value$extraCallback;->onNavigationEvent:I

    return-void
.end method

.method private onNavigationEvent(IIBB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    invoke-static {}, Lo/value;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/value;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1, p1, p2, p3, p4}, Lo/value$onNavigationEvent;->onPostMessage(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 568
    :cond_0
    iget v0, p0, Lo/value$extraCallback;->onNavigationEvent:I

    const/4 v2, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-static {v0, p2}, Lo/value;->onNavigationEvent(Lo/filtersNodes;I)V

    .line 573
    iget-object p2, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 574
    iget-object p2, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 575
    iget-object p2, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    return-void

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    .line 571
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lo/value;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lo/value;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method private onPostMessage(IJ)V
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

    .line 458
    iget v2, p0, Lo/value$extraCallback;->onNavigationEvent:I

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

    .line 460
    :goto_1
    invoke-direct {p0, p1, v3, v2, v0}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    .line 461
    iget-object v0, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    iget-object v1, p0, Lo/value$extraCallback;->onMessageChannelReady:Lo/updatePriority;

    invoke-interface {v0, v1, v4, v5}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 380
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

.method public final declared-synchronized ICustomTabsCallback(Lo/isZombied$onPostMessage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 499
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_5

    .line 3132
    iget v0, p1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 504
    invoke-direct {p0, v2, v0, v1, v2}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    const/4 v3, 0x1

    shl-int v4, v3, v0

    .line 4114
    iget v5, p1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

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

    .line 510
    :goto_2
    iget-object v4, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v4, v3}, Lo/filtersNodes;->onRelationshipValidationResult(I)Lo/filtersNodes;

    .line 511
    iget-object v3, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    .line 4119
    iget-object v4, p1, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v4, v4, v0

    .line 511
    invoke-interface {v3, v4}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_4
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    .line 499
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

.method public final declared-synchronized ICustomTabsCallback(ZZIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
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

    .line 409
    :try_start_0
    iget-boolean p2, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez p2, :cond_4

    .line 1442
    iget-boolean p2, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez p2, :cond_3

    .line 1443
    iget-object p2, p0, Lo/value$extraCallback;->extraCallback:Lo/assertUnfrozen$ICustomTabsCallback;

    invoke-virtual {p2, p5}, Lo/assertUnfrozen$ICustomTabsCallback;->ICustomTabsCallback(Ljava/util/List;)V

    .line 1445
    iget-object p2, p0, Lo/value$extraCallback;->onMessageChannelReady:Lo/updatePriority;

    .line 2067
    iget-wide p4, p2, Lo/updatePriority;->ICustomTabsCallback:J

    .line 1446
    iget p2, p0, Lo/value$extraCallback;->onNavigationEvent:I

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

    .line 1450
    invoke-direct {p0, p3, p2, p1, v3}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    .line 1451
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    iget-object p2, p0, Lo/value$extraCallback;->onMessageChannelReady:Lo/updatePriority;

    invoke-interface {p1, p2, v0, v1}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V

    if-lez v2, :cond_2

    sub-long/2addr p4, v0

    .line 1453
    invoke-direct {p0, p3, p4, p5}, Lo/value$extraCallback;->onPostMessage(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_2
    monitor-exit p0

    return-void

    .line 1442
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 408
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

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 562
    :try_start_0
    iput-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    .line 563
    iget-object v0, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback(Lo/isZombied$onPostMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 385
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 386
    iget v0, p0, Lo/value$extraCallback;->onNavigationEvent:I

    .line 1181
    iget v1, p1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object p1, p1, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    const/4 v0, 0x5

    aget v0, p1, v0

    .line 386
    :cond_0
    iput v0, p0, Lo/value$extraCallback;->onNavigationEvent:I

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    invoke-direct {p0, v1, v1, p1, v0}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    .line 392
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 385
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

.method public final declared-synchronized extraCallback(ZILo/updatePriority;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 484
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2492
    invoke-direct {p0, p2, p4, v0, p1}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    if-lez p4, :cond_0

    .line 2494
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :cond_0
    monitor-exit p0

    return-void

    .line 484
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

.method public final onMessageChannelReady()I
    .locals 1

    .line 479
    iget v0, p0, Lo/value$extraCallback;->onNavigationEvent:I

    return v0
.end method

.method public final declared-synchronized onMessageChannelReady(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 548
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

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

    .line 556
    invoke-direct {p0, p1, v0, v1, v2}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    .line 557
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 558
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 551
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    .line 550
    invoke-static {p1, v0}, Lo/value;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 548
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

.method public final declared-synchronized onNavigationEvent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_2

    .line 397
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_1
    invoke-static {}, Lo/value;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Lo/value;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lo/value;->extraCallback()Lo/matches;

    move-result-object v4

    invoke-virtual {v4}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-static {}, Lo/value;->extraCallback()Lo/matches;

    move-result-object v1

    invoke-virtual {v1}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 402
    iget-object v0, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 396
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

.method public final declared-synchronized onNavigationEvent(ILo/getReferenceFromUrl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 467
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 468
    iget v0, p2, Lo/getReferenceFromUrl;->asBinder:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 473
    invoke-direct {p0, p1, v0, v1, v2}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    .line 474
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    iget p2, p2, Lo/getReferenceFromUrl;->asBinder:I

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 475
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 468
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 467
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

.method public final declared-synchronized onNavigationEvent(ILo/getReferenceFromUrl;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 531
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_2

    .line 532
    iget v0, p2, Lo/getReferenceFromUrl;->asBinder:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 533
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 537
    invoke-direct {p0, v2, v0, v1, v2}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    .line 538
    iget-object v0, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v0, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 539
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    iget p2, p2, Lo/getReferenceFromUrl;->asBinder:I

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 540
    array-length p1, p3

    if-lez p1, :cond_0

    .line 541
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1, p3}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 543
    :cond_0
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 532
    invoke-static {p1, p2}, Lo/value;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 531
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

.method public final declared-synchronized onPostMessage(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 518
    :try_start_0
    iget-boolean v0, p0, Lo/value$extraCallback;->ICustomTabsCallback$Stub:Z

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

    .line 523
    invoke-direct {p0, v0, v1, v2, p1}, Lo/value$extraCallback;->onNavigationEvent(IIBB)V

    .line 524
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 525
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1, p3}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 526
    iget-object p1, p0, Lo/value$extraCallback;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 518
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
