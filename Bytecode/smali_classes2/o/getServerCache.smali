.class public final Lo/getServerCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getServerCache$ICustomTabsCallback;,
        Lo/getServerCache$extraCallback;,
        Lo/getServerCache$onMessageChannelReady;
    }
.end annotation


# static fields
.field static final synthetic ICustomTabsService:Z


# instance fields
.field public final ICustomTabsCallback:Lo/normalizeValue;

.field final ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

.field final asBinder:Lo/getServerCache$onMessageChannelReady;

.field final asInterface:Lo/getServerCache$ICustomTabsCallback;

.field extraCallback:J

.field newSession:Lo/getNodeFilter;

.field public final onMessageChannelReady:I

.field final onNavigationEvent:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/shouldIncludeField;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:J

.field final onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

.field onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lo/getServerCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getServerCache;->ICustomTabsService:Z

    return-void
.end method

.method constructor <init>(ILo/normalizeValue;ZZLo/shouldIncludeField;)V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lo/getServerCache;->extraCallback:J

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/getServerCache;->onNavigationEvent:Ljava/util/Deque;

    .line 71
    new-instance v0, Lo/getServerCache$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getServerCache$ICustomTabsCallback;-><init>(Lo/getServerCache;)V

    iput-object v0, p0, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    .line 72
    new-instance v0, Lo/getServerCache$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getServerCache$ICustomTabsCallback;-><init>(Lo/getServerCache;)V

    iput-object v0, p0, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    if-eqz p2, :cond_b

    .line 85
    iput p1, p0, Lo/getServerCache;->onMessageChannelReady:I

    .line 86
    iput-object p2, p0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    .line 87
    iget-object p1, p2, Lo/normalizeValue;->ICustomTabsService:Lo/getInitialEvents;

    .line 1114
    iget v0, p1, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x7

    const v2, 0xffff

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/getInitialEvents;->onPostMessage:[I

    aget p1, p1, v1

    goto :goto_0

    :cond_0
    const p1, 0xffff

    :goto_0
    int-to-long v3, p1

    .line 88
    iput-wide v3, p0, Lo/getServerCache;->onPostMessage:J

    .line 89
    new-instance p1, Lo/getServerCache$onMessageChannelReady;

    iget-object p2, p2, Lo/normalizeValue;->warmup:Lo/getInitialEvents;

    .line 2114
    iget v0, p2, Lo/getInitialEvents;->ICustomTabsCallback:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    iget-object p2, p2, Lo/getInitialEvents;->onPostMessage:[I

    aget v2, p2, v1

    :cond_1
    int-to-long v0, v2

    .line 89
    invoke-direct {p1, p0, v0, v1}, Lo/getServerCache$onMessageChannelReady;-><init>(Lo/getServerCache;J)V

    iput-object p1, p0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    .line 90
    new-instance p1, Lo/getServerCache$extraCallback;

    invoke-direct {p1, p0}, Lo/getServerCache$extraCallback;-><init>(Lo/getServerCache;)V

    iput-object p1, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    .line 91
    iget-object p1, p0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    iput-boolean p4, p1, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady:Z

    .line 92
    iget-object p1, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iput-boolean p3, p1, Lo/getServerCache$extraCallback;->extraCallback:Z

    if-eqz p5, :cond_2

    .line 94
    iget-object p1, p0, Lo/getServerCache;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {p1, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 2133
    :cond_2
    iget p1, p0, Lo/getServerCache;->onMessageChannelReady:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 2134
    :goto_1
    iget-object p4, p0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget-boolean p4, p4, Lo/normalizeValue;->extraCallback:Z

    if-ne p4, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    if-nez p5, :cond_5

    goto :goto_3

    .line 98
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3133
    :cond_6
    :goto_3
    iget p1, p0, Lo/getServerCache;->onMessageChannelReady:I

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 3134
    :goto_4
    iget-object p4, p0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget-boolean p4, p4, Lo/normalizeValue;->extraCallback:Z

    if-ne p4, p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 p2, 0x0

    :goto_5
    if-nez p2, :cond_a

    if-eqz p5, :cond_9

    goto :goto_6

    .line 100
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_6
    return-void

    .line 83
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/getServerCache;)Ljava/util/Deque;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/getServerCache;->onNavigationEvent:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub()Lo/loadsAllData$onPostMessage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/exceptionStacktrace;
    .locals 4

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lo/getServerCache;->onTransact:Z

    if-nez v0, :cond_3

    .line 6133
    iget v0, p0, Lo/getServerCache;->onMessageChannelReady:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6134
    :goto_0
    iget-object v3, p0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget-boolean v3, v3, Lo/normalizeValue;->extraCallback:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    return-object v0

    :catchall_0
    move-exception v0

    .line 231
    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized extraCallback(Lo/getNodeFilter;)V
    .locals 1

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    if-nez v0, :cond_0

    .line 312
    iput-object p1, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback()Z
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    monitor-exit p0

    return v1

    .line 123
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    iget-boolean v0, v0, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    iget-boolean v0, v0, Lo/getServerCache$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iget-boolean v0, v0, Lo/getServerCache$extraCallback;->extraCallback:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iget-boolean v0, v0, Lo/getServerCache$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lo/getServerCache;->onTransact:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 126
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 128
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()Lo/shouldIncludeField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getIndexedFilter;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/4 v0, 0x0

    .line 149
    :try_start_1
    iget-object v1, p0, Lo/getServerCache;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 3654
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3656
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3657
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :cond_0
    :try_start_4
    iget-object v1, p0, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    .line 4120
    iget-boolean v2, v1, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 4121
    :cond_1
    iput-boolean v0, v1, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 4122
    invoke-static {v1}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    .line 155
    iget-object v0, p0, Lo/getServerCache;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lo/getServerCache;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/shouldIncludeField;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 158
    :cond_2
    :try_start_5
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lo/getNodeFilter;)V

    throw v0

    .line 4671
    :cond_3
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3679
    throw v0

    :catchall_0
    move-exception v1

    .line 153
    iget-object v2, p0, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    .line 5120
    iget-boolean v3, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v3, :cond_4

    goto :goto_2

    .line 5121
    :cond_4
    iput-boolean v0, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 5122
    invoke-static {v2}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_5

    .line 5671
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 4679
    throw v0

    .line 153
    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final onNavigationEvent()V
    .locals 2

    .line 298
    sget-boolean v0, Lo/getServerCache;->ICustomTabsService:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 300
    :cond_1
    :goto_0
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady:Z

    .line 302
    invoke-virtual {p0}, Lo/getServerCache;->extraCallback()Z

    move-result v0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget v1, p0, Lo/getServerCache;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Lo/normalizeValue;->ICustomTabsCallback(I)Lo/getServerCache;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 304
    monitor-exit p0

    throw v0
.end method

.method final onPostMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    sget-boolean v0, Lo/getServerCache;->ICustomTabsService:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 522
    :cond_1
    :goto_0
    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, p0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    iget-boolean v0, v0, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    iget-boolean v0, v0, Lo/getServerCache$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iget-boolean v0, v0, Lo/getServerCache$extraCallback;->extraCallback:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iget-boolean v0, v0, Lo/getServerCache$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 524
    :goto_1
    invoke-virtual {p0}, Lo/getServerCache;->extraCallback()Z

    move-result v1

    .line 525
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 531
    sget-object v0, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;

    .line 6240
    invoke-virtual {p0, v0}, Lo/getServerCache;->onPostMessage(Lo/getNodeFilter;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6243
    iget-object v1, p0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget v2, p0, Lo/getServerCache;->onMessageChannelReady:I

    .line 6341
    iget-object v1, v1, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v1, v2, v0}, Lo/updateServerSnap;->onPostMessage(ILo/getNodeFilter;)V

    :cond_4
    return-void

    :cond_5
    if-nez v1, :cond_6

    .line 533
    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget v1, p0, Lo/getServerCache;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Lo/normalizeValue;->ICustomTabsCallback(I)Lo/getServerCache;

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 525
    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage(Lo/getNodeFilter;)Z
    .locals 2

    .line 259
    sget-boolean v0, Lo/getServerCache;->ICustomTabsService:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 260
    :cond_1
    :goto_0
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 262
    monitor-exit p0

    return v1

    .line 264
    :cond_2
    iget-object v0, p0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    iget-boolean v0, v0, Lo/getServerCache$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iget-boolean v0, v0, Lo/getServerCache$extraCallback;->extraCallback:Z

    if-eqz v0, :cond_3

    .line 265
    monitor-exit p0

    return v1

    .line 267
    :cond_3
    iput-object p1, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object p1, p0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget v0, p0, Lo/getServerCache;->onMessageChannelReady:I

    invoke-virtual {p1, v0}, Lo/normalizeValue;->ICustomTabsCallback(I)Lo/getServerCache;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 269
    monitor-exit p0

    throw p1
.end method

.method final onRelationshipValidationResult()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iget-boolean v0, v0, Lo/getServerCache$extraCallback;->onNavigationEvent:Z

    if-nez v0, :cond_2

    .line 641
    iget-object v0, p0, Lo/getServerCache;->ICustomTabsCallback$Stub:Lo/getServerCache$extraCallback;

    iget-boolean v0, v0, Lo/getServerCache$extraCallback;->extraCallback:Z

    if-nez v0, :cond_1

    .line 643
    iget-object v0, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    if-nez v0, :cond_0

    return-void

    .line 644
    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lo/getServerCache;->newSession:Lo/getNodeFilter;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lo/getNodeFilter;)V

    throw v0

    .line 642
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
