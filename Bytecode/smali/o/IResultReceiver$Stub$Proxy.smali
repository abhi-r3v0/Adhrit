.class public final Lo/IResultReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;,
        Lo/IResultReceiver$Stub$Proxy$onPostMessage;,
        Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/lang/String;


# instance fields
.field final ICustomTabsCallback$Stub:Lo/send;

.field final asBinder:Landroid/os/Handler;

.field asInterface:Landroid/content/Intent;

.field final extraCallback:Landroid/content/Context;

.field getInterfaceDescriptor:Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;

.field final onMessageChannelReady:Lo/setSupportProgress;

.field final onNavigationEvent:Lo/getName;

.field final onPostMessage:Lo/supportShouldUpRecreateTask;

.field final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final onTransact:Lo/PlaybackStateCompat$RepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmDispatcher"

    .line 53
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lo/IResultReceiver$Stub$Proxy;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lo/IResultReceiver$Stub$Proxy;->extraCallback:Landroid/content/Context;

    .line 86
    new-instance p2, Lo/send;

    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->extraCallback:Landroid/content/Context;

    invoke-direct {p2, v0}, Lo/send;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback$Stub:Lo/send;

    .line 87
    new-instance p2, Lo/setSupportProgress;

    invoke-direct {p2}, Lo/setSupportProgress;-><init>()V

    iput-object p2, p0, Lo/IResultReceiver$Stub$Proxy;->onMessageChannelReady:Lo/setSupportProgress;

    .line 88
    invoke-static {p1}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object p1

    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 1340
    iget-object p1, p1, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 89
    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->onNavigationEvent:Lo/getName;

    .line 90
    iget-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 1349
    iget-object p1, p1, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    .line 90
    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->onPostMessage:Lo/supportShouldUpRecreateTask;

    .line 91
    iget-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->onNavigationEvent:Lo/getName;

    .line 2275
    iget-object p2, p1, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter p2

    .line 2276
    :try_start_0
    iget-object p1, p1, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2277
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p1

    .line 2277
    monitor-exit p2

    throw p1
.end method

.method private ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 3

    .line 5318
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 307
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 309
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 313
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 314
    monitor-exit v0

    throw p1

    .line 5319
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Needs to be invoked on the main thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final extraCallback()V
    .locals 3

    .line 4318
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->extraCallback:Landroid/content/Context;

    const-string v1, "ProcessCommand"

    .line 249
    invoke-static {v0, v1}, Lo/onWindowStartingSupportActionMode;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 251
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 253
    iget-object v1, p0, Lo/IResultReceiver$Stub$Proxy;->onTransact:Lo/PlaybackStateCompat$RepeatMode;

    .line 4349
    iget-object v1, v1, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    .line 253
    new-instance v2, Lo/IResultReceiver$Stub$Proxy$2;

    invoke-direct {v2, p0}, Lo/IResultReceiver$Stub$Proxy$2;-><init>(Lo/IResultReceiver$Stub$Proxy;)V

    invoke-interface {v1, v2}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 301
    throw v1

    .line 4319
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final onMessageChannelReady()V
    .locals 4

    .line 104
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Destroying SystemAlarmDispatcher"

    invoke-virtual {v0, v1, v3, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 105
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->onNavigationEvent:Lo/getName;

    .line 2286
    iget-object v1, v0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1

    .line 2287
    :try_start_0
    iget-object v0, v0, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2288
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->onMessageChannelReady:Lo/setSupportProgress;

    .line 3116
    iget-object v1, v0, Lo/setSupportProgress;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3119
    iget-object v0, v0, Lo/setSupportProgress;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->getInterfaceDescriptor:Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;

    return-void

    :catchall_0
    move-exception v0

    .line 2288
    monitor-exit v1

    throw v0
.end method

.method public final onMessageChannelReady(Landroid/content/Intent;I)Z
    .locals 6

    .line 136
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "Adding command %s (%s)"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3318
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object p2, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "Unknown command. Ignoring"

    invoke-virtual {p1, p2, v0}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 148
    invoke-direct {p0, v0}, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const-string v0, "KEY_START_ID"

    .line 152
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object p2, p0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    monitor-enter p2

    .line 154
    :try_start_0
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 155
    :cond_2
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_3

    .line 160
    invoke-virtual {p0}, Lo/IResultReceiver$Stub$Proxy;->extraCallback()V

    .line 162
    :cond_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    .line 3319
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Needs to be invoked on the main thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;Z)V
    .locals 2

    .line 117
    new-instance v0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;

    iget-object v1, p0, Lo/IResultReceiver$Stub$Proxy;->extraCallback:Landroid/content/Context;

    .line 120
    invoke-static {v1, p1, p2}, Lo/send;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2}, Lo/IResultReceiver$Stub$Proxy$onPostMessage;-><init>(Lo/IResultReceiver$Stub$Proxy;Landroid/content/Intent;I)V

    .line 3193
    iget-object p1, p0, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
