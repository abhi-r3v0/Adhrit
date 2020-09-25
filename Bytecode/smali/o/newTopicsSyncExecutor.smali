.class public final Lo/newTopicsSyncExecutor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/loadsAllData$onPostMessage;
.implements Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/newTopicsSyncExecutor$onPostMessage;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/lang/String;


# instance fields
.field final ICustomTabsCallback$Stub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation
.end field

.field final asInterface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

.field private getInterfaceDescriptor:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/lang/Object;

.field onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

.field final onPostMessage:Lo/supportShouldUpRecreateTask;

.field onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

.field final onTransact:Lo/getLifecycle;

.field private warmup:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    .line 62
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/newTopicsSyncExecutor;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lo/newTopicsSyncExecutor;->warmup:Landroid/content/Context;

    .line 106
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/newTopicsSyncExecutor;->onMessageChannelReady:Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lo/newTopicsSyncExecutor;->warmup:Landroid/content/Context;

    invoke-static {p1}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object p1

    iput-object p1, p0, Lo/newTopicsSyncExecutor;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 1349
    iget-object p1, p1, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    .line 108
    iput-object p1, p0, Lo/newTopicsSyncExecutor;->onPostMessage:Lo/supportShouldUpRecreateTask;

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lo/newTopicsSyncExecutor;->getInterfaceDescriptor:Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lo/newTopicsSyncExecutor;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    .line 111
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lo/newTopicsSyncExecutor;->ICustomTabsCallback$Stub:Ljava/util/Map;

    .line 112
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/newTopicsSyncExecutor;->asInterface:Ljava/util/Set;

    .line 113
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/newTopicsSyncExecutor;->asBinder:Ljava/util/Map;

    .line 114
    new-instance p1, Lo/getLifecycle;

    iget-object v0, p0, Lo/newTopicsSyncExecutor;->warmup:Landroid/content/Context;

    iget-object v1, p0, Lo/newTopicsSyncExecutor;->onPostMessage:Lo/supportShouldUpRecreateTask;

    invoke-direct {p1, v0, v1, p0}, Lo/getLifecycle;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;Lo/loadsAllData$onPostMessage;)V

    iput-object p1, p0, Lo/newTopicsSyncExecutor;->onTransact:Lo/getLifecycle;

    .line 115
    iget-object p1, p0, Lo/newTopicsSyncExecutor;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 2340
    iget-object p1, p1, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 3275
    iget-object v0, p1, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 3276
    :try_start_0
    iget-object p1, p1, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)Landroid/content/Intent;
    .locals 2

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/newCachedSingleThreadExecutor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    .line 387
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11072
    iget p0, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    const-string v1, "KEY_NOTIFICATION_ID"

    .line 388
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11079
    iget p0, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    const-string v1, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 389
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11087
    iget-object p0, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    const-string p2, "KEY_NOTIFICATION"

    .line 390
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 391
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static onPostMessage(Landroid/content/Context;Ljava/lang/String;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)Landroid/content/Intent;
    .locals 3

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/newCachedSingleThreadExecutor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    .line 343
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 344
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10072
    iget v1, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    const-string v2, "KEY_NOTIFICATION_ID"

    .line 345
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10079
    iget v1, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 346
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10087
    iget-object p2, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    const-string v1, "KEY_NOTIFICATION"

    .line 347
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    .line 217
    iget-object v0, p0, Lo/newTopicsSyncExecutor;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lo/newTopicsSyncExecutor;->onTransact:Lo/getLifecycle;

    invoke-virtual {v1}, Lo/getLifecycle;->onNavigationEvent()V

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    iget-object v0, p0, Lo/newTopicsSyncExecutor;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 6340
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 7286
    iget-object v1, v0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1

    .line 7287
    :try_start_1
    iget-object v0, v0, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7288
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v1

    .line 219
    monitor-exit v0

    throw v1
.end method

