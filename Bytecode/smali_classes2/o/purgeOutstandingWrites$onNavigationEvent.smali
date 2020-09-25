.class final Lo/purgeOutstandingWrites$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/purgeOutstandingWrites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# static fields
.field private static synthetic asBinder:Z


# instance fields
.field private final ICustomTabsCallback:J

.field private synthetic asInterface:Lo/purgeOutstandingWrites;

.field private extraCallback:Z

.field private final onMessageChannelReady:Lo/updatePriority;

.field private final onNavigationEvent:Lo/updatePriority;

.field private onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 314
    const-class v0, Lo/purgeOutstandingWrites;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/purgeOutstandingWrites$onNavigationEvent;->asBinder:Z

    return-void
.end method

.method private constructor <init>(Lo/purgeOutstandingWrites;J)V
    .locals 0

    .line 333
    iput-object p1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onNavigationEvent:Lo/updatePriority;

    .line 319
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;

    .line 334
    iput-wide p2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->ICustomTabsCallback:J

    return-void
.end method

.method synthetic constructor <init>(Lo/purgeOutstandingWrites;JB)V
    .locals 0

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lo/purgeOutstandingWrites$onNavigationEvent;-><init>(Lo/purgeOutstandingWrites;J)V

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "timeout"

    .line 374
    iget-object v1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v1}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v1

    invoke-virtual {v1}, Lo/getIndexedFilter;->onMessageChannelReady()V

    :goto_0
    const/4 v1, 0x0

    .line 376
    :try_start_0
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;

    .line 5067
    iget-wide v2, v2, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 376
    iget-boolean v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->extraCallback:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onMessageChannelReady(Lo/purgeOutstandingWrites;)Lo/getReferenceFromUrl;

    move-result-object v2

    if-nez v2, :cond_0

    .line 377
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onNavigationEvent(Lo/purgeOutstandingWrites;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    :cond_0
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v2

    .line 6120
    iget-boolean v3, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v3, :cond_1

    goto :goto_1

    .line 6121
    :cond_1
    iput-boolean v1, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 6122
    invoke-static {v2}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 6605
    :cond_2
    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 5613
    throw v1

    :catchall_0
    move-exception v2

    .line 380
    iget-object v3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v3}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v3

    .line 7120
    iget-boolean v4, v3, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v4, :cond_3

    goto :goto_2

    .line 7121
    :cond_3
    iput-boolean v1, v3, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 7122
    invoke-static {v3}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_4

    .line 7605
    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 6613
    throw v1

    .line 380
    :cond_4
    throw v2
.end method

.method static synthetic onNavigationEvent(Lo/purgeOutstandingWrites$onNavigationEvent;)Z
    .locals 0

    .line 314
    iget-boolean p0, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage:Z

    return p0
.end method

.method static synthetic onPostMessage(Lo/purgeOutstandingWrites$onNavigationEvent;)Z
    .locals 0

    .line 314
    iget-boolean p0, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->extraCallback:Z

    return p0
.end method

