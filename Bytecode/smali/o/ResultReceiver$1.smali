.class public final Lo/ResultReceiver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/loadsAllData$onPostMessage;
.implements Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;
.implements Lo/setSupportProgress$ICustomTabsCallback;


# static fields
.field static final onPostMessage:Ljava/lang/String;


# instance fields
.field final ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

.field private ICustomTabsCallback$Stub:I

.field final asBinder:Lo/getLifecycle;

.field asInterface:Z

.field final extraCallback:Landroid/content/Context;

.field final onMessageChannelReady:I

.field final onNavigationEvent:Ljava/lang/String;

.field onRelationshipValidationResult:Landroid/os/PowerManager$WakeLock;

.field private final onTransact:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    .line 53
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Lo/IResultReceiver$Stub$Proxy;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lo/ResultReceiver$1;->extraCallback:Landroid/content/Context;

    .line 103
    iput p2, p0, Lo/ResultReceiver$1;->onMessageChannelReady:I

    .line 104
    iput-object p4, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 105
    iput-object p3, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    .line 1189
    iget-object p1, p4, Lo/IResultReceiver$Stub$Proxy;->onPostMessage:Lo/supportShouldUpRecreateTask;

    .line 107
    new-instance p2, Lo/getLifecycle;

    iget-object p3, p0, Lo/ResultReceiver$1;->extraCallback:Landroid/content/Context;

    invoke-direct {p2, p3, p1, p0}, Lo/getLifecycle;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;Lo/loadsAllData$onPostMessage;)V

    iput-object p2, p0, Lo/ResultReceiver$1;->asBinder:Lo/getLifecycle;

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lo/ResultReceiver$1;->asInterface:Z

    .line 109
    iput p1, p0, Lo/ResultReceiver$1;->ICustomTabsCallback$Stub:I

    .line 110
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ResultReceiver$1;->onTransact:Ljava/lang/Object;

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 8

    .line 265
    iget-object v0, p0, Lo/ResultReceiver$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lo/ResultReceiver$1;->asBinder:Lo/getLifecycle;

    invoke-virtual {v1}, Lo/getLifecycle;->onNavigationEvent()V

    .line 269
    iget-object v1, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 8181
    iget-object v1, v1, Lo/IResultReceiver$Stub$Proxy;->onMessageChannelReady:Lo/setSupportProgress;

    .line 269
    iget-object v2, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/setSupportProgress;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lo/ResultReceiver$1;->onRelationshipValidationResult:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ResultReceiver$1;->onRelationshipValidationResult:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v3, "Releasing wakelock %s for WorkSpec %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lo/ResultReceiver$1;->onRelationshipValidationResult:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v7, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 275
    iget-object v1, p0, Lo/ResultReceiver$1;->onRelationshipValidationResult:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 277
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lo/ResultReceiver$1;->onPostMessage()V

    return-void
.end method

