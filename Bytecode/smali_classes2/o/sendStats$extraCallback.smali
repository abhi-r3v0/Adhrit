.class final Lo/sendStats$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fixUp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/putInternal$onMessageChannelReady;

.field private final ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

.field private final ICustomTabsCallback$Stub$Proxy:I

.field private final ICustomTabsService:J

.field private final asBinder:Ljavax/net/ssl/SSLSocketFactory;

.field private final asInterface:Lo/access$1302;

.field private final extraCallback:Z

.field private extraCommand:Z

.field private final getInterfaceDescriptor:I

.field private final newSession:Lo/shortCircuitingReverseOrderTraversal;

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Ljava/util/concurrent/Executor;

.field private final onPostMessage:Ljavax/net/SocketFactory;

.field private final onRelationshipValidationResult:I

.field private final onTransact:Z

.field private final requestPostMessageChannel:Z

.field private final updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

.field private final warmup:Z


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/access$1302;IZJJIZILo/putInternal$onMessageChannelReady;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move/from16 v15, p15

    move-object/from16 v16, p16

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    .line 425
    invoke-direct/range {v0 .. v17}, Lo/sendStats$extraCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/access$1302;IZJJIZILo/putInternal$onMessageChannelReady;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/access$1302;IZJJIZILo/putInternal$onMessageChannelReady;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 462
    :goto_0
    iput-boolean v4, v0, Lo/sendStats$extraCallback;->onMessageChannelReady:Z

    if-eqz v4, :cond_1

    .line 464
    sget-object v4, Lo/getAuthTokenProvider;->getInterfaceDescriptor:Lo/onDataPush$onNavigationEvent;

    invoke-static {v4}, Lo/onDataPush;->ICustomTabsCallback(Lo/onDataPush$onNavigationEvent;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    iput-object v4, v0, Lo/sendStats$extraCallback;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, p3

    .line 465
    iput-object v4, v0, Lo/sendStats$extraCallback;->onPostMessage:Ljavax/net/SocketFactory;

    move-object v4, p4

    .line 466
    iput-object v4, v0, Lo/sendStats$extraCallback;->asBinder:Ljavax/net/ssl/SSLSocketFactory;

    move-object v4, p5

    .line 467
    iput-object v4, v0, Lo/sendStats$extraCallback;->ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

    move-object v4, p6

    .line 468
    iput-object v4, v0, Lo/sendStats$extraCallback;->asInterface:Lo/access$1302;

    move v4, p7

    .line 469
    iput v4, v0, Lo/sendStats$extraCallback;->onRelationshipValidationResult:I

    move/from16 v4, p8

    .line 470
    iput-boolean v4, v0, Lo/sendStats$extraCallback;->onTransact:Z

    .line 471
    new-instance v4, Lo/shortCircuitingReverseOrderTraversal;

    const-string v5, "keepalive time nanos"

    move-wide/from16 v6, p9

    invoke-direct {v4, v5, v6, v7}, Lo/shortCircuitingReverseOrderTraversal;-><init>(Ljava/lang/String;J)V

    iput-object v4, v0, Lo/sendStats$extraCallback;->newSession:Lo/shortCircuitingReverseOrderTraversal;

    move-wide/from16 v4, p11

    .line 472
    iput-wide v4, v0, Lo/sendStats$extraCallback;->ICustomTabsService:J

    move/from16 v4, p13

    .line 473
    iput v4, v0, Lo/sendStats$extraCallback;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v4, p14

    .line 474
    iput-boolean v4, v0, Lo/sendStats$extraCallback;->warmup:Z

    move/from16 v4, p15

    .line 475
    iput v4, v0, Lo/sendStats$extraCallback;->getInterfaceDescriptor:I

    .line 476
    iput-boolean v3, v0, Lo/sendStats$extraCallback;->requestPostMessageChannel:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 478
    :goto_2
    iput-boolean v2, v0, Lo/sendStats$extraCallback;->extraCallback:Z

    if-eqz p16, :cond_4

    .line 480
    move-object/from16 v3, p16

    check-cast v3, Lo/putInternal$onMessageChannelReady;

    iput-object v3, v0, Lo/sendStats$extraCallback;->ICustomTabsCallback:Lo/putInternal$onMessageChannelReady;

    if-eqz v2, :cond_3

    .line 483
    invoke-static {}, Lo/sendStats;->asBinder()Lo/onDataPush$onNavigationEvent;

    move-result-object v1

    invoke-static {v1}, Lo/onDataPush;->ICustomTabsCallback(Lo/onDataPush$onNavigationEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lo/sendStats$extraCallback;->onNavigationEvent:Ljava/util/concurrent/Executor;

    return-void

    .line 485
    :cond_3
    iput-object v1, v0, Lo/sendStats$extraCallback;->onNavigationEvent:Ljava/util/concurrent/Executor;

    return-void

    .line 1910
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "transportTracerFactory"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 535
    iget-boolean v0, p0, Lo/sendStats$extraCallback;->extraCommand:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lo/sendStats$extraCallback;->extraCommand:Z

    .line 540
    iget-boolean v0, p0, Lo/sendStats$extraCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    .line 541
    sget-object v0, Lo/getAuthTokenProvider;->getInterfaceDescriptor:Lo/onDataPush$onNavigationEvent;

    iget-object v1, p0, Lo/sendStats$extraCallback;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lo/onDataPush;->extraCallback(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_1
    iget-boolean v0, p0, Lo/sendStats$extraCallback;->extraCallback:Z

    if-eqz v0, :cond_2

    .line 545
    invoke-static {}, Lo/sendStats;->asBinder()Lo/onDataPush$onNavigationEvent;

    move-result-object v0

    iget-object v1, p0, Lo/sendStats$extraCallback;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lo/onDataPush;->extraCallback(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final onMessageChannelReady(Ljava/net/SocketAddress;Lo/fixUp$ICustomTabsCallback;Lo/saveTrackedQueryKeys;)Lo/resume;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 492
    iget-boolean v2, v0, Lo/sendStats$extraCallback;->extraCommand:Z

    if-nez v2, :cond_1

    .line 495
    iget-object v2, v0, Lo/sendStats$extraCallback;->newSession:Lo/shortCircuitingReverseOrderTraversal;

    .line 2044
    new-instance v3, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;

    iget-object v4, v2, Lo/shortCircuitingReverseOrderTraversal;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v2, v4, v5, v6}, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;-><init>(Lo/shortCircuitingReverseOrderTraversal;JB)V

    .line 496
    new-instance v2, Lo/sendStats$extraCallback$5;

    move-object/from16 v20, v2

    invoke-direct {v2, v3}, Lo/sendStats$extraCallback$5;-><init>(Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;)V

    .line 502
    move-object/from16 v8, p1

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 504
    new-instance v2, Lo/sendSensitive;

    move-object v7, v2

    .line 2088
    iget-object v9, v1, Lo/fixUp$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 2110
    iget-object v10, v1, Lo/fixUp$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 3098
    iget-object v11, v1, Lo/fixUp$ICustomTabsCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes;

    .line 508
    iget-object v12, v0, Lo/sendStats$extraCallback;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iget-object v13, v0, Lo/sendStats$extraCallback;->onPostMessage:Ljavax/net/SocketFactory;

    iget-object v14, v0, Lo/sendStats$extraCallback;->asBinder:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v15, v0, Lo/sendStats$extraCallback;->ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

    iget-object v4, v0, Lo/sendStats$extraCallback;->asInterface:Lo/access$1302;

    move-object/from16 v16, v4

    iget v4, v0, Lo/sendStats$extraCallback;->onRelationshipValidationResult:I

    move/from16 v17, v4

    iget v4, v0, Lo/sendStats$extraCallback;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v18, v4

    .line 3120
    iget-object v1, v1, Lo/fixUp$ICustomTabsCallback;->onMessageChannelReady:Lo/joinBytes;

    move-object/from16 v19, v1

    .line 516
    iget v1, v0, Lo/sendStats$extraCallback;->getInterfaceDescriptor:I

    move/from16 v21, v1

    iget-object v1, v0, Lo/sendStats$extraCallback;->ICustomTabsCallback:Lo/putInternal$onMessageChannelReady;

    .line 3168
    new-instance v4, Lo/putInternal;

    move-object/from16 v22, v4

    iget-object v1, v1, Lo/putInternal$onMessageChannelReady;->onNavigationEvent:Lo/sendUnauth;

    invoke-direct {v4, v1, v6}, Lo/putInternal;-><init>(Lo/sendUnauth;B)V

    .line 519
    iget-boolean v1, v0, Lo/sendStats$extraCallback;->requestPostMessageChannel:Z

    move/from16 v23, v1

    invoke-direct/range {v7 .. v23}, Lo/sendSensitive;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lo/serverCacheEstimatedSizeInBytes;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/access$1302;IILo/joinBytes;Ljava/lang/Runnable;ILo/putInternal;Z)V

    .line 521
    iget-boolean v1, v0, Lo/sendStats$extraCallback;->onTransact:Z

    if-eqz v1, :cond_0

    .line 4056
    iget-wide v3, v3, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onMessageChannelReady:J

    .line 523
    iget-wide v5, v0, Lo/sendStats$extraCallback;->ICustomTabsService:J

    iget-boolean v1, v0, Lo/sendStats$extraCallback;->warmup:Z

    const/4 v7, 0x1

    .line 4344
    iput-boolean v7, v2, Lo/sendSensitive;->onRelationshipValidationResult:Z

    .line 4345
    iput-wide v3, v2, Lo/sendSensitive;->onTransact:J

    .line 4346
    iput-wide v5, v2, Lo/sendSensitive;->newSession:J

    .line 4347
    iput-boolean v1, v2, Lo/sendSensitive;->ICustomTabsCallback$Stub$Proxy:Z

    :cond_0
    return-object v2

    .line 493
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The transport factory is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 530
    iget-object v0, p0, Lo/sendStats$extraCallback;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
