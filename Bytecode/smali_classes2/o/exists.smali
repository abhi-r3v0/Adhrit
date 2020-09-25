.class public final Lo/exists;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic ICustomTabsCallback$Stub:Z

.field private static final asInterface:Lo/exists;


# instance fields
.field final ICustomTabsCallback:I

.field extraCallback:Ljava/lang/Runnable;

.field final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field final onNavigationEvent:Lo/setEventTarget;

.field final onPostMessage:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/orderByChild;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    const-class v0, Lo/exists;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/exists;->ICustomTabsCallback$Stub:Z

    const-string v0, "http.keepAlive"

    .line 64
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http.keepAliveDuration"

    .line 65
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http.maxConnections"

    .line 66
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 68
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x493e0

    :goto_0
    if-eqz v0, :cond_1

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lo/exists;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3, v4}, Lo/exists;-><init>(IJ)V

    sput-object v0, Lo/exists;->asInterface:Lo/exists;

    return-void

    :cond_1
    if-eqz v2, :cond_2

    .line 73
    new-instance v0, Lo/exists;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, v3, v4}, Lo/exists;-><init>(IJ)V

    sput-object v0, Lo/exists;->asInterface:Lo/exists;

    return-void

    .line 75
    :cond_2
    new-instance v0, Lo/exists;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v3, v4}, Lo/exists;-><init>(IJ)V

    sput-object v0, Lo/exists;->asInterface:Lo/exists;

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 1

    .line 114
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, p3, v0}, Lo/exists;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    .line 86
    invoke-static {v0}, Lo/createForTests;->onPostMessage(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lo/exists;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 91
    new-instance v0, Lo/exists$1;

    invoke-direct {v0, p0}, Lo/exists$1;-><init>(Lo/exists;)V

    iput-object v0, p0, Lo/exists;->extraCallback:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/exists;->onPostMessage:Ljava/util/Deque;

    .line 111
    new-instance v0, Lo/setEventTarget;

    invoke-direct {v0}, Lo/setEventTarget;-><init>()V

    iput-object v0, p0, Lo/exists;->onNavigationEvent:Lo/setEventTarget;

    .line 118
    iput p1, p0, Lo/exists;->ICustomTabsCallback:I

    .line 119
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/exists;->onTransact:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "keepAliveDuration <= 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static extraCallback()Lo/exists;
    .locals 1

    .line 128
    sget-object v0, Lo/exists;->asInterface:Lo/exists;

    return-object v0
.end method


# virtual methods
.method final onMessageChannelReady(J)J
    .locals 13

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lo/exists;->onPostMessage:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/orderByChild;

    .line 1295
    iget-object v8, v7, Lo/orderByChild;->asBinder:Ljava/util/List;

    const/4 v9, 0x0

    .line 1296
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 1297
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/Reference;

    .line 1299
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1305
    :cond_2
    sget-object v10, Lo/goOnline;->onNavigationEvent:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "A connection to "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1327
    iget-object v12, v7, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 2055
    iget-object v12, v12, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 2090
    iget-object v12, v12, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 1305
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1307
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v10, 0x1

    .line 1308
    iput-boolean v10, v7, Lo/orderByChild;->ICustomTabsCallback$Stub:Z

    .line 1311
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1312
    iget-wide v8, p0, Lo/exists;->onTransact:J

    sub-long v8, p1, v8

    iput-wide v8, v7, Lo/orderByChild;->onTransact:J

    const/4 v8, 0x0

    goto :goto_2

    .line 1317
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-lez v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 255
    iget-wide v8, v7, Lo/orderByChild;->onTransact:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_0

    move-object v2, v7

    move-wide v3, v8

    goto :goto_0

    .line 262
    :cond_5
    iget-wide p1, p0, Lo/exists;->onTransact:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_9

    iget p1, p0, Lo/exists;->ICustomTabsCallback:I

    if-le v5, p1, :cond_6

    goto :goto_3

    :cond_6
    if-lez v5, :cond_7

    .line 270
    iget-wide p1, p0, Lo/exists;->onTransact:J

    sub-long/2addr p1, v3

    monitor-exit p0

    return-wide p1

    :cond_7
    if-lez v6, :cond_8

    .line 274
    iget-wide p1, p0, Lo/exists;->onTransact:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :cond_8
    const-wide/16 p1, -0x1

    .line 278
    monitor-exit p0

    return-wide p1

    .line 266
    :cond_9
    :goto_3
    :try_start_1
    iget-object p1, p0, Lo/exists;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    monitor-exit p0

    .line 2336
    iget-object p1, v2, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    .line 282
    invoke-static {p1}, Lo/createForTests;->extraCallback(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 280
    monitor-exit p0

    throw p1
.end method
