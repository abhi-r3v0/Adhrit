.class final Lo/rotateLeft;
.super Lo/resetPreviouslyActiveTrackedQueries;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/rotateLeft$onPostMessage;,
        Lo/rotateLeft$onMessageChannelReady;,
        Lo/rotateLeft$onRelationshipValidationResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lo/resetPreviouslyActiveTrackedQueries<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub:J

.field private static final extraCallback:[B

.field private static final onNavigationEvent:Ljava/util/logging/Logger;


# instance fields
.field ICustomTabsCallback:Lo/loadNestedQuery;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

.field private final ICustomTabsService:Z

.field private volatile ICustomTabsService$Stub:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final ICustomTabsService$Stub$Proxy:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile IPostMessageService$Stub:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/currentStringRemainingChars;

.field private final asInterface:Ljava/util/concurrent/Executor;

.field private extraCommand:Z

.field private final getInterfaceDescriptor:Lo/verifyInsideTransaction;

.field private final mayLaunchUrl:Lo/rotateLeft$onMessageChannelReady;

.field private final newSession:Z

.field onMessageChannelReady:Lo/removeAllUserWrites;

.field onPostMessage:Z

.field private final onRelationshipValidationResult:Lo/moveRedLeft;

.field private final onTransact:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private postMessage:Z

.field private volatile requestPostMessageChannel:Z

.field private updateVisuals:Lo/rotateLeft$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/rotateLeft<",
            "TReqT;TRespT;>.onRelationshipValidationResult;"
        }
    .end annotation
.end field

.field private validateRelationship:Z

