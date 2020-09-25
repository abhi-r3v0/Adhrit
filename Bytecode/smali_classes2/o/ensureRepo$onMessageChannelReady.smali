.class final Lo/ensureRepo$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/updatePriority;

.field private final extraCallback:Lo/filtersNodes;

.field private onMessageChannelReady:Z

.field private final onNavigationEvent:Z

.field private final onPostMessage:Lo/filtersNodes;


# direct methods
.method constructor <init>(Lo/filtersNodes;Z)V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    .line 296
    iput-boolean p2, p0, Lo/ensureRepo$onMessageChannelReady;->onNavigationEvent:Z

    .line 298
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    sget-object p2, Lo/ensureRepo;->extraCallback:[B

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance p2, Lo/updatePriority;

    invoke-direct {p2}, Lo/updatePriority;-><init>()V

    iput-object p2, p0, Lo/ensureRepo$onMessageChannelReady;->ICustomTabsCallback:Lo/updatePriority;

    .line 301
    new-instance p2, Lo/setInflatedId;

    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->ICustomTabsCallback:Lo/updatePriority;

    invoke-direct {p2, v0, p1}, Lo/setInflatedId;-><init>(Lo/exceptionStacktrace;Ljava/util/zip/Deflater;)V

    invoke-static {p2}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object p1

    iput-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->onPostMessage:Lo/filtersNodes;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 409
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 410
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 411
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setPersistenceCacheSizeBytes;

    iget-object v2, v2, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    .line 412
    iget-object v3, p0, Lo/ensureRepo$onMessageChannelReady;->onPostMessage:Lo/filtersNodes;

    invoke-virtual {v2}, Lo/matches;->onTransact()I

    move-result v4

    invoke-interface {v3, v4}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 413
    iget-object v3, p0, Lo/ensureRepo$onMessageChannelReady;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v3, v2}, Lo/filtersNodes;->onMessageChannelReady(Lo/matches;)Lo/filtersNodes;

    .line 414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setPersistenceCacheSizeBytes;

    iget-object v2, v2, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    .line 415
    iget-object v3, p0, Lo/ensureRepo$onMessageChannelReady;->onPostMessage:Lo/filtersNodes;

    invoke-virtual {v2}, Lo/matches;->onTransact()I

    move-result v4

    invoke-interface {v3, v4}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 416
    iget-object v3, p0, Lo/ensureRepo$onMessageChannelReady;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v3, v2}, Lo/filtersNodes;->onMessageChannelReady(Lo/matches;)Lo/filtersNodes;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V

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

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 319
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_0
    iget-boolean v0, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v0, :cond_7

    .line 2132
    iget v0, p1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    shl-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    .line 427
    iget-object v2, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 428
    iget-object v2, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/4 v4, 0x0

    or-int/2addr v1, v4

    invoke-interface {v2, v1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 429
    iget-object v1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {v1, v0}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_6

    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 3114
    iget v5, p1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 3226
    iget v5, p1, Lo/isZombied$onPostMessage;->onMessageChannelReady:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 4220
    :goto_3
    iget v6, p1, Lo/isZombied$onPostMessage;->onPostMessage:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_4

    or-int/lit8 v5, v5, 0x1

    .line 433
    :cond_4
    iget-object v1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    and-int/lit16 v2, v5, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int v5, v0, v3

    or-int/2addr v2, v5

    invoke-interface {v1, v2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 434
    iget-object v1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    .line 5119
    iget-object v2, p1, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v2, v2, v0

    .line 434
    invoke-interface {v1, v2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_6
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    .line 422
    :cond_7
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
    .locals 2
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

    .line 326
    :try_start_0
    iget-boolean p4, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez p4, :cond_1

    .line 327
    invoke-direct {p0, p5}, Lo/ensureRepo$onMessageChannelReady;->ICustomTabsCallback(Ljava/util/List;)V

    const-wide/16 p4, 0xa

    .line 328
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->ICustomTabsCallback:Lo/updatePriority;

    .line 1067
    iget-wide v0, v0, Lo/updatePriority;->ICustomTabsCallback:J

    add-long/2addr v0, p4

    long-to-int p4, v0

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    .line 333
    iget-object p2, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const v0, -0x7ffcffff

    invoke-interface {p2, v0}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 334
    iget-object p2, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v0, 0xffffff

    and-int/2addr p4, v0

    or-int/2addr p1, p4

    invoke-interface {p2, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 335
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const p2, 0x7fffffff

    and-int/2addr p2, p3

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 336
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1, p5}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 337
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1, p5}, Lo/filtersNodes;->onRelationshipValidationResult(I)Lo/filtersNodes;

    .line 338
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    iget-object p2, p0, Lo/ensureRepo$onMessageChannelReady;->ICustomTabsCallback:Lo/updatePriority;

    invoke-interface {p1, p2}, Lo/filtersNodes;->ICustomTabsCallback(Lo/toLog;)J

    .line 339
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 326
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

.method public final declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 487
    :try_start_0
    iput-boolean v0, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    .line 488
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    iget-object v1, p0, Lo/ensureRepo$onMessageChannelReady;->onPostMessage:Lo/filtersNodes;

    invoke-static {v0, v1}, Lo/createForTests;->ICustomTabsCallback(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback(Lo/isZombied$onPostMessage;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized extraCallback(ZILo/updatePriority;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1397
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v0, :cond_3

    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 1401
    iget-object v2, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const v3, 0x7fffffff

    and-int/2addr p2, v3

    invoke-interface {v2, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 1402
    iget-object p2, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr p1, v2

    invoke-interface {p2, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    if-lez p4, :cond_1

    .line 1404
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1, p3, v0, v1}, Lo/filtersNodes;->onPostMessage(Lo/updatePriority;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_1
    monitor-exit p0

    return-void

    .line 1399
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1397
    :cond_3
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

    const/16 v0, 0x3fff

    return v0
.end method

.method public final declared-synchronized onMessageChannelReady(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 471
    :try_start_0
    iget-boolean v0, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 479
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 480
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 481
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 482
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 483
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 473
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 471
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
    .locals 0

    monitor-enter p0

    .line 316
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onNavigationEvent(ILo/getReferenceFromUrl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 373
    :try_start_0
    iget-boolean v0, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    .line 374
    iget v0, p2, Lo/getReferenceFromUrl;->onRelationshipValidationResult:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 379
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 380
    iget-object v0, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    invoke-interface {v0, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 381
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    iget p2, p2, Lo/getReferenceFromUrl;->onRelationshipValidationResult:I

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 382
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 374
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 373
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 455
    :try_start_0
    iget-boolean p3, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez p3, :cond_1

    .line 456
    iget p3, p2, Lo/getReferenceFromUrl;->ICustomTabsService:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 462
    iget-object p3, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const v0, -0x7ffcfff9

    invoke-interface {p3, v0}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 463
    iget-object p3, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const/16 v0, 0x8

    invoke-interface {p3, v0}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 464
    iget-object p3, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p3, p1}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 465
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    iget p2, p2, Lo/getReferenceFromUrl;->ICustomTabsService:I

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 466
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 457
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 455
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

.method public final declared-synchronized onPostMessage(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    iget-boolean p3, p0, Lo/ensureRepo$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez p3, :cond_3

    .line 442
    iget-boolean p3, p0, Lo/ensureRepo$onMessageChannelReady;->onNavigationEvent:Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p3, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-ne p1, v1, :cond_2

    .line 447
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const p3, -0x7ffcfffa

    invoke-interface {p1, p3}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 448
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    const/4 p3, 0x4

    invoke-interface {p1, p3}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 449
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1, p2}, Lo/filtersNodes;->onTransact(I)Lo/filtersNodes;

    .line 450
    iget-object p1, p0, Lo/ensureRepo$onMessageChannelReady;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    .line 443
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "payload != reply"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_3
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
