.class public abstract Lo/setCurrentControllerInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCurrentControllerInfo$onPostMessage;,
        Lo/setCurrentControllerInfo$ICustomTabsCallback;,
        Lo/setCurrentControllerInfo$onMessageChannelReady;,
        Lo/setCurrentControllerInfo$onNavigationEvent;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/update;

.field private ICustomTabsCallback$Stub:Z

.field private asBinder:Ljava/util/concurrent/Executor;

.field private final asInterface:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setCurrentControllerInfo$onPostMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field onMessageChannelReady:Z

.field public final onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

.field public volatile onPostMessage:Lo/MediaControllerCompatApi21$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lo/setCurrentControllerInfo;->onRelationshipValidationResult:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 118
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lo/setCurrentControllerInfo;->asInterface:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/setCurrentControllerInfo;->onTransact:Ljava/util/Map;

    .line 151
    invoke-virtual {p0}, Lo/setCurrentControllerInfo;->extraCallback()Lo/MediaSessionCompat$MediaSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 263
    iget-boolean v0, p0, Lo/setCurrentControllerInfo;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    return-void

    .line 2051
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 267
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract extraCallback()Lo/MediaSessionCompat$MediaSessionImpl;
.end method

.method public final extraCallback(Lo/onAddQueueItem;)V
    .locals 4

    .line 161
    invoke-virtual {p0, p1}, Lo/setCurrentControllerInfo;->onNavigationEvent(Lo/onAddQueueItem;)Lo/update;

    move-result-object v0

    iput-object v0, p0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    .line 162
    instance-of v1, v0, Lo/unregisterMediaButtonEventReceiver;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Lo/unregisterMediaButtonEventReceiver;

    .line 1111
    iput-object p1, v0, Lo/unregisterMediaButtonEventReceiver;->onPostMessage:Lo/onAddQueueItem;

    .line 167
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 168
    iget-object v0, p1, Lo/onAddQueueItem;->asInterface:Lo/setCurrentControllerInfo$onNavigationEvent;

    sget-object v1, Lo/setCurrentControllerInfo$onNavigationEvent;->ICustomTabsCallback:Lo/setCurrentControllerInfo$onNavigationEvent;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 169
    :cond_1
    iget-object v0, p0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0, v2}, Lo/update;->ICustomTabsCallback(Z)V

    .line 171
    :cond_2
    iget-object v0, p1, Lo/onAddQueueItem;->onPostMessage:Ljava/util/List;

    iput-object v0, p0, Lo/setCurrentControllerInfo;->extraCallback:Ljava/util/List;

    .line 172
    iget-object v0, p1, Lo/onAddQueueItem;->asBinder:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lo/setCurrentControllerInfo;->asBinder:Ljava/util/concurrent/Executor;

    .line 173
    new-instance v0, Lo/MediaSessionCompat$MediaSessionImplApi19;

    iget-object v1, p1, Lo/onAddQueueItem;->onRelationshipValidationResult:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lo/MediaSessionCompat$MediaSessionImplApi19;-><init>(Ljava/util/concurrent/Executor;)V

    .line 174
    iget-boolean v0, p1, Lo/onAddQueueItem;->onTransact:Z

    iput-boolean v0, p0, Lo/setCurrentControllerInfo;->ICustomTabsCallback$Stub:Z

    .line 175
    iput-boolean v2, p0, Lo/setCurrentControllerInfo;->onMessageChannelReady:Z

    .line 176
    iget-boolean v0, p1, Lo/onAddQueueItem;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    iget-object v1, p1, Lo/onAddQueueItem;->extraCallback:Landroid/content/Context;

    iget-object p1, p1, Lo/onAddQueueItem;->onNavigationEvent:Ljava/lang/String;

    .line 1186
    new-instance v2, Lo/MediaSessionCompat$Callback$CallbackHandler;

    iget-object v3, v0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 1377
    iget-object v3, v3, Lo/setCurrentControllerInfo;->asBinder:Ljava/util/concurrent/Executor;

    .line 1187
    invoke-direct {v2, v1, p1, v0, v3}, Lo/MediaSessionCompat$Callback$CallbackHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/MediaSessionCompat$MediaSessionImpl;Ljava/util/concurrent/Executor;)V

    :cond_3
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iget-object v0, p0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    .line 3476
    iget-object v0, p0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    .line 4441
    iget-object v1, v0, Lo/MediaSessionCompat$MediaSessionImpl;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4442
    iget-object v1, v0, Lo/MediaSessionCompat$MediaSessionImpl;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 5377
    iget-object v1, v1, Lo/setCurrentControllerInfo;->asBinder:Ljava/util/concurrent/Executor;

    .line 4442
    iget-object v0, v0, Lo/MediaSessionCompat$MediaSessionImpl;->onRelationshipValidationResult:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 2

    .line 452
    iget-object v0, p0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    .line 6168
    monitor-enter v0

    .line 6169
    :try_start_0
    iget-boolean v1, v0, Lo/MediaSessionCompat$MediaSessionImpl;->extraCallback:Z

    if-eqz v1, :cond_0

    const-string p1, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    .line 6170
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6171
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "PRAGMA temp_store = MEMORY;"

    .line 6176
    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    const-string v1, "PRAGMA recursive_triggers=\'ON\';"

    .line 6177
    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    const-string v1, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 6178
    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 6179
    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    const-string v1, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    .line 6180
    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Ljava/lang/String;)Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object p1

    iput-object p1, v0, Lo/MediaSessionCompat$MediaSessionImpl;->ICustomTabsCallback$Stub:Lo/getDrawerToggleDelegate$onNavigationEvent;

    const/4 p1, 0x1

    .line 6181
    iput-boolean p1, v0, Lo/MediaSessionCompat$MediaSessionImpl;->extraCallback:Z

    .line 6182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method protected abstract onNavigationEvent(Lo/onAddQueueItem;)Lo/update;
.end method

.method public final onNavigationEvent()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-virtual {p0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 352
    iget-object v0, p0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v1, v0}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 354
    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 2476
    iget-object v0, p0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lo/setCurrentControllerInfo;->asInterface:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
