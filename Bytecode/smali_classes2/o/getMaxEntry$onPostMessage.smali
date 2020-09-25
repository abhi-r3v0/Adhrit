.class public abstract Lo/getMaxEntry$onPostMessage;
.super Lo/getLeft$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/loadNestedQuery;

.field private ICustomTabsService:Z

.field private final asInterface:Lo/restoreAuth;

.field private getInterfaceDescriptor:Z

.field private newSession:Ljava/lang/Runnable;

.field public volatile onMessageChannelReady:Z

.field onNavigationEvent:Z

.field onPostMessage:Lo/rotateRight;

.field private onRelationshipValidationResult:Z

.field private onTransact:Z


# direct methods
.method protected constructor <init>(ILo/restoreAuth;Lo/putInternal;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lo/getLeft$onPostMessage;-><init>(ILo/restoreAuth;Lo/putInternal;)V

    .line 239
    invoke-static {}, Lo/loadNestedQuery;->onPostMessage()Lo/loadNestedQuery;

    move-result-object p1

    iput-object p1, p0, Lo/getMaxEntry$onPostMessage;->ICustomTabsCallback:Lo/loadNestedQuery;

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lo/getMaxEntry$onPostMessage;->onTransact:Z

    if-eqz p2, :cond_0

    .line 260
    check-cast p2, Lo/restoreAuth;

    iput-object p2, p0, Lo/getMaxEntry$onPostMessage;->asInterface:Lo/restoreAuth;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "statsTraceCtx"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/getMaxEntry$onPostMessage;Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lo/getMaxEntry$onPostMessage;->onPostMessage(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void
.end method

.method private onPostMessage(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 5

    .line 468
    iget-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->onRelationshipValidationResult:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->onRelationshipValidationResult:Z

    .line 470
    iget-object v1, p0, Lo/getMaxEntry$onPostMessage;->asInterface:Lo/restoreAuth;

    .line 14163
    iget-object v1, v1, Lo/restoreAuth;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14297
    iget-object v1, p0, Lo/getMaxEntry$onPostMessage;->onPostMessage:Lo/rotateRight;

    .line 471
    invoke-interface {v1, p1, p2, p3}, Lo/rotateRight;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    .line 472
    invoke-virtual {p0}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady()Lo/putInternal;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 473
    invoke-virtual {p0}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady()Lo/putInternal;

    move-result-object p2

    .line 14516
    sget-object p3, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object p1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 15099
    iget-wide v3, p2, Lo/putInternal;->onPostMessage:J

    add-long/2addr v3, v1

    iput-wide v3, p2, Lo/putInternal;->onPostMessage:J

    return-void

    .line 15101
    :cond_1
    iget-wide v3, p2, Lo/putInternal;->extraCallback:J

    add-long/2addr v3, v1

    iput-wide v3, p2, Lo/putInternal;->extraCallback:J

    :cond_2
    return-void
.end method


# virtual methods
.method protected final bridge synthetic ICustomTabsCallback()Lo/sendAuthHelper;
    .locals 1

    .line 15297
    iget-object v0, p0, Lo/getMaxEntry$onPostMessage;->onPostMessage:Lo/rotateRight;

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V
    .locals 3

    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    .line 439
    iget-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->ICustomTabsService:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->ICustomTabsService:Z

    .line 12516
    sget-object v1, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v2, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 443
    :goto_0
    iput-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->getInterfaceDescriptor:Z

    .line 444
    invoke-virtual {p0}, Lo/getMaxEntry$onPostMessage;->extraCallback()V

    .line 446
    iget-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->onTransact:Z

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    .line 447
    iput-object p3, p0, Lo/getMaxEntry$onPostMessage;->newSession:Ljava/lang/Runnable;

    .line 448
    invoke-direct {p0, p1, p2, p4}, Lo/getMaxEntry$onPostMessage;->onPostMessage(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void

    .line 450
    :cond_2
    new-instance v0, Lo/getMaxEntry$onPostMessage$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lo/getMaxEntry$onPostMessage$1;-><init>(Lo/getMaxEntry$onPostMessage;Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    iput-object v0, p0, Lo/getMaxEntry$onPostMessage;->newSession:Ljava/lang/Runnable;

    if-eqz p3, :cond_3

    .line 13181
    iget-object p1, p0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    invoke-interface {p1}, Lo/getHashes;->close()V

    return-void

    .line 13183
    :cond_3
    iget-object p1, p0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    invoke-interface {p1}, Lo/getHashes;->ICustomTabsCallback()V

    return-void

    .line 11910
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "trailers"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10910
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "status"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/emptyMap;ZLo/getPredecessorKey;)V
    .locals 1

    .line 413
    sget-object v0, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    invoke-virtual {p0, p1, v0, p2, p3}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V

    return-void
.end method

.method protected final onMessageChannelReady(Lo/getPredecessorKey;Lo/emptyMap;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 390
    iget-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->ICustomTabsService:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    invoke-static {}, Lo/getMaxEntry;->ICustomTabsCallback$Stub()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const-string p1, "Received trailers on closed stream:\n {1}\n {2}"

    invoke-virtual {v0, v2, p1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10413
    :cond_0
    sget-object v0, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    invoke-virtual {p0, p2, v0, v1, p1}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V

    return-void

    .line 9910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "trailers"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "status"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMessageChannelReady(Z)V
    .locals 3

    .line 281
    iget-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->ICustomTabsService:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->onTransact:Z

    .line 283
    iget-boolean v1, p0, Lo/getMaxEntry$onPostMessage;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 284
    sget-object p1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v1, "Encountered end-of-stream mid-frame"

    .line 285
    invoke-virtual {p1, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    new-instance v1, Lo/getPredecessorKey;

    invoke-direct {v1}, Lo/getPredecessorKey;-><init>()V

    .line 3413
    sget-object v2, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    invoke-virtual {p0, p1, v2, v0, v1}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V

    .line 289
    :cond_0
    iget-object p1, p0, Lo/getMaxEntry$onPostMessage;->newSession:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 290
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Lo/getMaxEntry$onPostMessage;->newSession:Ljava/lang/Runnable;

    :cond_1
    return-void

    .line 2511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "status should have been reported on deframer closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onPostMessage(Lo/getPredecessorKey;)V
    .locals 5

    .line 314
    iget-boolean v0, p0, Lo/getMaxEntry$onPostMessage;->ICustomTabsService:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 318
    sget-object v0, Lo/getAuthTokenProvider;->onMessageChannelReady:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    iget-boolean v2, p0, Lo/getMaxEntry$onPostMessage;->onNavigationEvent:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "gzip"

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    new-instance v0, Lo/getExecutorService;

    invoke-direct {v0}, Lo/getExecutorService;-><init>()V

    .line 4150
    iget-object v2, p0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    invoke-interface {v2, v0}, Lo/getHashes;->ICustomTabsCallback(Lo/getExecutorService;)V

    .line 4151
    new-instance v0, Lo/getMax;

    iget-object v2, p0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    check-cast v2, Lo/interrupt;

    invoke-direct {v0, p0, p0, v2}, Lo/getMax;-><init>(Lo/interrupt$onNavigationEvent;Lo/getMax$onNavigationEvent;Lo/interrupt;)V

    iput-object v0, p0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "identity"

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    sget-object p1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Can\'t find full stream decompressor for %s"

    .line 327
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p1, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 4524
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 324
    invoke-virtual {p0, v0}, Lo/getMaxEntry$onPostMessage;->extraCallback(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 333
    :goto_0
    sget-object v2, Lo/getAuthTokenProvider;->onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p1, v2}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 335
    iget-object v4, p0, Lo/getMaxEntry$onPostMessage;->ICustomTabsCallback:Lo/loadNestedQuery;

    .line 5137
    iget-object v4, v4, Lo/loadNestedQuery;->onPostMessage:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/loadNestedQuery$onMessageChannelReady;

    if-eqz v4, :cond_2

    .line 5138
    iget-object v4, v4, Lo/loadNestedQuery$onMessageChannelReady;->ICustomTabsCallback:Lo/partKey;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    .line 337
    sget-object p1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v1, "Can\'t find decompressor for %s"

    .line 339
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 5524
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 337
    invoke-virtual {p0, v0}, Lo/getMaxEntry$onPostMessage;->extraCallback(Ljava/lang/Throwable;)V

    return-void

    .line 342
    :cond_3
    sget-object v1, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    if-eq v4, v1, :cond_5

    if-eqz v0, :cond_4

    .line 344
    sget-object p1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Full stream and gRPC message encoding cannot both be set"

    .line 347
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p1, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 6524
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 344
    invoke-virtual {p0, v0}, Lo/getMaxEntry$onPostMessage;->extraCallback(Ljava/lang/Throwable;)V

    return-void

    .line 7216
    :cond_4
    iget-object v0, p0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    invoke-interface {v0, v4}, Lo/getHashes;->onPostMessage(Lo/partKey;)V

    .line 7297
    :cond_5
    iget-object v0, p0, Lo/getMaxEntry$onPostMessage;->onPostMessage:Lo/rotateRight;

    .line 355
    invoke-interface {v0, p1}, Lo/rotateRight;->ICustomTabsCallback(Lo/getPredecessorKey;)V

    return-void

    .line 3511
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Received headers on closed stream"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onPostMessage(Lo/onServerInfoUpdate;)V
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 367
    :try_start_0
    iget-boolean v1, p0, Lo/getMaxEntry$onPostMessage;->ICustomTabsService:Z

    if-eqz v1, :cond_0

    .line 368
    invoke-static {}, Lo/getMaxEntry;->ICustomTabsCallback$Stub()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Received data on closed stream"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    invoke-interface {p1}, Lo/onServerInfoUpdate;->close()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 8193
    :try_start_1
    iget-object v1, p0, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    invoke-interface {v1, p1}, Lo/getHashes;->onMessageChannelReady(Lo/onServerInfoUpdate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 8195
    :try_start_2
    invoke-virtual {p0, v1}, Lo/getLeft$onPostMessage;->extraCallback(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 376
    invoke-interface {p1}, Lo/onServerInfoUpdate;->close()V

    :cond_1
    throw v1

    .line 7910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "frame"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
