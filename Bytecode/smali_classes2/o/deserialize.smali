.class public final Lo/deserialize;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic asInterface:Z

.field static final extraCallback:Ljava/util/concurrent/Executor;


# instance fields
.field final ICustomTabsCallback:Lo/generateEvent;

.field asBinder:Z

.field final onMessageChannelReady:Ljava/lang/Runnable;

.field final onNavigationEvent:I

.field final onPostMessage:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/raiseEvents;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 44
    const-class v0, Lo/deserialize;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lo/deserialize;->asInterface:Z

    .line 50
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v2, "OkHttp ConnectionPool"

    .line 52
    invoke-static {v2, v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lo/deserialize;->extraCallback:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lo/deserialize;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lo/deserialize$3;

    invoke-direct {v0, p0}, Lo/deserialize$3;-><init>(Lo/deserialize;)V

    iput-object v0, p0, Lo/deserialize;->onMessageChannelReady:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/deserialize;->onPostMessage:Ljava/util/Deque;

    .line 77
    new-instance v0, Lo/generateEvent;

    invoke-direct {v0}, Lo/generateEvent;-><init>()V

    iput-object v0, p0, Lo/deserialize;->ICustomTabsCallback:Lo/generateEvent;

    const/4 v0, 0x5

    .line 90
    iput v0, p0, Lo/deserialize;->onNavigationEvent:I

    const-wide/16 v0, 0x5

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/deserialize;->onRelationshipValidationResult:J

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(J)J
    .locals 13

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lo/deserialize;->onPostMessage:Ljava/util/Deque;

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

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/raiseEvents;

    .line 1257
    iget-object v8, v7, Lo/raiseEvents;->asInterface:Ljava/util/List;

    const/4 v9, 0x0

    .line 1258
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 1259
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/Reference;

    .line 1261
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1267
    :cond_2
    check-cast v10, Lo/getIndexEndValue$onMessageChannelReady;

    .line 1269
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "A connection to "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1542
    iget-object v12, v7, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 2058
    iget-object v12, v12, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 2093
    iget-object v12, v12, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 1269
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1271
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v12

    iget-object v10, v10, Lo/getIndexEndValue$onMessageChannelReady;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v12, v11, v10}, Lo/getChildAfterChild;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1273
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v10, 0x1

    .line 1274
    iput-boolean v10, v7, Lo/raiseEvents;->onTransact:Z

    .line 1277
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1278
    iget-wide v8, p0, Lo/deserialize;->onRelationshipValidationResult:J

    sub-long v8, p1, v8

    iput-wide v8, v7, Lo/raiseEvents;->getInterfaceDescriptor:J

    const/4 v8, 0x0

    goto :goto_2

    .line 1283
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-lez v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 219
    iget-wide v8, v7, Lo/raiseEvents;->getInterfaceDescriptor:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_0

    move-object v2, v7

    move-wide v3, v8

    goto :goto_0

    .line 226
    :cond_5
    iget-wide p1, p0, Lo/deserialize;->onRelationshipValidationResult:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_9

    const/4 p1, 0x5

    if-le v5, p1, :cond_6

    goto :goto_3

    :cond_6
    if-lez v5, :cond_7

    .line 233
    iget-wide p1, p0, Lo/deserialize;->onRelationshipValidationResult:J

    sub-long/2addr p1, v3

    monitor-exit p0

    return-wide p1

    :cond_7
    if-lez v6, :cond_8

    .line 236
    iget-wide p1, p0, Lo/deserialize;->onRelationshipValidationResult:J

    monitor-exit p0

    return-wide p1

    .line 239
    :cond_8
    iput-boolean v1, p0, Lo/deserialize;->asBinder:Z

    const-wide/16 p1, -0x1

    .line 240
    monitor-exit p0

    return-wide p1

    .line 230
    :cond_9
    :goto_3
    iget-object p1, p0, Lo/deserialize;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    .line 2551
    iget-object p1, v2, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    .line 244
    invoke-static {p1}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 242
    monitor-exit p0

    throw p1
.end method