.method final onPostMessage()V
    .locals 8

    .line 226
    iget-object v0, p0, Lo/ResultReceiver$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget v1, p0, Lo/ResultReceiver$1;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 228
    iput v2, p0, Lo/ResultReceiver$1;->ICustomTabsCallback$Stub:I

    .line 229
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v5, "Stopping work for WorkSpec %s"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v7, v6, v4

    .line 231
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Throwable;

    .line 229
    invoke-virtual {v1, v2, v5, v6}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 232
    iget-object v1, p0, Lo/ResultReceiver$1;->extraCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/send;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    new-instance v5, Lo/IResultReceiver$Stub$Proxy$onPostMessage;

    iget-object v6, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    iget v7, p0, Lo/ResultReceiver$1;->onMessageChannelReady:I

    invoke-direct {v5, v6, v1, v7}, Lo/IResultReceiver$Stub$Proxy$onPostMessage;-><init>(Lo/IResultReceiver$Stub$Proxy;Landroid/content/Intent;I)V

    .line 6193
    iget-object v1, v2, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    iget-object v1, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 7177
    iget-object v1, v1, Lo/IResultReceiver$Stub$Proxy;->onNavigationEvent:Lo/getName;

    .line 239
    iget-object v2, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/getName;->onTransact(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v5, "WorkSpec %s needs to be rescheduled"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v6, v3, v4

    .line 241
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 240
    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 242
    iget-object v1, p0, Lo/ResultReceiver$1;->extraCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/send;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    new-instance v3, Lo/IResultReceiver$Stub$Proxy$onPostMessage;

    iget-object v4, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    iget v5, p0, Lo/ResultReceiver$1;->onMessageChannelReady:I

    invoke-direct {v3, v4, v1, v5}, Lo/IResultReceiver$Stub$Proxy$onPostMessage;-><init>(Lo/IResultReceiver$Stub$Proxy;Landroid/content/Intent;I)V

    .line 7193
    iget-object v1, v2, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v5, "Processor does not have WorkSpec %s. No need to reschedule "

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v5, "Already stopped work for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 255
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 4

    .line 173
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exceeded time limits on execution for %s"

    .line 175
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 173
    invoke-virtual {v0, v1, p1, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {p0}, Lo/ResultReceiver$1;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Z)V
    .locals 5

    .line 150
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "onExecuted %s, %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    invoke-direct {p0}, Lo/ResultReceiver$1;->onMessageChannelReady()V

    if-eqz p2, :cond_0

    .line 156
    iget-object p1, p0, Lo/ResultReceiver$1;->extraCallback:Landroid/content/Context;

    iget-object p2, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    invoke-static {p1, p2}, Lo/send;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 157
    iget-object p2, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    new-instance v0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;

    iget v1, p0, Lo/ResultReceiver$1;->onMessageChannelReady:I

    invoke-direct {v0, p2, p1, v1}, Lo/IResultReceiver$Stub$Proxy$onPostMessage;-><init>(Lo/IResultReceiver$Stub$Proxy;Landroid/content/Intent;I)V

    .line 4193
    iget-object p1, p2, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_0
    iget-boolean p1, p0, Lo/ResultReceiver$1;->asInterface:Z

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lo/ResultReceiver$1;->extraCallback:Landroid/content/Context;

    invoke-static {p1}, Lo/send;->ICustomTabsCallback(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    new-instance v0, Lo/IResultReceiver$Stub$Proxy$onPostMessage;

    iget v1, p0, Lo/ResultReceiver$1;->onMessageChannelReady:I

    invoke-direct {v0, p2, p1, v1}, Lo/IResultReceiver$Stub$Proxy$onPostMessage;-><init>(Lo/IResultReceiver$Stub$Proxy;Landroid/content/Intent;I)V

    .line 5193
    iget-object p1, p2, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object p1, p0, Lo/ResultReceiver$1;->onTransact:Ljava/lang/Object;

    monitor-enter p1

    .line 123
    :try_start_0
    iget v0, p0, Lo/ResultReceiver$1;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 124
    iput v1, p0, Lo/ResultReceiver$1;->ICustomTabsCallback$Stub:I

    .line 126
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v4, "onAllConstraintsMet for %s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 130
    iget-object v0, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 2177
    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->onNavigationEvent:Lo/getName;

    .line 130
    iget-object v3, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    const/4 v4, 0x0

    .line 3099
    invoke-virtual {v0, v3, v4}, Lo/getName;->onMessageChannelReady(Ljava/lang/String;Landroidx/work/WorkerParameters$extraCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lo/ResultReceiver$1;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 3181
    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->onMessageChannelReady:Lo/setSupportProgress;

    .line 135
    iget-object v3, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    .line 4085
    iget-object v4, v0, Lo/setSupportProgress;->extraCallback:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4086
    :try_start_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v5

    sget-object v6, Lo/setSupportProgress;->ICustomTabsCallback:Ljava/lang/String;

    const-string v7, "Starting timer for %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v1, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4088
    invoke-virtual {v0, v3}, Lo/setSupportProgress;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 4089
    new-instance v1, Lo/setSupportProgress$onMessageChannelReady;

    invoke-direct {v1, v0, v3}, Lo/setSupportProgress$onMessageChannelReady;-><init>(Lo/setSupportProgress;Ljava/lang/String;)V

    .line 4090
    iget-object v2, v0, Lo/setSupportProgress;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4091
    iget-object v2, v0, Lo/setSupportProgress;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4092
    iget-object v0, v0, Lo/setSupportProgress;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/32 v2, 0x927c0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 4093
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4

    throw v0

    .line 140
    :cond_1
    invoke-direct {p0}, Lo/ResultReceiver$1;->onMessageChannelReady()V

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/ResultReceiver$1;->onPostMessage:Ljava/lang/String;

    const-string v4, "Already started work for %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lo/ResultReceiver$1;->onNavigationEvent:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 145
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method