.field private warmup:Lo/colorFlip;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    const-class v0, Lo/rotateLeft;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/rotateLeft;->onNavigationEvent:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    .line 70
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lo/rotateLeft;->extraCallback:[B

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lo/rotateLeft;->ICustomTabsCallback$Stub:J

    return-void
.end method

.method constructor <init>(Lo/reverseIterator;Ljava/util/concurrent/Executor;Lo/deleteTrackedQuery;Lo/rotateLeft$onMessageChannelReady;Ljava/util/concurrent/ScheduledExecutorService;Lo/moveRedLeft;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lo/deleteTrackedQuery;",
            "Lo/rotateLeft$onMessageChannelReady;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lo/moveRedLeft;",
            "Z)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lo/resetPreviouslyActiveTrackedQueries;-><init>()V

    .line 95
    invoke-static {}, Lo/loadNestedQuery;->onPostMessage()Lo/loadNestedQuery;

    move-result-object v0

    iput-object v0, p0, Lo/rotateLeft;->ICustomTabsCallback:Lo/loadNestedQuery;

    .line 96
    invoke-static {}, Lo/removeAllUserWrites;->onMessageChannelReady()Lo/removeAllUserWrites;

    move-result-object v0

    iput-object v0, p0, Lo/rotateLeft;->onMessageChannelReady:Lo/removeAllUserWrites;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lo/rotateLeft;->validateRelationship:Z

    .line 107
    iput-object p1, p0, Lo/rotateLeft;->onTransact:Lo/reverseIterator;

    .line 109
    invoke-static {}, Lo/freeze;->asBinder()Lo/currentStringRemainingChars;

    move-result-object v1

    iput-object v1, p0, Lo/rotateLeft;->asBinder:Lo/currentStringRemainingChars;

    .line 1392
    sget-object v1, Lo/overrideProtocolAndHost;->ICustomTabsCallback:Lo/overrideProtocolAndHost;

    if-ne p2, v1, :cond_0

    .line 114
    new-instance p2, Lo/openNetworkConnection;

    invoke-direct {p2}, Lo/openNetworkConnection;-><init>()V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v1, Lo/onListenRevoked;

    invoke-direct {v1, p2}, Lo/onListenRevoked;-><init>(Ljava/util/concurrent/Executor;)V

    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lo/rotateLeft;->asInterface:Ljava/util/concurrent/Executor;

    .line 116
    iput-object p6, p0, Lo/rotateLeft;->onRelationshipValidationResult:Lo/moveRedLeft;

    .line 118
    invoke-static {}, Lo/verifyInsideTransaction;->extraCallback()Lo/verifyInsideTransaction;

    move-result-object p2

    iput-object p2, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    .line 2244
    iget-object p2, p1, Lo/reverseIterator;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    .line 119
    sget-object p6, Lo/reverseIterator$ICustomTabsCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    if-eq p2, p6, :cond_1

    .line 3244
    iget-object p1, p1, Lo/reverseIterator;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    .line 120
    sget-object p2, Lo/reverseIterator$ICustomTabsCallback;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lo/rotateLeft;->ICustomTabsService:Z

    .line 121
    iput-object p3, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 122
    iput-object p4, p0, Lo/rotateLeft;->mayLaunchUrl:Lo/rotateLeft$onMessageChannelReady;

    .line 123
    iput-object p5, p0, Lo/rotateLeft;->ICustomTabsService$Stub$Proxy:Ljava/util/concurrent/ScheduledExecutorService;

    .line 124
    iput-boolean p7, p0, Lo/rotateLeft;->newSession:Z

    .line 125
    invoke-static {}, Lo/freeze;->onPostMessage()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/rotateLeft;->asBinder:Lo/currentStringRemainingChars;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/rotateLeft;Lo/emptyMap;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;)V
    .locals 5

    .line 30386
    iget-object v0, p0, Lo/rotateLeft;->IPostMessageService$Stub:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 30401
    iget-object v0, p0, Lo/rotateLeft;->ICustomTabsService$Stub$Proxy:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/compareAndPut;

    new-instance v2, Lo/rotateLeft$ICustomTabsCallback;

    invoke-direct {v2, p0, p1}, Lo/rotateLeft$ICustomTabsCallback;-><init>(Lo/rotateLeft;Lo/emptyMap;)V

    invoke-direct {v1, v2}, Lo/compareAndPut;-><init>(Ljava/lang/Runnable;)V

    sget-wide v2, Lo/rotateLeft;->ICustomTabsCallback$Stub:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lo/rotateLeft;->IPostMessageService$Stub:Ljava/util/concurrent/ScheduledFuture;

    .line 30420
    iget-object v0, p0, Lo/rotateLeft;->asInterface:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/rotateLeft$onNavigationEvent;

    invoke-direct {v1, p0, p2, p1}, Lo/rotateLeft$onNavigationEvent;-><init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/emptyMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 1

    .line 31424
    iget-boolean v0, p0, Lo/rotateLeft;->validateRelationship:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 31425
    iput-boolean v0, p0, Lo/rotateLeft;->validateRelationship:Z

    .line 31426
    invoke-virtual {p1, p2, p3}, Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;->onClose(Lo/emptyMap;Lo/getPredecessorKey;)V

    :cond_0
    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/rotateLeft;)Z
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lo/rotateLeft;->requestPostMessageChannel:Z

    return v0
.end method

.method static synthetic asBinder(Lo/rotateLeft;)Lo/moveRedLeft;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/rotateLeft;->onRelationshipValidationResult:Lo/moveRedLeft;

    return-object p0
.end method

