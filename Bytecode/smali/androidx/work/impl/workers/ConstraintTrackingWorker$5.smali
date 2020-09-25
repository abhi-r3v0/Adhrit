.class final Landroidx/work/impl/workers/ConstraintTrackingWorker$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/workers/ConstraintTrackingWorker;->ICustomTabsCallback()Lo/getBatteryLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 0

    .line 82
    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$5;->ICustomTabsCallback:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 85
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$5;->ICustomTabsCallback:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 2118
    iget-object v1, v0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 3098
    iget-object v1, v1, Landroidx/work/WorkerParameters;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    .line 3303
    iget-object v1, v1, Lo/PlaybackStateCompat$Builder;->extraCallback:Ljava/util/Map;

    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3304
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3305
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1094
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1095
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->extraCallback:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "No worker to delegate to."

    invoke-virtual {v1, v2, v4, v3}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4168
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    .line 4374
    new-instance v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;-><init>()V

    .line 4168
    invoke-virtual {v0, v1}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void

    .line 5316
    :cond_1
    iget-object v2, v0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 6178
    iget-object v2, v2, Landroidx/work/WorkerParameters;->onNavigationEvent:Lo/PlaybackStateCompat$ErrorCode;

    .line 7098
    iget-object v4, v0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    .line 1101
    iget-object v5, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onMessageChannelReady:Landroidx/work/WorkerParameters;

    .line 1100
    invoke-virtual {v2, v4, v1, v5}, Lo/PlaybackStateCompat$ErrorCode;->extraCallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2

    iput-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->newSession:Landroidx/work/ListenableWorker;

    .line 1105
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->newSession:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_2

    .line 1106
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->extraCallback:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "No worker to delegate to."

    invoke-virtual {v1, v2, v4, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7168
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    .line 7374
    new-instance v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;-><init>()V

    .line 7168
    invoke-virtual {v0, v1}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void

    .line 9098
    :cond_2
    iget-object v2, v0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    .line 8198
    invoke-static {v2}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v2

    .line 9311
    iget-object v2, v2, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 1114
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v2

    .line 10107
    iget-object v4, v0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 11087
    iget-object v4, v4, Landroidx/work/WorkerParameters;->extraCallback:Ljava/util/UUID;

    .line 1114
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lo/onPostResume;->ICustomTabsCallback(Ljava/lang/String;)Lo/onDestroy;

    move-result-object v2

    if-nez v2, :cond_3

    .line 11168
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    .line 11374
    new-instance v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;-><init>()V

    .line 11168
    invoke-virtual {v0, v1}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void

    .line 1119
    :cond_3
    new-instance v4, Lo/getLifecycle;

    .line 12098
    iget-object v5, v0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    .line 13098
    iget-object v6, v0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    .line 12210
    invoke-static {v6}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v6

    .line 13349
    iget-object v6, v6, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    .line 1120
    invoke-direct {v4, v5, v6, v0}, Lo/getLifecycle;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;Lo/loadsAllData$onPostMessage;)V

    .line 1123
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lo/getLifecycle;->onPostMessage(Ljava/lang/Iterable;)V

    .line 14107
    iget-object v2, v0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 15087
    iget-object v2, v2, Landroidx/work/WorkerParameters;->extraCallback:Ljava/util/UUID;

    .line 1125
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lo/getLifecycle;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 1126
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v2

    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->extraCallback:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const-string v7, "Constraints met for delegate %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5, v6, v7}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1132
    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->newSession:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->ICustomTabsCallback()Lo/getBatteryLevel;

    move-result-object v2

    .line 1133
    new-instance v5, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;

    invoke-direct {v5, v0, v2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lo/getBatteryLevel;)V

    .line 15300
    iget-object v6, v0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 16162
    iget-object v6, v6, Landroidx/work/WorkerParameters;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 1133
    invoke-interface {v2, v5, v6}, Lo/getBatteryLevel;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    .line 1146
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/workers/ConstraintTrackingWorker;->extraCallback:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v3

    const-string v1, "Delegated worker %s threw exception in startWork."

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v2, v4, v3

    invoke-virtual {v5, v6, v1, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1149
    iget-object v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onRelationshipValidationResult:Ljava/lang/Object;

    monitor-enter v1

    .line 1150
    :try_start_1
    iget-boolean v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onTransact:Z

    if-eqz v2, :cond_4

    .line 1151
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;->extraCallback:Ljava/lang/String;

    const-string v5, "Constraints were unmet, Retrying."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 16173
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    .line 16360
    new-instance v2, Landroidx/work/ListenableWorker$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {v2}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onMessageChannelReady;-><init>()V

    .line 16173
    invoke-virtual {v0, v2}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17168
    :cond_4
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    .line 17374
    new-instance v2, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;

    invoke-direct {v2}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;-><init>()V

    .line 17168
    invoke-virtual {v0, v2}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    .line 1156
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1159
    :cond_5
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v2

    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->extraCallback:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "Constraints not met for delegate %s. Requesting retry."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v5, v1, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 18173
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    .line 18360
    new-instance v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onMessageChannelReady;-><init>()V

    .line 18173
    invoke-virtual {v0, v1}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void
.end method
