.class public Lo/ViewBoundsCheck$ViewBounds;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setStrokeColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ViewBoundsCheck$ViewBounds$extraCallback;,
        Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:J

.field private static final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final onPostMessage:J


# instance fields
.field private ICustomTabsCallback$Stub:J

.field private final ICustomTabsCallback$Stub$Proxy:Z

.field private final ICustomTabsService:Lo/containsPosition;

.field private final asBinder:Lo/setOffscreenPageLimit;

.field private asInterface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:J

.field private final getInterfaceDescriptor:Lo/CoroutineWorker;

.field private final newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

.field private final onNavigationEvent:J

.field private onRelationshipValidationResult:J

.field private final onTransact:Ljava/util/concurrent/CountDownLatch;

.field private final postMessage:Ljava/lang/Object;

.field private final warmup:Lo/getStrokeAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const-class v0, Lo/ViewBoundsCheck$ViewBounds;

    sput-object v0, Lo/ViewBoundsCheck$ViewBounds;->onMessageChannelReady:Ljava/lang/Class;

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/ViewBoundsCheck$ViewBounds;->onPostMessage:J

    return-void
.end method

.method public constructor <init>(Lo/containsPosition;Lo/getStrokeAlpha;Lo/ViewBoundsCheck$ViewBounds$extraCallback;Lo/invalidateAnchorPositionInfo;Lo/recycleTile;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lo/ViewBoundsCheck$ViewBounds;->postMessage:Ljava/lang/Object;

    .line 150
    iget-wide p4, p3, Lo/ViewBoundsCheck$ViewBounds$extraCallback;->onPostMessage:J

    iput-wide p4, p0, Lo/ViewBoundsCheck$ViewBounds;->extraCallback:J

    .line 151
    iget-wide p4, p3, Lo/ViewBoundsCheck$ViewBounds$extraCallback;->extraCallback:J

    iput-wide p4, p0, Lo/ViewBoundsCheck$ViewBounds;->onNavigationEvent:J

    .line 152
    iget-wide p3, p3, Lo/ViewBoundsCheck$ViewBounds$extraCallback;->extraCallback:J

    iput-wide p3, p0, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub:J

    .line 153
    invoke-static {}, Lo/setOffscreenPageLimit;->onPostMessage()Lo/setOffscreenPageLimit;

    move-result-object p3

    iput-object p3, p0, Lo/ViewBoundsCheck$ViewBounds;->asBinder:Lo/setOffscreenPageLimit;

    .line 155
    iput-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    .line 157
    iput-object p2, p0, Lo/ViewBoundsCheck$ViewBounds;->warmup:Lo/getStrokeAlpha;

    const-wide/16 p1, -0x1

    .line 159
    iput-wide p1, p0, Lo/ViewBoundsCheck$ViewBounds;->onRelationshipValidationResult:J

    .line 167
    new-instance p1, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-direct {p1}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;-><init>()V

    iput-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    .line 169
    invoke-static {}, Lo/setUserInputEnabled;->onNavigationEvent()Lo/setUserInputEnabled;

    move-result-object p1

    iput-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->getInterfaceDescriptor:Lo/CoroutineWorker;

    .line 171
    iput-boolean p7, p0, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub$Proxy:Z

    .line 173
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    .line 179
    iget-boolean p1, p0, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz p1, :cond_0

    .line 180
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->onTransact:Ljava/util/concurrent/CountDownLatch;

    .line 182
    new-instance p1, Lo/ViewBoundsCheck$ViewBounds$4;

    invoke-direct {p1, p0}, Lo/ViewBoundsCheck$ViewBounds$4;-><init>(Lo/ViewBoundsCheck$ViewBounds;)V

    invoke-interface {p6, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 195
    :cond_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->onTransact:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private ICustomTabsCallback()Z
    .locals 7

    .line 659
    iget-object v0, p0, Lo/ViewBoundsCheck$ViewBounds;->getInterfaceDescriptor:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 660
    iget-object v2, p0, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-virtual {v2}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lo/ViewBoundsCheck$ViewBounds;->onRelationshipValidationResult:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    sget-wide v2, Lo/ViewBoundsCheck$ViewBounds;->onPostMessage:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 663
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/ViewBoundsCheck$ViewBounds;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic extraCallback(Lo/ViewBoundsCheck$ViewBounds;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/ViewBoundsCheck$ViewBounds;->onTransact:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic extraCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic onMessageChannelReady(Lo/ViewBoundsCheck$ViewBounds;)Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/ViewBoundsCheck$ViewBounds;->postMessage:Ljava/lang/Object;

    return-object p0
.end method

.method private onMessageChannelReady(Ljava/lang/String;Lo/invalidateSpanInfo;)Lo/containsPosition$onPostMessage;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2446
    iget-object v2, v1, Lo/ViewBoundsCheck$ViewBounds;->postMessage:Ljava/lang/Object;

    monitor-enter v2

    .line 2447
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback()Z

    move-result v0

    .line 2542
    iget-object v3, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    .line 2543
    invoke-interface {v3}, Lo/containsPosition;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lo/setOffscreenPageLimit$onMessageChannelReady;->ICustomTabsCallback:Lo/setOffscreenPageLimit$onMessageChannelReady;

    goto :goto_0

    :cond_0
    sget-object v3, Lo/setOffscreenPageLimit$onMessageChannelReady;->onNavigationEvent:Lo/setOffscreenPageLimit$onMessageChannelReady;

    .line 2546
    :goto_0
    iget-object v4, v1, Lo/ViewBoundsCheck$ViewBounds;->asBinder:Lo/setOffscreenPageLimit;

    iget-wide v5, v1, Lo/ViewBoundsCheck$ViewBounds;->onNavigationEvent:J

    iget-object v7, v1, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    .line 2547
    invoke-virtual {v7}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 3119
    invoke-virtual {v4}, Lo/setOffscreenPageLimit;->onNavigationEvent()V

    .line 3193
    invoke-virtual {v4}, Lo/setOffscreenPageLimit;->onNavigationEvent()V

    .line 3236
    iget-object v7, v4, Lo/setOffscreenPageLimit;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_2

    .line 3238
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v4, Lo/setOffscreenPageLimit;->ICustomTabsCallback:J

    sub-long/2addr v7, v9

    sget-wide v9, Lo/setOffscreenPageLimit;->extraCallback:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    .line 3239
    invoke-virtual {v4}, Lo/setOffscreenPageLimit;->ICustomTabsCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3242
    :cond_1
    :try_start_2
    iget-object v7, v4, Lo/setOffscreenPageLimit;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v3, v4, Lo/setOffscreenPageLimit;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 3197
    :cond_2
    :goto_1
    sget-object v7, Lo/setOffscreenPageLimit$onMessageChannelReady;->onNavigationEvent:Lo/setOffscreenPageLimit$onMessageChannelReady;

    if-ne v3, v7, :cond_3

    iget-object v3, v4, Lo/setOffscreenPageLimit;->onPostMessage:Landroid/os/StatFs;

    goto :goto_2

    :cond_3
    iget-object v3, v4, Lo/setOffscreenPageLimit;->onNavigationEvent:Landroid/os/StatFs;

    :goto_2
    const-wide/16 v7, 0x0

    if-eqz v3, :cond_5

    .line 3200
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v4, v9, :cond_4

    .line 3201
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v9

    .line 3202
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    goto :goto_3

    .line 3204
    :cond_4
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v9, v4

    .line 3205
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    :goto_3
    mul-long v9, v9, v3

    goto :goto_4

    :cond_5
    move-wide v9, v7

    :goto_4
    const/4 v3, 0x0

    cmp-long v4, v9, v7

    if-lez v4, :cond_6

    cmp-long v4, v9, v5

    if-ltz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_7

    .line 2549
    iget-wide v4, v1, Lo/ViewBoundsCheck$ViewBounds;->extraCallback:J

    iput-wide v4, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub:J

    goto :goto_6

    .line 2551
    :cond_7
    iget-wide v4, v1, Lo/ViewBoundsCheck$ViewBounds;->onNavigationEvent:J

    iput-wide v4, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub:J

    .line 2452
    :goto_6
    iget-object v4, v1, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-virtual {v4}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback()J

    move-result-wide v4

    .line 2455
    iget-wide v9, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_8

    if-nez v0, :cond_8

    .line 2456
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-virtual {v0}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onMessageChannelReady()V

    .line 2457
    invoke-direct/range {p0 .. p0}, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback()Z

    .line 2461
    :cond_8
    iget-wide v9, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_d

    .line 2462
    iget-wide v4, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub:J

    const-wide/16 v9, 0x9

    mul-long v4, v4, v9

    const-wide/16 v9, 0xa

    div-long/2addr v4, v9

    sget-object v0, Lo/invalidateAnchorPositionInfo$extraCallback;->onMessageChannelReady:Lo/invalidateAnchorPositionInfo$extraCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3473
    :try_start_3
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    invoke-interface {v0}, Lo/containsPosition;->onPostMessage()Ljava/util/Collection;

    move-result-object v0

    .line 3519
    iget-object v6, v1, Lo/ViewBoundsCheck$ViewBounds;->getInterfaceDescriptor:Lo/CoroutineWorker;

    invoke-interface {v6}, Lo/CoroutineWorker;->now()J

    move-result-wide v9

    sget-wide v11, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback:J

    add-long/2addr v9, v11

    .line 3520
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 3521
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 3522
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/containsPosition$onNavigationEvent;

    .line 3523
    invoke-interface {v12}, Lo/containsPosition$onNavigationEvent;->onNavigationEvent()J

    move-result-wide v13

    cmp-long v15, v13, v9

    if-lez v15, :cond_9

    .line 3524
    invoke-virtual {v6, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3526
    :cond_9
    invoke-virtual {v11, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3529
    :cond_a
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->warmup:Lo/getStrokeAlpha;

    invoke-interface {v0}, Lo/getStrokeAlpha;->onMessageChannelReady()Lo/getStrokeWidth;

    move-result-object v0

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3530
    invoke-virtual {v6, v11}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3483
    :try_start_4
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-virtual {v0}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback()J

    move-result-wide v9

    sub-long/2addr v9, v4

    .line 3487
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v4, v7

    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/containsPosition$onNavigationEvent;

    cmp-long v11, v4, v9

    if-gtz v11, :cond_c

    .line 3491
    iget-object v11, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    invoke-interface {v11, v6}, Lo/containsPosition;->onNavigationEvent(Lo/containsPosition$onNavigationEvent;)J

    move-result-wide v11

    .line 3492
    iget-object v13, v1, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {v6}, Lo/containsPosition$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    cmp-long v13, v11, v7

    if-lez v13, :cond_b

    add-int/lit8 v3, v3, 0x1

    add-long/2addr v4, v11

    .line 3497
    invoke-static {}, Lo/getStrokeColor;->onPostMessage()Lo/getStrokeColor;

    move-result-object v11

    .line 3498
    invoke-interface {v6}, Lo/containsPosition$onNavigationEvent;->extraCallback()Ljava/lang/String;

    .line 3504
    invoke-virtual {v11}, Lo/getStrokeColor;->onMessageChannelReady()V

    goto :goto_8

    .line 3507
    :cond_c
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    neg-long v4, v4

    neg-int v3, v3

    int-to-long v6, v3

    invoke-virtual {v0, v4, v5, v6, v7}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onPostMessage(JJ)V

    .line 3508
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    invoke-interface {v0}, Lo/containsPosition;->onMessageChannelReady()V

    goto :goto_9

    :catch_0
    move-exception v0

    .line 3475
    sget-object v3, Lo/recycleTile$extraCallback;->onRelationshipValidationResult:Lo/recycleTile$extraCallback;

    .line 3478
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 3480
    throw v0

    .line 2465
    :cond_d
    :goto_9
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 312
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface {v0, v2, v3}, Lo/containsPosition;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/containsPosition$onPostMessage;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    .line 2465
    monitor-exit v2

    throw v0
.end method

.method private onMessageChannelReady(Lo/containsPosition$onPostMessage;Ljava/lang/String;)Lo/findLastReferenceChildPosition;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lo/ViewBoundsCheck$ViewBounds;->postMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    invoke-interface {p1}, Lo/containsPosition$onPostMessage;->onMessageChannelReady()Lo/findLastReferenceChildPosition;

    move-result-object p1

    .line 324
    iget-object v1, p0, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object p2, p0, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-interface {p1}, Lo/findLastReferenceChildPosition;->onMessageChannelReady()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-virtual {p2, v1, v2, v3, v4}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onPostMessage(JJ)V

    .line 326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 327
    monitor-exit v0

    throw p1
.end method

.method static synthetic onNavigationEvent(Lo/ViewBoundsCheck$ViewBounds;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback()Z

    move-result p0

    return p0
.end method

.method private onPostMessage()Z
    .locals 17

    move-object/from16 v1, p0

    .line 676
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->getInterfaceDescriptor:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v2

    .line 677
    sget-wide v4, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback:J

    add-long/2addr v4, v2

    .line 679
    iget-boolean v0, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    goto :goto_0

    .line 681
    :cond_0
    iget-boolean v0, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_1

    .line 682
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 687
    :try_start_0
    iget-object v7, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    invoke-interface {v7}, Lo/containsPosition;->onPostMessage()Ljava/util/Collection;

    move-result-object v7

    .line 688
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/containsPosition$onNavigationEvent;

    add-int/lit8 v12, v12, 0x1

    .line 690
    invoke-interface {v13}, Lo/containsPosition$onNavigationEvent;->ICustomTabsCallback()J

    move-result-wide v14

    add-long/2addr v9, v14

    .line 693
    invoke-interface {v13}, Lo/containsPosition$onNavigationEvent;->onNavigationEvent()J

    move-result-wide v14

    cmp-long v16, v14, v4

    if-lez v16, :cond_3

    .line 696
    invoke-interface {v13}, Lo/containsPosition$onNavigationEvent;->ICustomTabsCallback()J

    .line 697
    invoke-interface {v13}, Lo/containsPosition$onNavigationEvent;->onNavigationEvent()J

    const/4 v11, 0x1

    goto :goto_1

    .line 698
    :cond_3
    iget-boolean v14, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v14, :cond_2

    .line 699
    invoke-interface {v13}, Lo/containsPosition$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_5

    .line 703
    sget-object v4, Lo/recycleTile$extraCallback;->onNavigationEvent:Lo/recycleTile$extraCallback;

    .line 715
    :cond_5
    iget-object v4, v1, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-virtual {v4}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->ICustomTabsCallback()J

    move-result-wide v4

    int-to-long v11, v12

    cmp-long v7, v4, v11

    if-nez v7, :cond_6

    iget-object v4, v1, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-virtual {v4}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback()J

    move-result-wide v4

    cmp-long v7, v4, v9

    if-eqz v7, :cond_8

    .line 716
    :cond_6
    iget-boolean v4, v1, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v4, :cond_7

    iget-object v4, v1, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    if-eq v4, v0, :cond_7

    .line 717
    iget-object v4, v1, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 718
    iget-object v4, v1, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 720
    :cond_7
    iget-object v0, v1, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-virtual {v0, v9, v10, v11, v12}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->ICustomTabsCallback(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_8
    iput-wide v2, v1, Lo/ViewBoundsCheck$ViewBounds;->onRelationshipValidationResult:J

    return v8

    :catch_0
    move-exception v0

    .line 723
    sget-object v2, Lo/recycleTile$extraCallback;->ICustomTabsCallback$Stub:Lo/recycleTile$extraCallback;

    .line 726
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v6
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/invalidateSpanInfo;)V
    .locals 4

    .line 369
    iget-object v0, p0, Lo/ViewBoundsCheck$ViewBounds;->postMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    invoke-static {p1}, Lo/getMediaId;->onMessageChannelReady(Lo/invalidateSpanInfo;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 373
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 374
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    iget-object v3, p0, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    invoke-interface {v3, v2}, Lo/containsPosition;->ICustomTabsCallback(Ljava/lang/String;)J

    .line 376
    iget-object v3, p0, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 379
    :try_start_1
    sget-object v1, Lo/recycleTile$extraCallback;->onTransact:Lo/recycleTile$extraCallback;

    .line 380
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 382
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(Lo/invalidateSpanInfo;Lo/ThreadUtil$MainThreadCallback;)Lo/findLastReferenceChildPosition;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-static {}, Lo/getStrokeColor;->onPostMessage()Lo/getStrokeColor;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lo/ViewBoundsCheck$ViewBounds;->postMessage:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    invoke-static {p1}, Lo/getMediaId;->ICustomTabsCallback(Lo/invalidateSpanInfo;)Ljava/lang/String;

    move-result-object v2

    .line 340
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 344
    :try_start_1
    invoke-direct {p0, v2, p1}, Lo/ViewBoundsCheck$ViewBounds;->onMessageChannelReady(Ljava/lang/String;Lo/invalidateSpanInfo;)Lo/containsPosition$onPostMessage;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    :try_start_2
    invoke-interface {p1, p2}, Lo/containsPosition$onPostMessage;->onPostMessage(Lo/ThreadUtil$MainThreadCallback;)V

    .line 348
    invoke-direct {p0, p1, v2}, Lo/ViewBoundsCheck$ViewBounds;->onMessageChannelReady(Lo/containsPosition$onPostMessage;Ljava/lang/String;)Lo/findLastReferenceChildPosition;

    move-result-object p2

    .line 349
    invoke-interface {p2}, Lo/findLastReferenceChildPosition;->onMessageChannelReady()J

    iget-object v1, p0, Lo/ViewBoundsCheck$ViewBounds;->newSession:Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;

    invoke-virtual {v1}, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :try_start_3
    invoke-interface {p1}, Lo/containsPosition$onPostMessage;->extraCallback()Z

    move-result p1

    if-nez p1, :cond_0

    .line 354
    sget-object p1, Lo/ViewBoundsCheck$ViewBounds;->onMessageChannelReady:Ljava/lang/Class;

    const-string v1, "Failed to delete temp file"

    invoke-static {p1, v1}, Lo/setTranslateX;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    :cond_0
    invoke-virtual {v0}, Lo/getStrokeColor;->onMessageChannelReady()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 353
    :try_start_4
    invoke-interface {p1}, Lo/containsPosition$onPostMessage;->extraCallback()Z

    move-result p1

    if-nez p1, :cond_1

    .line 354
    sget-object p1, Lo/ViewBoundsCheck$ViewBounds;->onMessageChannelReady:Ljava/lang/Class;

    const-string v1, "Failed to delete temp file"

    invoke-static {p1, v1}, Lo/setTranslateX;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 360
    :try_start_5
    sget-object p2, Lo/ViewBoundsCheck$ViewBounds;->onMessageChannelReady:Ljava/lang/Class;

    const-string v1, "Failed inserting a file into the cache"

    invoke-static {p2, v1, p1}, Lo/setTranslateX;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 363
    :goto_0
    invoke-virtual {v0}, Lo/getStrokeColor;->onMessageChannelReady()V

    throw p1

    :catchall_2
    move-exception p1

    .line 340
    monitor-exit v1

    throw p1
.end method

.method public final onMessageChannelReady(Lo/invalidateSpanInfo;)Z
    .locals 6

    const/4 v0, 0x0

    .line 288
    :try_start_0
    iget-object v1, p0, Lo/ViewBoundsCheck$ViewBounds;->postMessage:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :try_start_1
    invoke-static {p1}, Lo/getMediaId;->onMessageChannelReady(Lo/invalidateSpanInfo;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 290
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 291
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 292
    iget-object v5, p0, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    invoke-interface {v5, v4, p1}, Lo/containsPosition;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    iget-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 298
    :try_start_2
    monitor-exit v1

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    :catch_0
    invoke-static {}, Lo/getStrokeColor;->onPostMessage()Lo/getStrokeColor;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lo/getStrokeColor;->onMessageChannelReady()V

    return v0
.end method

.method public final onNavigationEvent(Lo/invalidateSpanInfo;)Lo/findLastReferenceChildPosition;
    .locals 8

    .line 242
    invoke-static {}, Lo/getStrokeColor;->onPostMessage()Lo/getStrokeColor;

    move-result-object v0

    const/4 v1, 0x0

    .line 244
    :try_start_0
    iget-object v2, p0, Lo/ViewBoundsCheck$ViewBounds;->postMessage:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    :try_start_1
    invoke-static {p1}, Lo/getMediaId;->onMessageChannelReady(Lo/invalidateSpanInfo;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v5

    .line 247
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 248
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 250
    iget-object v6, p0, Lo/ViewBoundsCheck$ViewBounds;->ICustomTabsService:Lo/containsPosition;

    invoke-interface {v6, v5, p1}, Lo/containsPosition;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/findLastReferenceChildPosition;

    move-result-object v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    .line 257
    iget-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_1
    iget-object p1, p0, Lo/ViewBoundsCheck$ViewBounds;->asInterface:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-virtual {v0}, Lo/getStrokeColor;->onMessageChannelReady()V

    return-object v6

    :catchall_0
    move-exception p1

    .line 263
    :try_start_2
    monitor-exit v2

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 265
    :catch_0
    :try_start_3
    sget-object p1, Lo/recycleTile$extraCallback;->ICustomTabsCallback$Stub:Lo/recycleTile$extraCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    invoke-virtual {v0}, Lo/getStrokeColor;->onMessageChannelReady()V

    return-object v1

    :goto_2
    invoke-virtual {v0}, Lo/getStrokeColor;->onMessageChannelReady()V

    throw p1
.end method
