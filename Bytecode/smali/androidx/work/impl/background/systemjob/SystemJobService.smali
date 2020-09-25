.class public Landroidx/work/impl/background/systemjob/SystemJobService;
.super Landroid/app/job/JobService;
.source ""

# interfaces
.implements Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;


# static fields
.field private static final extraCallback:Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobService"

    .line 49
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method private static onPostMessage(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 2

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 55
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 1340
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 58
    invoke-virtual {v0, p0}, Lo/getName;->ICustomTabsCallback(Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 69
    const-class v0, Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    const-string v2, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer."

    invoke-virtual {v0, v1, v2}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 86
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    if-eqz v0, :cond_0

    .line 2340
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 3286
    iget-object v1, v0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1

    .line 3287
    :try_start_0
    iget-object v0, v0, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3288
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Z)V
    .locals 5

    .line 173
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "%s executed on JobScheduler"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 175
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/background/systemjob/SystemJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 177
    monitor-exit v0

    throw p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 8

    .line 93
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Throwable;

    const-string v5, "WorkManager is not initialized; requesting retry."

    invoke-virtual {v0, v3, v5, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0, p1, v1}, Landroidx/work/impl/background/systemjob/SystemJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v2

    .line 99
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->onPostMessage(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Throwable;

    const-string v3, "WorkSpec id not found!"

    invoke-virtual {p1, v0, v3, v1}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    .line 105
    :cond_1
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v3

    .line 106
    :try_start_0
    iget-object v4, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    const-string v5, "Job is already being executed by SystemJobService: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Throwable;

    invoke-virtual {p1, v4, v0, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 111
    monitor-exit v3

    return v2

    .line 118
    :cond_2
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    const-string v6, "onStartJob for %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 119
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 123
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5

    .line 124
    new-instance v2, Landroidx/work/WorkerParameters$extraCallback;

    invoke-direct {v2}, Landroidx/work/WorkerParameters$extraCallback;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTriggeredContentUris()[Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTriggeredContentUris()[Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    :cond_3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTriggeredContentAuthorities()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 131
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTriggeredContentAuthorities()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 133
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    .line 134
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getNetwork()Landroid/net/Network;

    .line 145
    :cond_5
    iget-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 3618
    iget-object v3, p1, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance v4, Lo/startSupportActionMode;

    invoke-direct {v4, p1, v0, v2}, Lo/startSupportActionMode;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Landroidx/work/WorkerParameters$extraCallback;)V

    .line 3619
    invoke-interface {v3, v4}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    return v1

    :catchall_0
    move-exception p1

    .line 120
    monitor-exit v3

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    .line 151
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "WorkManager is not initialized; requesting retry."

    invoke-virtual {p1, v0, v3, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1

    .line 156
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->onPostMessage(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Throwable;

    const-string v3, "WorkSpec id not found!"

    invoke-virtual {p1, v0, v3, v1}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    .line 162
    :cond_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->extraCallback:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string v5, "onStopJob for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 164
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 3629
    iget-object v3, v0, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance v4, Lo/setSupportProgressBarIndeterminateVisibility;

    invoke-direct {v4, v0, p1, v2}, Lo/setSupportProgressBarIndeterminateVisibility;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 4340
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 168
    invoke-virtual {v0, p1}, Lo/getName;->extraCallback(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 166
    monitor-exit v0

    throw p1
.end method
