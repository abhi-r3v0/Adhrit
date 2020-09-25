.class public final Lo/getIcon;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Schedulers"

    .line 50
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getIcon;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method private static onMessageChannelReady(Landroid/content/Context;)Lcom/squareup/picasso/Picasso$ICustomTabsCallback;
    .locals 7

    const-string v0, "androidx.work.impl.background.gcm.GcmScheduler"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    .line 149
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    .line 151
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v4, Lo/getIcon;->onMessageChannelReady:Ljava/lang/String;

    const-string v5, "Created %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v0, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 154
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/getIcon;->onMessageChannelReady:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object p0, v1, v2

    const-string p0, "Unable to create GCM Scheduler"

    invoke-virtual {v0, v3, p0, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/getActions;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getActions;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Picasso$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 62
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v0

    .line 1351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 1353
    iget-object v2, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v2, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 2216
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 2217
    iget p0, p0, Lo/getActions;->asInterface:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 2219
    :cond_1
    iget p0, p0, Lo/getActions;->asInterface:I

    .line 73
    :goto_0
    invoke-interface {v0, p0}, Lo/onPostResume;->onPostMessage(I)Ljava/util/List;

    move-result-object p0

    .line 77
    invoke-interface {v0}, Lo/onPostResume;->onNavigationEvent()Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/onDestroy;

    .line 87
    iget-object v5, v5, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {v0, v5, v2, v3}, Lo/onPostResume;->onNavigationEvent(Ljava/lang/String;J)I

    goto :goto_1

    .line 2395
    :cond_2
    iget-object v0, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    invoke-interface {v0}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 96
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lo/onDestroy;

    .line 101
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lo/onDestroy;

    .line 104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    .line 105
    invoke-interface {v0}, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-interface {v0, p0}, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;->onMessageChannelReady([Lo/onDestroy;)V

    goto :goto_2

    .line 111
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lo/onDestroy;

    .line 113
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lo/onDestroy;

    .line 115
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    .line 116
    invoke-interface {p2}, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_5

    .line 117
    invoke-interface {p2, p0}, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;->onMessageChannelReady([Lo/onDestroy;)V

    goto :goto_3

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 92
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 93
    throw p0

    :cond_7
    :goto_4
    return-void
.end method

.method static onPostMessage(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;)Lcom/squareup/picasso/Picasso$ICustomTabsCallback;
    .locals 4

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 131
    new-instance v0, Lo/onRetainNonConfigurationInstance;

    invoke-direct {v0, p0, p1}, Lo/onRetainNonConfigurationInstance;-><init>(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;)V

    .line 132
    const-class p1, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {p0, p1, v2}, Lo/onTitleChanged;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 133
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p0

    sget-object p1, Lo/getIcon;->onMessageChannelReady:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {p0, p1, v2, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p0}, Lo/getIcon;->onMessageChannelReady(Landroid/content/Context;)Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lo/IResultReceiver$Stub;

    invoke-direct {v0, p0}, Lo/IResultReceiver$Stub;-><init>(Landroid/content/Context;)V

    .line 138
    const-class p1, Lo/ResultReceiver$MyRunnable;

    invoke-static {p0, p1, v2}, Lo/onTitleChanged;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 139
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p0

    sget-object p1, Lo/getIcon;->onMessageChannelReady:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Created SystemAlarmScheduler"

    invoke-virtual {p0, p1, v2, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method