.method final ICustomTabsCallback(Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "KEY_NOTIFICATION_ID"

    .line 247
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 248
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    .line 249
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_NOTIFICATION"

    .line 250
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 251
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Lo/newTopicsSyncExecutor;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "Notifying with (id: %s, workSpecId: %s, notificationType: %s)"

    .line 252
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Throwable;

    .line 251
    invoke-virtual {v4, v5, v6, v7}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    if-eqz p1, :cond_2

    .line 255
    iget-object v4, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    if-eqz v4, :cond_2

    .line 257
    new-instance v4, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    invoke-direct {v4, v1, p1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;-><init>(ILandroid/app/Notification;I)V

    .line 260
    iget-object v5, p0, Lo/newTopicsSyncExecutor;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v4, p0, Lo/newTopicsSyncExecutor;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iput-object v3, p0, Lo/newTopicsSyncExecutor;->getInterfaceDescriptor:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    invoke-interface {v0, v1, v2, p1}, Lo/newTopicsSyncExecutor$onPostMessage;->ICustomTabsCallback(IILandroid/app/Notification;)V

    return-void

    .line 267
    :cond_0
    iget-object v3, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    invoke-interface {v3, v1, p1}, Lo/newTopicsSyncExecutor$onPostMessage;->extraCallback(ILandroid/app/Notification;)V

    if-eqz v2, :cond_2

    .line 270
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_2

    .line 273
    iget-object p1, p0, Lo/newTopicsSyncExecutor;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    .line 8079
    iget v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    or-int/2addr v0, v1

    goto :goto_0

    .line 277
    :cond_1
    iget-object p1, p0, Lo/newTopicsSyncExecutor;->ICustomTabsCallback$Stub:Ljava/util/Map;

    iget-object v1, p0, Lo/newTopicsSyncExecutor;->getInterfaceDescriptor:Ljava/lang/String;

    .line 278
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    if-eqz p1, :cond_2

    .line 280
    iget-object v1, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    .line 9072
    iget v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    .line 9087
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    .line 280
    invoke-interface {v1, v2, v0, p1}, Lo/newTopicsSyncExecutor$onPostMessage;->ICustomTabsCallback(IILandroid/app/Notification;)V

    :cond_2
    return-void
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/newTopicsSyncExecutor;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v6, "Constraints unmet for WorkSpec %s"

    .line 323
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Throwable;

    .line 322
    invoke-virtual {v1, v2, v4, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 324
    iget-object v1, p0, Lo/newTopicsSyncExecutor;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 9639
    iget-object v2, v1, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    new-instance v4, Lo/setSupportProgressBarIndeterminateVisibility;

    invoke-direct {v4, v1, v0, v3}, Lo/setSupportProgressBarIndeterminateVisibility;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V

    invoke-interface {v2, v4}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Z)V
    .locals 3

    .line 140
    iget-object p2, p0, Lo/newTopicsSyncExecutor;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter p2

    .line 141
    :try_start_0
    iget-object v0, p0, Lo/newTopicsSyncExecutor;->asBinder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDestroy;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lo/newTopicsSyncExecutor;->asInterface:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lo/newTopicsSyncExecutor;->onTransact:Lo/getLifecycle;

    iget-object v1, p0, Lo/newTopicsSyncExecutor;->asInterface:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lo/getLifecycle;->onPostMessage(Ljava/lang/Iterable;)V

    .line 149
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object p2, p0, Lo/newTopicsSyncExecutor;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    iput-object p2, p0, Lo/newTopicsSyncExecutor;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    .line 153
    iget-object p2, p0, Lo/newTopicsSyncExecutor;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 154
    iget-object p1, p0, Lo/newTopicsSyncExecutor;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 159
    iget-object p1, p0, Lo/newTopicsSyncExecutor;->ICustomTabsCallback$Stub:Ljava/util/Map;

    .line 160
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 163
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    goto :goto_1

    .line 167
    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/newTopicsSyncExecutor;->getInterfaceDescriptor:Ljava/lang/String;

    .line 168
    iget-object p1, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    if-eqz p1, :cond_3

    .line 169
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    .line 170
    iget-object p2, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    .line 4072
    iget v0, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    .line 4079
    iget v1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->ICustomTabsCallback:I

    .line 4087
    iget-object v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onMessageChannelReady:Landroid/app/Notification;

    .line 170
    invoke-interface {p2, v0, v1, v2}, Lo/newTopicsSyncExecutor$onPostMessage;->ICustomTabsCallback(IILandroid/app/Notification;)V

    .line 178
    iget-object p2, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    .line 5072
    iget p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    .line 178
    invoke-interface {p2, p1}, Lo/newTopicsSyncExecutor$onPostMessage;->onNavigationEvent(I)V

    :cond_3
    return-void

    .line 181
    :cond_4
    iget-object p1, p0, Lo/newTopicsSyncExecutor;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    if-eqz p2, :cond_5

    .line 6072
    iget p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onNavigationEvent:I

    .line 183
    invoke-interface {p2, p1}, Lo/newTopicsSyncExecutor$onPostMessage;->onNavigationEvent(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 149
    monitor-exit p2

    throw p1
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