.method static synthetic asInterface(Lo/rotateLeft;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lo/rotateLeft;->extraCallback()V

    return-void
.end method

.method static synthetic extraCallback(Lo/rotateLeft;)Lo/reverseIterator;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/rotateLeft;->onTransact:Lo/reverseIterator;

    return-object p0
.end method

.method private extraCallback()V
    .locals 2

    .line 335
    iget-object v0, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    iget-object v1, p0, Lo/rotateLeft;->updateVisuals:Lo/rotateLeft$onRelationshipValidationResult;

    invoke-virtual {v0, v1}, Lo/verifyInsideTransaction;->extraCallback(Lo/verifyInsideTransaction$onNavigationEvent;)V

    .line 336
    iget-object v0, p0, Lo/rotateLeft;->IPostMessageService$Stub:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 341
    :cond_0
    iget-object v0, p0, Lo/rotateLeft;->ICustomTabsService$Stub:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 343
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/rotateLeft;)Lo/verifyInsideTransaction;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/rotateLeft;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/rotateLeft;->asInterface:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/rotateLeft;J)Lo/emptyMap;
    .locals 8

    .line 31366
    new-instance v0, Lo/assertValidTrackedQuery$onPostMessage;

    invoke-direct {v0}, Lo/assertValidTrackedQuery$onPostMessage;-><init>()V

    .line 31367
    iget-object p0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {p0, v0}, Lo/colorFlip;->ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V

    .line 31369
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    div-long/2addr v1, v5

    .line 31370
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    rem-long/2addr v5, v3

    .line 31372
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deadline exceeded after "

    .line 31373
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    cmp-long v7, p1, v3

    if-gez v7, :cond_0

    const/16 p1, 0x2d

    .line 31375
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31377
    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 31378
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, p2

    const-string p2, ".%09d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s. "

    .line 31379
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31380
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31382
    sget-object p1, Lo/emptyMap;->onNavigationEvent:Lo/emptyMap;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/rotateLeft;)Lo/colorFlip;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    return-object p0
.end method

