.class public Lo/supportInvalidateOptionsMenu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final onMessageChannelReady:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/supportInvalidateOptionsMenu;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    return-void
.end method

.method public static onNavigationEvent(Landroid/content/Context;Lo/MediaControllerCompatApi21$Callback;)V
    .locals 8

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const/4 v1, 0x0

    const-string v2, "androidx.work.util.id"

    .line 120
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "next_job_scheduler_id"

    .line 123
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 126
    :cond_1
    :goto_0
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "next_alarm_manager_id"

    .line 127
    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 129
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 v6, 0x2

    :try_start_0
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v1

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    .line 131
    invoke-interface {p1, v0, v7}, Lo/MediaControllerCompatApi21$Callback;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v4, v2, v1

    .line 135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 134
    invoke-interface {p1, v0, v2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 138
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 139
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    .line 144
    throw p0
.end method

.method private onPostMessage(Ljava/lang/String;)I
    .locals 6

    .line 89
    iget-object v0, p0, Lo/supportInvalidateOptionsMenu;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    .line 1351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 1353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lo/supportInvalidateOptionsMenu;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->newSession()Lo/attachBaseContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/attachBaseContext;->extraCallback(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 2104
    :goto_1
    iget-object v2, p0, Lo/supportInvalidateOptionsMenu;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->newSession()Lo/attachBaseContext;

    move-result-object v2

    new-instance v3, Lo/setHasDecor;

    int-to-long v4, v1

    invoke-direct {v3, p1, v4, v5}, Lo/setHasDecor;-><init>(Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Lo/attachBaseContext;->onMessageChannelReady(Lo/setHasDecor;)V

    .line 95
    iget-object p1, p0, Lo/supportInvalidateOptionsMenu;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    .line 2395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object p1, p0, Lo/supportInvalidateOptionsMenu;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/supportInvalidateOptionsMenu;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 99
    throw p1
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 76
    const-class v0, Lo/supportInvalidateOptionsMenu;

    monitor-enter v0

    :try_start_0
    const-string v1, "next_alarm_manager_id"

    .line 77
    invoke-direct {p0, v1}, Lo/supportInvalidateOptionsMenu;->onPostMessage(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(II)I
    .locals 6

    .line 61
    const-class v0, Lo/supportInvalidateOptionsMenu;

    monitor-enter v0

    :try_start_0
    const-string v1, "next_job_scheduler_id"

    .line 62
    invoke-direct {p0, v1}, Lo/supportInvalidateOptionsMenu;->onPostMessage(Ljava/lang/String;)I

    move-result v1

    if-lt v1, p1, :cond_1

    if-le v1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "next_job_scheduler_id"

    add-int/lit8 v1, p1, 0x1

    .line 1104
    iget-object v2, p0, Lo/supportInvalidateOptionsMenu;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->newSession()Lo/attachBaseContext;

    move-result-object v2

    new-instance v3, Lo/setHasDecor;

    int-to-long v4, v1

    invoke-direct {v3, p2, v4, v5}, Lo/setHasDecor;-><init>(Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Lo/attachBaseContext;->onMessageChannelReady(Lo/setHasDecor;)V

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v0

    throw p1
.end method