.method static synthetic onPostMessage(Lo/purgeOutstandingWrites$onNavigationEvent;Z)Z
    .locals 0

    .line 314
    iput-boolean p1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->extraCallback:Z

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 342
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    monitor-enter v2

    .line 343
    :try_start_0
    invoke-direct {p0}, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady()V

    .line 1438
    iget-boolean v3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage:Z

    if-nez v3, :cond_6

    .line 1441
    iget-object v3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v3}, Lo/purgeOutstandingWrites;->onMessageChannelReady(Lo/purgeOutstandingWrites;)Lo/getReferenceFromUrl;

    move-result-object v3

    if-nez v3, :cond_5

    .line 345
    iget-object v3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;

    .line 2067
    iget-wide v3, v3, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    const-wide/16 p1, -0x1

    .line 345
    monitor-exit v2

    return-wide p1

    .line 348
    :cond_0
    iget-object v3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;

    iget-object v4, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;

    .line 3067
    iget-wide v4, v4, Lo/updatePriority;->ICustomTabsCallback:J

    .line 348
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lo/updatePriority;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    .line 351
    iget-object p3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    iget-wide v3, p3, Lo/purgeOutstandingWrites;->ICustomTabsCallback:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lo/purgeOutstandingWrites;->ICustomTabsCallback:J

    .line 352
    iget-object p3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    iget-wide v3, p3, Lo/purgeOutstandingWrites;->ICustomTabsCallback:J

    iget-object p3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    .line 353
    invoke-static {p3}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object p3

    iget-object p3, p3, Lo/setPersistenceEnabled;->onNavigationEvent:Lo/isZombied$onPostMessage;

    .line 3198
    iget v5, p3, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit16 v5, v5, 0x80

    const/4 v6, 0x7

    const/high16 v7, 0x10000

    if-eqz v5, :cond_1

    iget-object p3, p3, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget p3, p3, v6

    goto :goto_0

    :cond_1
    const/high16 p3, 0x10000

    .line 353
    :goto_0
    div-int/lit8 p3, p3, 0x2

    int-to-long v8, p3

    cmp-long p3, v3, v8

    if-ltz p3, :cond_2

    .line 354
    iget-object p3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {p3}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object p3

    iget-object v3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v3}, Lo/purgeOutstandingWrites;->extraCallback(Lo/purgeOutstandingWrites;)I

    move-result v3

    iget-object v4, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    iget-wide v4, v4, Lo/purgeOutstandingWrites;->ICustomTabsCallback:J

    invoke-virtual {p3, v3, v4, v5}, Lo/setPersistenceEnabled;->onPostMessage(IJ)V

    .line 355
    iget-object p3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    iput-wide v0, p3, Lo/purgeOutstandingWrites;->ICustomTabsCallback:J

    .line 357
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    iget-object p3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {p3}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object p3

    monitor-enter p3

    .line 361
    :try_start_1
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v2

    iget-wide v3, v2, Lo/setPersistenceEnabled;->onPostMessage:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lo/setPersistenceEnabled;->onPostMessage:J

    .line 362
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v2

    iget-wide v2, v2, Lo/setPersistenceEnabled;->onPostMessage:J

    iget-object v4, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    .line 363
    invoke-static {v4}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v4

    iget-object v4, v4, Lo/setPersistenceEnabled;->onNavigationEvent:Lo/isZombied$onPostMessage;

    .line 4198
    iget v5, v4, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    iget-object v4, v4, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v7, v4, v6

    .line 363
    :cond_3
    div-int/lit8 v7, v7, 0x2

    int-to-long v4, v7

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    .line 364
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v4}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v4

    iget-wide v4, v4, Lo/setPersistenceEnabled;->onPostMessage:J

    invoke-virtual {v2, v3, v4, v5}, Lo/setPersistenceEnabled;->onPostMessage(IJ)V

    .line 365
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v2}, Lo/purgeOutstandingWrites;->onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;

    move-result-object v2

    iput-wide v0, v2, Lo/setPersistenceEnabled;->onPostMessage:J

    .line 367
    :cond_4
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1

    .line 1442
    :cond_5
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "stream was reset: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {p3}, Lo/purgeOutstandingWrites;->onMessageChannelReady(Lo/purgeOutstandingWrites;)Lo/getReferenceFromUrl;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1439
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 357
    monitor-exit v2

    throw p1

    .line 339
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 425
    iget-object v0, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method final ICustomTabsCallback(Lo/fullLimitUpdateChild;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    sget-boolean v0, Lo/purgeOutstandingWrites$onNavigationEvent;->asBinder:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_9

    .line 390
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    monitor-enter v2

    .line 391
    :try_start_0
    iget-boolean v3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->extraCallback:Z

    .line 392
    iget-object v4, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;

    .line 8067
    iget-wide v4, v4, Lo/updatePriority;->ICustomTabsCallback:J

    add-long/2addr v4, p2

    .line 392
    iget-wide v6, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->ICustomTabsCallback:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 393
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_4

    .line 397
    invoke-interface {p1, p2, p3}, Lo/fullLimitUpdateChild;->asInterface(J)V

    .line 398
    iget-object p1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    sget-object p2, Lo/getReferenceFromUrl;->ICustomTabsCallback$Stub:Lo/getReferenceFromUrl;

    .line 8230
    invoke-virtual {p1, p2}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/getReferenceFromUrl;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 8233
    iget-object p3, p1, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget p1, p1, Lo/purgeOutstandingWrites;->extraCallback:I

    invoke-virtual {p3, p1, p2}, Lo/setPersistenceEnabled;->onMessageChannelReady(ILo/getReferenceFromUrl;)V

    :cond_3
    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 404
    invoke-interface {p1, p2, p3}, Lo/fullLimitUpdateChild;->asInterface(J)V

    return-void

    .line 409
    :cond_5
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onNavigationEvent:Lo/updatePriority;

    invoke-interface {p1, v2, p2, p3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    sub-long/2addr p2, v2

    .line 414
    iget-object v2, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    monitor-enter v2

    .line 415
    :try_start_1
    iget-object v3, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;

    .line 9067
    iget-wide v3, v3, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 416
    :goto_2
    iget-object v0, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;

    iget-object v1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v0, v1}, Lo/updatePriority;->ICustomTabsCallback(Lo/toLog;)J

    if-eqz v8, :cond_7

    .line 418
    iget-object v0, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 420
    :cond_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .line 410
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 393
    monitor-exit v2

    throw p1

    :cond_9
    return-void
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    monitor-enter v0

    const/4 v1, 0x1

    .line 430
    :try_start_0
    iput-boolean v1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage:Z

    .line 431
    iget-object v1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->onMessageChannelReady:Lo/updatePriority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9930
    :try_start_1
    iget-wide v2, v1, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {v1, v2, v3}, Lo/updatePriority;->asInterface(J)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :try_start_2
    iget-object v1, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 433
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    iget-object v0, p0, Lo/purgeOutstandingWrites$onNavigationEvent;->asInterface:Lo/purgeOutstandingWrites;

    invoke-static {v0}, Lo/purgeOutstandingWrites;->asInterface(Lo/purgeOutstandingWrites;)V

    return-void

    :catch_0
    move-exception v1

    .line 9932
    :try_start_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 433
    monitor-exit v0

    throw v1
.end method