.method static synthetic onTransact(Lo/rotateLeft;)Lo/saveNode;
    .locals 0

    .line 31433
    iget-object p0, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 32148
    iget-object p0, p0, Lo/deleteTrackedQuery;->ICustomTabsCallback:Lo/saveNode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 461
    invoke-static {}, Lo/freeze;->extraCallback()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 20471
    :try_start_0
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 20472
    sget-object v0, Lo/rotateLeft;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cancelling without a message or cause is suboptimal"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20474
    :cond_0
    iget-boolean v0, p0, Lo/rotateLeft;->extraCommand:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 20477
    iput-boolean v0, p0, Lo/rotateLeft;->extraCommand:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20481
    :try_start_1
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    if-eqz v0, :cond_3

    .line 20482
    sget-object v0, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    if-eqz p1, :cond_1

    .line 20484
    invoke-virtual {v0, p1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Call cancelled without message"

    .line 20486
    invoke-virtual {v0, p1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_2

    .line 20489
    invoke-virtual {p1, p2}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 20491
    :cond_2
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {p2, p1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20494
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lo/rotateLeft;->extraCallback()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lo/rotateLeft;->extraCallback()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 465
    :cond_4
    :goto_1
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw p1
.end method

.method public final getAttributes()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 566
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    if-eqz v0, :cond_0

    .line 567
    invoke-interface {v0}, Lo/colorFlip;->V_()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    return-object v0

    .line 569
    :cond_0
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-object v0
.end method

.method public final halfClose()V
    .locals 4

    .line 500
    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 20509
    :try_start_0
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Not started"

    if-eqz v0, :cond_5

    .line 20510
    iget-boolean v0, p0, Lo/rotateLeft;->extraCommand:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "call was cancelled"

    if-eqz v0, :cond_4

    .line 20511
    iget-boolean v0, p0, Lo/rotateLeft;->postMessage:Z

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string v0, "call already half-closed"

    if-eqz v1, :cond_3

    .line 20512
    iput-boolean v2, p0, Lo/rotateLeft;->postMessage:Z

    .line 20513
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {v0}, Lo/colorFlip;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    .line 23511
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22511
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21511
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 504
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw v0
.end method

.method public final isReady()Z
    .locals 1

    .line 561
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {v0}, Lo/colorFlip;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public final request(I)V
    .locals 4

    .line 449
    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 451
    :try_start_0
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Not started"

    if-eqz v0, :cond_3

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Number requested must be non-negative"

    if-eqz v1, :cond_2

    .line 453
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    .line 20142
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19511
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 455
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw p1
.end method

.method public final sendMessage(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 518
    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 23527
    :try_start_0
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Not started"

    if-eqz v0, :cond_8

    .line 23528
    iget-boolean v0, p0, Lo/rotateLeft;->extraCommand:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "call was cancelled"

    if-eqz v0, :cond_7

    .line 23529
    iget-boolean v0, p0, Lo/rotateLeft;->postMessage:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "call was half-closed"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 23531
    :try_start_1
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    instance-of v0, v0, Lo/cancelSentTransactions;

    if-eqz v0, :cond_4

    .line 23533
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    check-cast v0, Lo/cancelSentTransactions;

    .line 27481
    iget-object v1, v0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 27482
    iget-boolean v2, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    if-eqz v2, :cond_3

    .line 27483
    iget-object v1, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v1, v1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    iget-object v0, v0, Lo/cancelSentTransactions;->onMessageChannelReady:Lo/reverseIterator;

    .line 28287
    iget-object v0, v0, Lo/reverseIterator;->onMessageChannelReady:Lo/reverseIterator$onMessageChannelReady;

    invoke-interface {v0, p1}, Lo/reverseIterator$onMessageChannelReady;->onNavigationEvent(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 27483
    invoke-interface {v1, p1}, Lo/colorFlip;->extraCallback(Ljava/io/InputStream;)V

    goto :goto_3

    .line 27494
    :cond_3
    new-instance v1, Lo/cancelSentTransactions$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v1, v0, p1}, Lo/cancelSentTransactions$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/cancelSentTransactions;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    goto :goto_3

    .line 23536
    :cond_4
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    iget-object v1, p0, Lo/rotateLeft;->onTransact:Lo/reverseIterator;

    .line 29287
    iget-object v1, v1, Lo/reverseIterator;->onMessageChannelReady:Lo/reverseIterator$onMessageChannelReady;

    invoke-interface {v1, p1}, Lo/reverseIterator$onMessageChannelReady;->onNavigationEvent(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 23536
    invoke-interface {v0, p1}, Lo/colorFlip;->extraCallback(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23548
    :goto_3
    :try_start_2
    iget-boolean p1, p0, Lo/rotateLeft;->ICustomTabsService:Z

    if-nez p1, :cond_5

    .line 23549
    iget-object p1, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {p1}, Lo/colorFlip;->asBinder()V

    goto :goto_4

    :catch_0
    move-exception p1

    .line 23542
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    sget-object v1, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    const-string v2, "Client sendMessage() failed with Error"

    invoke-virtual {v1, v2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    .line 23543
    throw p1

    :catch_1
    move-exception p1

    .line 23539
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    sget-object v1, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    invoke-virtual {v1, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    const-string v1, "Failed to stream message"

    invoke-virtual {p1, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    :cond_5
    :goto_4
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    .line 26511
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25511
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24511
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 522
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw p1
.end method

.method public final setMessageCompression(Z)V
    .locals 1

    .line 555
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(Z)V

    return-void

    .line 29511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final start(Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/getPredecessorKey;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
            "TRespT;>;",
            "Lo/getPredecessorKey;",
            ")V"
        }
    .end annotation

    .line 208
    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 4217
    :try_start_0
    iget-object v0, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Already started"

    if-eqz v0, :cond_19

    .line 4218
    iget-boolean v0, p0, Lo/rotateLeft;->extraCommand:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "call was cancelled"

    if-eqz v0, :cond_18

    const-string v0, "observer"

    if-eqz p1, :cond_17

    const-string v0, "headers"

    if-eqz p2, :cond_16

    .line 4222
    iget-object v0, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    invoke-virtual {v0}, Lo/verifyInsideTransaction;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4225
    sget-object p2, Lo/isInterrupted;->onMessageChannelReady:Lo/isInterrupted;

    iput-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    .line 4226
    iget-object p2, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    invoke-static {p2}, Lo/saveNested;->onPostMessage(Lo/verifyInsideTransaction;)Lo/emptyMap;

    move-result-object p2

    .line 7420
    iget-object v0, p0, Lo/rotateLeft;->asInterface:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/rotateLeft$onNavigationEvent;

    invoke-direct {v1, p0, p1, p2}, Lo/rotateLeft$onNavigationEvent;-><init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/emptyMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 4229
    :cond_2
    iget-object v0, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 8178
    iget-object v0, v0, Lo/deleteTrackedQuery;->asInterface:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4232
    iget-object v3, p0, Lo/rotateLeft;->onMessageChannelReady:Lo/removeAllUserWrites;

    .line 9064
    iget-object v3, v3, Lo/removeAllUserWrites;->onNavigationEvent:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/pruneTreeRecursive;

    if-nez v3, :cond_4

    .line 4234
    sget-object p2, Lo/isInterrupted;->onMessageChannelReady:Lo/isInterrupted;

    iput-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    .line 4235
    sget-object p2, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v3, "Unable to find compressor by name %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 4236
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4235
    invoke-virtual {p2, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p2

    .line 9420
    iget-object v0, p0, Lo/rotateLeft;->asInterface:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/rotateLeft$onNavigationEvent;

    invoke-direct {v1, p0, p1, p2}, Lo/rotateLeft$onNavigationEvent;-><init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/emptyMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 4241
    :cond_3
    sget-object v3, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    .line 4243
    :cond_4
    iget-object v0, p0, Lo/rotateLeft;->ICustomTabsCallback:Lo/loadNestedQuery;

    iget-boolean v4, p0, Lo/rotateLeft;->onPostMessage:Z

    .line 10187
    sget-object v5, Lo/getAuthTokenProvider;->onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p2, v5}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 10188
    sget-object v5, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    if-eq v3, v5, :cond_5

    .line 10189
    sget-object v5, Lo/getAuthTokenProvider;->onPostMessage:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-interface {v3}, Lo/pruneTreeRecursive;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 10192
    :cond_5
    sget-object v5, Lo/getAuthTokenProvider;->onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p2, v5}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 11106
    iget-object v0, v0, Lo/loadNestedQuery;->ICustomTabsCallback:[B

    .line 10195
    array-length v5, v0

    if-eqz v5, :cond_6

    .line 10196
    sget-object v5, Lo/getAuthTokenProvider;->onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p2, v5, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 10199
    :cond_6
    sget-object v0, Lo/getAuthTokenProvider;->onMessageChannelReady:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p2, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 10200
    sget-object v0, Lo/getAuthTokenProvider;->ICustomTabsCallback:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p2, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    if-eqz v4, :cond_7

    .line 10202
    sget-object v0, Lo/getAuthTokenProvider;->ICustomTabsCallback:Lo/getPredecessorKey$ICustomTabsCallback;

    sget-object v4, Lo/rotateLeft;->extraCallback:[B

    invoke-virtual {p2, v0, v4}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 11433
    :cond_7
    iget-object v0, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 12148
    iget-object v0, v0, Lo/deleteTrackedQuery;->ICustomTabsCallback:Lo/saveNode;

    const/4 v4, 0x0

    if-nez v0, :cond_8

    move-object v0, v4

    :cond_8
    if-eqz v0, :cond_9

    .line 4246
    invoke-virtual {v0}, Lo/saveNode;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_e

    .line 4249
    iget-object v5, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 13148
    iget-object v5, v5, Lo/deleteTrackedQuery;->ICustomTabsCallback:Lo/saveNode;

    .line 13316
    sget-object v6, Lo/rotateLeft;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v0, :cond_c

    .line 13317
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    const-wide/16 v6, 0x0

    .line 13321
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8}, Lo/saveNode;->extraCallback(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 13322
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Call timeout set to \'%d\' ns, due to context deadline."

    new-array v10, v1, [Ljava/lang/Object;

    .line 13323
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v2

    .line 13322
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_b

    const-string v1, " Explicit call timeout was not set."

    .line 13325
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 13327
    :cond_b
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Lo/saveNode;->extraCallback(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    const-string v7, " Explicit call timeout was \'%d\' ns."

    new-array v1, v1, [Ljava/lang/Object;

    .line 13328
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13331
    :goto_3
    sget-object v1, Lo/rotateLeft;->onNavigationEvent:Ljava/util/logging/Logger;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 4250
    :cond_c
    :goto_4
    iget-boolean v1, p0, Lo/rotateLeft;->newSession:Z

    if-eqz v1, :cond_d

    .line 4251
    iget-object v1, p0, Lo/rotateLeft;->mayLaunchUrl:Lo/rotateLeft$onMessageChannelReady;

    iget-object v5, p0, Lo/rotateLeft;->onTransact:Lo/reverseIterator;

    iget-object v6, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    iget-object v7, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    invoke-interface {v1, v5, v6, p2, v7}, Lo/rotateLeft$onMessageChannelReady;->onMessageChannelReady(Lo/reverseIterator;Lo/deleteTrackedQuery;Lo/getPredecessorKey;Lo/verifyInsideTransaction;)Lo/colorFlip;

    move-result-object p2

    iput-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    goto :goto_5

    .line 4253
    :cond_d
    iget-object v1, p0, Lo/rotateLeft;->mayLaunchUrl:Lo/rotateLeft$onMessageChannelReady;

    new-instance v5, Lo/connected;

    iget-object v6, p0, Lo/rotateLeft;->onTransact:Lo/reverseIterator;

    iget-object v7, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    invoke-direct {v5, v6, p2, v7}, Lo/connected;-><init>(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)V

    invoke-interface {v1, v5}, Lo/rotateLeft$onMessageChannelReady;->onNavigationEvent(Lo/getMinKey$extraCallback;)Lo/moveRedRight;

    move-result-object v1

    .line 4255
    iget-object v5, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    invoke-virtual {v5}, Lo/verifyInsideTransaction;->onNavigationEvent()Lo/verifyInsideTransaction;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4257
    :try_start_1
    iget-object v6, p0, Lo/rotateLeft;->onTransact:Lo/reverseIterator;

    iget-object v7, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    invoke-interface {v1, v6, p2, v7}, Lo/moveRedRight;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object p2

    iput-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4259
    :try_start_2
    iget-object p2, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    invoke-virtual {p2, v5}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    invoke-virtual {p2, v5}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    throw p1

    .line 4263
    :cond_e
    new-instance p2, Lo/onControlMessage;

    sget-object v1, Lo/emptyMap;->onNavigationEvent:Lo/emptyMap;

    const-string v5, "ClientCall started after deadline exceeded: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4264
    invoke-virtual {v1, v5}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    invoke-direct {p2, v1}, Lo/onControlMessage;-><init>(Lo/emptyMap;)V

    iput-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    .line 4268
    :goto_5
    iget-object p2, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 14193
    iget-object p2, p2, Lo/deleteTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 4269
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    iget-object v1, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 15193
    iget-object v1, v1, Lo/deleteTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    .line 4269
    invoke-interface {p2, v1}, Lo/colorFlip;->extraCallback(Ljava/lang/String;)V

    .line 4271
    :cond_f
    iget-object p2, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 15409
    iget-object p2, p2, Lo/deleteTrackedQuery;->onTransact:Ljava/lang/Integer;

    if-eqz p2, :cond_10

    .line 4272
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    iget-object v1, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 16409
    iget-object v1, v1, Lo/deleteTrackedQuery;->onTransact:Ljava/lang/Integer;

    .line 4272
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p2, v1}, Lo/colorFlip;->onMessageChannelReady(I)V

    .line 4274
    :cond_10
    iget-object p2, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 16418
    iget-object p2, p2, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    if-eqz p2, :cond_11

    .line 4275
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    iget-object v1, p0, Lo/rotateLeft;->ICustomTabsCallback$Stub$Proxy:Lo/deleteTrackedQuery;

    .line 17418
    iget-object v1, v1, Lo/deleteTrackedQuery;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 4275
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p2, v1}, Lo/colorFlip;->extraCallback(I)V

    :cond_11
    if-eqz v0, :cond_12

    .line 4278
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {p2, v0}, Lo/colorFlip;->onPostMessage(Lo/saveNode;)V

    .line 4280
    :cond_12
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    invoke-interface {p2, v3}, Lo/colorFlip;->onPostMessage(Lo/pruneTreeRecursive;)V

    .line 4281
    iget-boolean p2, p0, Lo/rotateLeft;->onPostMessage:Z

    if-eqz p2, :cond_13

    .line 4282
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    iget-boolean v1, p0, Lo/rotateLeft;->onPostMessage:Z

    invoke-interface {p2, v1}, Lo/colorFlip;->onNavigationEvent(Z)V

    .line 4284
    :cond_13
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    iget-object v1, p0, Lo/rotateLeft;->ICustomTabsCallback:Lo/loadNestedQuery;

    invoke-interface {p2, v1}, Lo/colorFlip;->onPostMessage(Lo/loadNestedQuery;)V

    .line 4285
    iget-object p2, p0, Lo/rotateLeft;->onRelationshipValidationResult:Lo/moveRedLeft;

    .line 18039
    iget-object v1, p2, Lo/moveRedLeft;->ICustomTabsCallback:Lo/listen;

    invoke-interface {v1}, Lo/listen;->onPostMessage()V

    .line 18040
    iget-object v1, p2, Lo/moveRedLeft;->onPostMessage:Lo/sendUnauth;

    invoke-interface {v1}, Lo/sendUnauth;->onMessageChannelReady()J

    move-result-wide v5

    iput-wide v5, p2, Lo/moveRedLeft;->extraCallback:J

    .line 4286
    new-instance p2, Lo/rotateLeft$onRelationshipValidationResult;

    invoke-direct {p2, p0, p1, v2}, Lo/rotateLeft$onRelationshipValidationResult;-><init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;B)V

    iput-object p2, p0, Lo/rotateLeft;->updateVisuals:Lo/rotateLeft$onRelationshipValidationResult;

    .line 4287
    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    new-instance v1, Lo/rotateLeft$onPostMessage;

    invoke-direct {v1, p0, p1}, Lo/rotateLeft$onPostMessage;-><init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;)V

    invoke-interface {p2, v1}, Lo/colorFlip;->onPostMessage(Lo/rotateRight;)V

    .line 4293
    iget-object p2, p0, Lo/rotateLeft;->getInterfaceDescriptor:Lo/verifyInsideTransaction;

    iget-object v1, p0, Lo/rotateLeft;->updateVisuals:Lo/rotateLeft$onRelationshipValidationResult;

    .line 18392
    sget-object v2, Lo/overrideProtocolAndHost;->ICustomTabsCallback:Lo/overrideProtocolAndHost;

    .line 4293
    invoke-virtual {p2, v1, v2}, Lo/verifyInsideTransaction;->onNavigationEvent(Lo/verifyInsideTransaction$onNavigationEvent;Ljava/util/concurrent/Executor;)V

    if-eqz v0, :cond_14

    .line 4296
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    iget-object p2, p0, Lo/rotateLeft;->ICustomTabsService$Stub$Proxy:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p2, :cond_14

    iget-object p2, p0, Lo/rotateLeft;->warmup:Lo/colorFlip;

    instance-of p2, p2, Lo/onControlMessage;

    if-nez p2, :cond_14

    .line 19349
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2}, Lo/saveNode;->extraCallback(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 19359
    iget-object p2, p0, Lo/rotateLeft;->ICustomTabsService$Stub$Proxy:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lo/compareAndPut;

    new-instance v3, Lo/rotateLeft$extraCallback;

    invoke-direct {v3, p0, v0, v1, p1}, Lo/rotateLeft$extraCallback;-><init>(Lo/rotateLeft;JLo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;)V

    invoke-direct {v2, v3}, Lo/compareAndPut;-><init>(Ljava/lang/Runnable;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 4302
    iput-object p1, p0, Lo/rotateLeft;->ICustomTabsService$Stub:Ljava/util/concurrent/ScheduledFuture;

    .line 4304
    :cond_14
    iget-boolean p1, p0, Lo/rotateLeft;->requestPostMessageChannel:Z

    if-eqz p1, :cond_15

    .line 4309
    invoke-direct {p0}, Lo/rotateLeft;->extraCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    :cond_15
    :goto_6
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    .line 6910
    :cond_16
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5910
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5511
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4511
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 212
    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 30105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 574
    iget-object v1, p0, Lo/rotateLeft;->onTransact:Lo/reverseIterator;

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
