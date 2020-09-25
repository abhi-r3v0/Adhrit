.class public final Lo/normalizeValue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/normalizeValue$extraCallback;,
        Lo/normalizeValue$ICustomTabsCallback;,
        Lo/normalizeValue$onPostMessage;,
        Lo/normalizeValue$onNavigationEvent;
    }
.end annotation


# static fields
.field private static synthetic IPostMessageService$Stub:Z

.field private static final newSession:Ljava/util/concurrent/ExecutorService;


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:Z

.field final ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final ICustomTabsService:Lo/getInitialEvents;

.field asBinder:Z

.field final asInterface:Lo/updateEventSnap;

.field final extraCallback:Z

.field private extraCommand:Lo/normalizeValue$ICustomTabsCallback;

.field public final getInterfaceDescriptor:Lo/updateServerSnap;

.field private final mayLaunchUrl:Ljava/util/concurrent/ExecutorService;

.field final onMessageChannelReady:Lo/normalizeValue$extraCallback;

.field final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/getServerCache;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/lang/String;

.field onRelationshipValidationResult:J

.field onTransact:I

.field private postMessage:Ljava/net/Socket;

.field private requestPostMessageChannel:J

.field private final updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

.field warmup:Lo/getInitialEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 61
    const-class v0, Lo/normalizeValue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lo/normalizeValue;->IPostMessageService$Stub:Z

    .line 81
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v2, "OkHttp Http2Connection"

    .line 83
    invoke-static {v2, v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lo/normalizeValue;->newSession:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lo/normalizeValue$onPostMessage;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 116
    iput-wide v2, v0, Lo/normalizeValue;->requestPostMessageChannel:J

    .line 125
    new-instance v2, Lo/getInitialEvents;

    invoke-direct {v2}, Lo/getInitialEvents;-><init>()V

    iput-object v2, v0, Lo/normalizeValue;->warmup:Lo/getInitialEvents;

    .line 129
    new-instance v2, Lo/getInitialEvents;

    invoke-direct {v2}, Lo/getInitialEvents;-><init>()V

    iput-object v2, v0, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    .line 829
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lo/normalizeValue;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    .line 138
    iget-object v2, v1, Lo/normalizeValue$onPostMessage;->onTransact:Lo/updateEventSnap;

    iput-object v2, v0, Lo/normalizeValue;->asInterface:Lo/updateEventSnap;

    .line 139
    iget-boolean v2, v1, Lo/normalizeValue$onPostMessage;->onRelationshipValidationResult:Z

    iput-boolean v2, v0, Lo/normalizeValue;->extraCallback:Z

    .line 140
    iget-object v2, v1, Lo/normalizeValue$onPostMessage;->onNavigationEvent:Lo/normalizeValue$extraCallback;

    iput-object v2, v0, Lo/normalizeValue;->onMessageChannelReady:Lo/normalizeValue$extraCallback;

    .line 142
    iget-boolean v2, v1, Lo/normalizeValue$onPostMessage;->onRelationshipValidationResult:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, v0, Lo/normalizeValue;->onTransact:I

    .line 143
    iget-boolean v2, v1, Lo/normalizeValue$onPostMessage;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_1

    .line 144
    iget v2, v0, Lo/normalizeValue;->onTransact:I

    add-int/2addr v2, v3

    iput v2, v0, Lo/normalizeValue;->onTransact:I

    .line 151
    :cond_1
    iget-boolean v2, v1, Lo/normalizeValue$onPostMessage;->onRelationshipValidationResult:Z

    const/4 v3, 0x7

    if-eqz v2, :cond_2

    .line 152
    iget-object v2, v0, Lo/normalizeValue;->warmup:Lo/getInitialEvents;

    const/high16 v5, 0x1000000

    invoke-virtual {v2, v3, v5}, Lo/getInitialEvents;->onMessageChannelReady(II)Lo/getInitialEvents;

    .line 155
    :cond_2
    iget-object v2, v1, Lo/normalizeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iput-object v2, v0, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    .line 157
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "OkHttp %s Writer"

    .line 158
    invoke-static {v6, v5}, Lo/generateEventsForType;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lo/normalizeValue;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    .line 159
    iget v2, v1, Lo/normalizeValue$onPostMessage;->asInterface:I

    if-eqz v2, :cond_3

    .line 160
    iget-object v8, v0, Lo/normalizeValue;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lo/normalizeValue$onNavigationEvent;

    invoke-direct {v9, v0, v7, v7, v7}, Lo/normalizeValue$onNavigationEvent;-><init>(Lo/normalizeValue;ZII)V

    iget v2, v1, Lo/normalizeValue$onPostMessage;->asInterface:I

    int-to-long v10, v2

    iget v2, v1, Lo/normalizeValue$onPostMessage;->asInterface:I

    int-to-long v12, v2

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 165
    :cond_3
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-wide/16 v18, 0x3c

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v21, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string v6, "OkHttp %s Push Observer"

    .line 167
    invoke-static {v6, v5}, Lo/generateEventsForType;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v22

    move-object v15, v2

    invoke-direct/range {v15 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lo/normalizeValue;->mayLaunchUrl:Ljava/util/concurrent/ExecutorService;

    .line 168
    iget-object v2, v0, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    const v4, 0xffff

    invoke-virtual {v2, v3, v4}, Lo/getInitialEvents;->onMessageChannelReady(II)Lo/getInitialEvents;

    .line 169
    iget-object v2, v0, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    const/4 v5, 0x5

    const/16 v6, 0x4000

    invoke-virtual {v2, v5, v6}, Lo/getInitialEvents;->onMessageChannelReady(II)Lo/getInitialEvents;

    .line 170
    iget-object v2, v0, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    .line 1114
    iget v5, v2, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    iget-object v2, v2, Lo/getInitialEvents;->onPostMessage:[I

    aget v4, v2, v3

    :cond_4
    int-to-long v2, v4

    .line 170
    iput-wide v2, v0, Lo/normalizeValue;->onRelationshipValidationResult:J

    .line 171
    iget-object v2, v1, Lo/normalizeValue$onPostMessage;->extraCallback:Ljava/net/Socket;

    iput-object v2, v0, Lo/normalizeValue;->postMessage:Ljava/net/Socket;

    .line 172
    new-instance v2, Lo/updateServerSnap;

    iget-object v3, v1, Lo/normalizeValue$onPostMessage;->ICustomTabsCallback:Lo/filtersNodes;

    iget-boolean v4, v0, Lo/normalizeValue;->extraCallback:Z

    invoke-direct {v2, v3, v4}, Lo/updateServerSnap;-><init>(Lo/filtersNodes;Z)V

    iput-object v2, v0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    .line 174
    new-instance v2, Lo/normalizeValue$ICustomTabsCallback;

    new-instance v3, Lo/fromPathAndQueryObject;

    iget-object v1, v1, Lo/normalizeValue$onPostMessage;->onPostMessage:Lo/fullLimitUpdateChild;

    iget-boolean v4, v0, Lo/normalizeValue;->extraCallback:Z

    invoke-direct {v3, v1, v4}, Lo/fromPathAndQueryObject;-><init>(Lo/fullLimitUpdateChild;Z)V

    invoke-direct {v2, v0, v3}, Lo/normalizeValue$ICustomTabsCallback;-><init>(Lo/normalizeValue;Lo/fromPathAndQueryObject;)V

    iput-object v2, v0, Lo/normalizeValue;->extraCommand:Lo/normalizeValue$ICustomTabsCallback;

    return-void
.end method

.method static synthetic extraCallback()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 61
    sget-object v0, Lo/normalizeValue;->newSession:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static extraCallback(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic extraCallback(Lo/normalizeValue;)Z
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lo/normalizeValue;->asBinder:Z

    return v0
.end method

.method static synthetic onNavigationEvent(Lo/normalizeValue;)V
    .locals 1

    .line 3494
    :try_start_0
    sget-object v0, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    invoke-virtual {p0, v0, v0}, Lo/normalizeValue;->onNavigationEvent(Lo/getNodeFilter;Lo/getNodeFilter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic onPostMessage(Lo/normalizeValue;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/normalizeValue;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private onPostMessage(Lo/getNodeFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    monitor-enter v0

    .line 423
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 424
    :try_start_1
    iget-boolean v1, p0, Lo/normalizeValue;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_0

    .line 425
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 427
    :try_start_3
    iput-boolean v1, p0, Lo/normalizeValue;->ICustomTabsCallback$Stub:Z

    .line 428
    iget v1, p0, Lo/normalizeValue;->ICustomTabsCallback:I

    .line 429
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    :try_start_4
    iget-object v2, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    sget-object v3, Lo/generateEventsForType;->ICustomTabsCallback:[B

    invoke-virtual {v2, v1, p1, v3}, Lo/updateServerSnap;->onPostMessage(ILo/getNodeFilter;[B)V

    .line 433
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 429
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 433
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method final declared-synchronized ICustomTabsCallback(I)Lo/getServerCache;
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getServerCache;

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final ICustomTabsCallback(Ljava/util/List;Z)Lo/getServerCache;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;Z)",
            "Lo/getServerCache;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p2, 0x1

    .line 241
    iget-object v7, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    monitor-enter v7

    .line 242
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    iget v0, p0, Lo/normalizeValue;->onTransact:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    .line 244
    sget-object v0, Lo/getNodeFilter;->onNavigationEvent:Lo/getNodeFilter;

    invoke-direct {p0, v0}, Lo/normalizeValue;->onPostMessage(Lo/getNodeFilter;)V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lo/normalizeValue;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_5

    .line 249
    iget v8, p0, Lo/normalizeValue;->onTransact:I

    .line 250
    iget v0, p0, Lo/normalizeValue;->onTransact:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/normalizeValue;->onTransact:I

    .line 251
    new-instance v9, Lo/getServerCache;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lo/getServerCache;-><init>(ILo/normalizeValue;ZZLo/shouldIncludeField;)V

    if-eqz p2, :cond_2

    .line 252
    iget-wide v0, p0, Lo/normalizeValue;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    iget-wide v0, v9, Lo/getServerCache;->onPostMessage:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 253
    :goto_1
    invoke-virtual {v9}, Lo/getServerCache;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :try_start_2
    iget-object v0, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v0, v6, v8, p1}, Lo/updateServerSnap;->onMessageChannelReady(ZILjava/util/List;)V

    .line 264
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_4

    .line 267
    iget-object p1, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {p1}, Lo/updateServerSnap;->extraCallback()V

    :cond_4
    return-object v9

    .line 247
    :cond_5
    :try_start_3
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 256
    :try_start_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 264
    monitor-exit v7

    throw p1
.end method

.method final ICustomTabsCallback(IJ)V
    .locals 9

    .line 346
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lo/normalizeValue$4;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lo/normalizeValue$4;-><init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 346
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final declared-synchronized ICustomTabsCallback()Z
    .locals 1

    monitor-enter p0

    .line 537
    :try_start_0
    iget-boolean v0, p0, Lo/normalizeValue;->ICustomTabsCallback$Stub:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    sget-object v0, Lo/getNodeFilter;->onMessageChannelReady:Lo/getNodeFilter;

    sget-object v1, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;

    invoke-virtual {p0, v0, v1}, Lo/normalizeValue;->onNavigationEvent(Lo/getNodeFilter;Lo/getNodeFilter;)V

    return-void
.end method

.method final extraCallback(ILo/getNodeFilter;)V
    .locals 8

    .line 326
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lo/normalizeValue$2;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/normalizeValue$2;-><init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;ILo/getNodeFilter;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method final declared-synchronized extraCallback(Lo/childMovedChange;)V
    .locals 1

    monitor-enter p0

    .line 919
    :try_start_0
    invoke-virtual {p0}, Lo/normalizeValue;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lo/normalizeValue;->mayLaunchUrl:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v0}, Lo/updateServerSnap;->onPostMessage()V

    .line 514
    iget-object v0, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    iget-object v1, p0, Lo/normalizeValue;->warmup:Lo/getInitialEvents;

    invoke-virtual {v0, v1}, Lo/updateServerSnap;->extraCallback(Lo/getInitialEvents;)V

    .line 515
    iget-object v0, p0, Lo/normalizeValue;->warmup:Lo/getInitialEvents;

    .line 3114
    iget v1, v0, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit16 v1, v1, 0x80

    const v2, 0xffff

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/getInitialEvents;->onPostMessage:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const v0, 0xffff

    :goto_0
    if-eq v0, v2, :cond_1

    .line 517
    iget-object v1, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    const/4 v3, 0x0

    sub-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Lo/updateServerSnap;->onMessageChannelReady(IJ)V

    .line 520
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lo/normalizeValue;->extraCommand:Lo/normalizeValue$ICustomTabsCallback;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final onMessageChannelReady(IZLo/updatePriority;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 293
    iget-object p4, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {p4, p2, p1, p3, v0}, Lo/updateServerSnap;->onMessageChannelReady(ZILo/updatePriority;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 299
    monitor-enter p0

    .line 301
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lo/normalizeValue;->onRelationshipValidationResult:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 304
    iget-object v3, p0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 305
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lo/normalizeValue;->onRelationshipValidationResult:J

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 315
    iget-object v3, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    .line 2157
    iget v3, v3, Lo/updateServerSnap;->onNavigationEvent:I

    .line 315
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 316
    iget-wide v4, p0, Lo/normalizeValue;->onRelationshipValidationResult:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lo/normalizeValue;->onRelationshipValidationResult:J

    .line 317
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 320
    iget-object v4, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lo/updateServerSnap;->onMessageChannelReady(ZILo/updatePriority;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 310
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 311
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final declared-synchronized onNavigationEvent()I
    .locals 2

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    .line 2099
    iget v1, v0, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/getInitialEvents;->onPostMessage:[I

    const/4 v1, 0x4

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const v0, 0x7fffffff

    .line 200
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onNavigationEvent(I)Lo/getServerCache;
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getServerCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final onNavigationEvent(Lo/getNodeFilter;Lo/getNodeFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    sget-boolean v0, Lo/normalizeValue;->IPostMessageService$Stub:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 448
    :try_start_0
    invoke-direct {p0, p1}, Lo/normalizeValue;->onPostMessage(Lo/getNodeFilter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 454
    :goto_1
    monitor-enter p0

    .line 455
    :try_start_1
    iget-object v1, p0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    iget-object v0, p0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lo/getServerCache;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getServerCache;

    .line 457
    iget-object v1, p0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 459
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 462
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 2240
    :try_start_2
    invoke-virtual {v3, p2}, Lo/getServerCache;->onPostMessage(Lo/getNodeFilter;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2243
    iget-object v4, v3, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget v3, v3, Lo/getServerCache;->onMessageChannelReady:I

    .line 2341
    iget-object v4, v4, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v4, v3, p2}, Lo/updateServerSnap;->onPostMessage(ILo/getNodeFilter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    if-eqz p1, :cond_3

    move-object p1, v3

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 473
    :cond_4
    :try_start_3
    iget-object p2, p0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {p2}, Lo/updateServerSnap;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    if-nez p1, :cond_5

    move-object p1, p2

    .line 480
    :cond_5
    :goto_4
    :try_start_4
    iget-object p2, p0, Lo/normalizeValue;->postMessage:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 486
    :goto_5
    iget-object p2, p0, Lo/normalizeValue;->updateVisuals:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 487
    iget-object p2, p0, Lo/normalizeValue;->mayLaunchUrl:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_6

    return-void

    .line 489
    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    .line 459
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onPostMessage(J)V
    .locals 3

    monitor-enter p0

    .line 204
    :try_start_0
    iget-wide v0, p0, Lo/normalizeValue;->requestPostMessageChannel:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/normalizeValue;->requestPostMessageChannel:J

    .line 205
    iget-object p1, p0, Lo/normalizeValue;->warmup:Lo/getInitialEvents;

    .line 2114
    iget p2, p1, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_0

    iget-object p1, p1, Lo/getInitialEvents;->onPostMessage:[I

    const/4 p2, 0x7

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0xffff

    .line 205
    :goto_0
    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    const/4 p1, 0x0

    .line 206
    iget-wide v0, p0, Lo/normalizeValue;->requestPostMessageChannel:J

    invoke-virtual {p0, p1, v0, v1}, Lo/normalizeValue;->ICustomTabsCallback(IJ)V

    const-wide/16 p1, 0x0

    .line 207
    iput-wide p1, p0, Lo/normalizeValue;->requestPostMessageChannel:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
