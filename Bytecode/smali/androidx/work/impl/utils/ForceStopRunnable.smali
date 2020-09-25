.class public final Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/lang/String;

.field private static final onNavigationEvent:J


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final onPostMessage:Lo/PlaybackStateCompat$RepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    .line 62
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->extraCallback:Ljava/lang/String;

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->onNavigationEvent:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->ICustomTabsCallback:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    return-void
.end method

.method private onNavigationEvent()Z
    .locals 11

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/onRetainNonConfigurationInstance;->onMessageChannelReady(Landroid/content/Context;)V

    .line 153
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 5311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 154
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v1

    .line 155
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ICustomTabsService()Lo/setContentView;

    move-result-object v2

    .line 5351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 5352
    iget-object v3, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    .line 5353
    iget-object v4, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v4, v3}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 5354
    invoke-interface {v3}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 159
    :try_start_0
    invoke-interface {v1}, Lo/onPostResume;->extraCallback()Ljava/util/List;

    move-result-object v3

    .line 160
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 169
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/onDestroy;

    .line 170
    sget-object v7, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    new-array v8, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v6, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-interface {v1, v7, v8}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 171
    iget-object v6, v6, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    const-wide/16 v7, -0x1

    invoke-interface {v1, v6, v7, v8}, Lo/onPostResume;->onNavigationEvent(Ljava/lang/String;J)I

    goto :goto_0

    .line 174
    :cond_1
    invoke-interface {v2}, Lo/setContentView;->onPostMessage()V

    .line 5395
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return v4

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 178
    throw v1
.end method

.method private static onPostMessage(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 6204
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6205
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 6206
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    const/high16 v1, 0x8000000

    .line 196
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static onPostMessage(Landroid/content/Context;)V
    .locals 6

    const-string v0, "alarm"

    .line 211
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/high16 v1, 0x8000000

    .line 213
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->onNavigationEvent:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_1

    .line 216
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 217
    invoke-virtual {v0, v5, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    .line 219
    :cond_0
    invoke-virtual {v0, v5, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string/jumbo v0, "reschedule_needed"

    .line 82
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v1}, Lo/PlaybackStateCompat$MediaKeyAction;->extraCallback(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/utils/ForceStopRunnable;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    const-string v5, "Performing cleanup operations."

    invoke-virtual {v1, v2, v5, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 87
    :try_start_0
    invoke-direct {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->onNavigationEvent()Z

    move-result v2

    .line 1187
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 1358
    iget-object v4, v4, Lo/PlaybackStateCompat$RepeatMode;->asBinder:Lo/setSupportProgressBarVisibility;

    .line 2096
    iget-object v4, v4, Lo/setSupportProgressBarVisibility;->ICustomTabsCallback:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->newSession()Lo/attachBaseContext;

    move-result-object v4

    invoke-interface {v4, v0}, Lo/attachBaseContext;->extraCallback(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2097
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 89
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/utils/ForceStopRunnable;->extraCallback:Ljava/lang/String;

    const-string v5, "Rescheduling Workers."

    new-array v6, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5, v6}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 90
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    invoke-virtual {v2}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady()V

    .line 92
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 2358
    iget-object v2, v2, Lo/PlaybackStateCompat$RepeatMode;->asBinder:Lo/setSupportProgressBarVisibility;

    .line 3104
    new-instance v4, Lo/setHasDecor;

    invoke-direct {v4, v0, v3}, Lo/setHasDecor;-><init>(Ljava/lang/String;Z)V

    .line 3105
    iget-object v0, v2, Lo/setSupportProgressBarVisibility;->ICustomTabsCallback:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->newSession()Lo/attachBaseContext;

    move-result-object v0

    invoke-interface {v0, v4}, Lo/attachBaseContext;->onMessageChannelReady(Lo/setHasDecor;)V

    goto :goto_2

    .line 3128
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->ICustomTabsCallback:Landroid/content/Context;

    .line 3204
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3205
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 3206
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, -0x1

    const/high16 v6, 0x20000000

    .line 3196
    invoke-static {v0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3130
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 94
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/utils/ForceStopRunnable;->extraCallback:Ljava/lang/String;

    const-string v4, "Application was force-stopped, rescheduling."

    new-array v5, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 95
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    invoke-virtual {v0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady()V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 97
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/utils/ForceStopRunnable;->extraCallback:Ljava/lang/String;

    const-string v4, "Found unfinished work, scheduling it."

    new-array v5, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 98
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 3321
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 99
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 4311
    iget-object v2, v2, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 100
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 4331
    iget-object v4, v4, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage:Ljava/util/List;

    .line 98
    invoke-static {v0, v2, v4}, Lo/getIcon;->onMessageChannelReady(Lo/getActions;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 103
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    invoke-virtual {v0}, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    const-string v2, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 114
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/ForceStopRunnable;->extraCallback:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v0, v1, v3

    invoke-virtual {v4, v5, v2, v1}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
