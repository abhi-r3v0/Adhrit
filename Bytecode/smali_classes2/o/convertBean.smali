.class public final Lo/convertBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static synthetic asBinder:Z


# instance fields
.field final ICustomTabsCallback:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/getIndexedNode$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/getIndexedNode$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/getIndexedNode;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lo/convertBean;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/convertBean;->asBinder:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 40
    iput v0, p0, Lo/convertBean;->onNavigationEvent:I

    const/4 v0, 0x5

    .line 41
    iput v0, p0, Lo/convertBean;->onPostMessage:I

    .line 48
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/convertBean;->extraCallback:Ljava/util/Deque;

    .line 51
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/convertBean;->onMessageChannelReady:Ljava/util/Deque;

    return-void
.end method

.method private declared-synchronized ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lo/convertBean;->onRelationshipValidationResult:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 66
    invoke-static {v1, v8}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lo/convertBean;->onRelationshipValidationResult:Ljava/util/concurrent/ExecutorService;

    .line 68
    :cond_0
    iget-object v0, p0, Lo/convertBean;->onRelationshipValidationResult:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onMessageChannelReady(Lo/getIndexedNode$onPostMessage;)I
    .locals 4

    .line 195
    iget-object v0, p0, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getIndexedNode$onPostMessage;

    .line 5172
    iget-object v3, v2, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    .line 196
    iget-boolean v3, v3, Lo/getIndexedNode;->onNavigationEvent:Z

    if-nez v3, :cond_0

    .line 6164
    iget-object v2, v2, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v2, v2, Lo/getIndexedNode;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 7049
    iget-object v2, v2, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 7486
    iget-object v2, v2, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 8164
    iget-object v3, p1, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v3, v3, Lo/getIndexedNode;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 9049
    iget-object v3, v3, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 9486
    iget-object v3, v3, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private declared-synchronized onNavigationEvent()I
    .locals 2

    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lo/convertBean;->onMessageChannelReady:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {p0}, Lo/convertBean;->onPostMessage()Z

    return-void

    .line 220
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 222
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onNavigationEvent(Lo/getIndexedNode;)V
    .locals 1

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lo/convertBean;->onMessageChannelReady:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final onPostMessage()Z
    .locals 8

    .line 166
    sget-boolean v0, Lo/convertBean;->asBinder:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v1, p0, Lo/convertBean;->extraCallback:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getIndexedNode$onPostMessage;

    .line 174
    iget-object v3, p0, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    iget v4, p0, Lo/convertBean;->onNavigationEvent:I

    if-ge v3, v4, :cond_3

    .line 175
    invoke-direct {p0, v2}, Lo/convertBean;->onMessageChannelReady(Lo/getIndexedNode$onPostMessage;)I

    move-result v3

    iget v4, p0, Lo/convertBean;->onPostMessage:I

    if-ge v3, v4, :cond_2

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v3, p0, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_3
    invoke-direct {p0}, Lo/convertBean;->onNavigationEvent()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 182
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_7

    .line 185
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getIndexedNode$onPostMessage;

    .line 186
    invoke-direct {p0}, Lo/convertBean;->ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 1180
    sget-boolean v6, Lo/getIndexedNode$onPostMessage;->onMessageChannelReady:Z

    if-nez v6, :cond_6

    iget-object v6, v4, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v6, v6, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 1390
    iget-object v6, v6, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 1180
    invoke-static {v6}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1183
    :cond_6
    :goto_4
    :try_start_1
    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v5

    .line 1186
    :try_start_2
    new-instance v6, Ljava/io/InterruptedIOException;

    const-string v7, "executor rejected"

    invoke-direct {v6, v7}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1188
    iget-object v5, v4, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    invoke-static {v5}, Lo/getIndexedNode;->extraCallback(Lo/getIndexedNode;)Lo/resolveType;

    .line 1189
    iget-object v5, v4, Lo/getIndexedNode$onPostMessage;->extraCallback:Lo/convertDouble;

    iget-object v7, v4, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    invoke-interface {v5, v7, v6}, Lo/convertDouble;->onFailure(Lo/convertInteger;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1192
    iget-object v5, v4, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v5, v5, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 2390
    iget-object v5, v5, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 3209
    iget-object v6, v5, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-virtual {v5, v6, v4}, Lo/convertBean;->ICustomTabsCallback(Ljava/util/Deque;Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1192
    :goto_6
    iget-object v1, v4, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v1, v1, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 3390
    iget-object v1, v1, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 4209
    iget-object v2, v1, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-virtual {v1, v2, v4}, Lo/convertBean;->ICustomTabsCallback(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 1192
    throw v0

    :cond_7
    return v1

    :catchall_1
    move-exception v0

    .line 182
    monitor-exit p0

    throw v0
.end method
