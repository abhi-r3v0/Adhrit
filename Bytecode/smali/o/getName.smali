.class public final Lo/getName;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;
.implements Lo/ActionBarActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getName$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback$Stub:Lo/supportShouldUpRecreateTask;

.field private ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Picasso$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/PlaybackStateCompat$ShuffleMode;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:Landroidx/work/impl/WorkDatabase;

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private newSession:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:Landroid/os/PowerManager$WakeLock;

.field private onPostMessage:Landroid/content/Context;

.field private onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/PlaybackStateCompat$ShuffleMode;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lo/getActions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    .line 54
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/getActions;",
            "Lo/supportShouldUpRecreateTask;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Picasso$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lo/getName;->onPostMessage:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lo/getName;->onTransact:Lo/getActions;

    .line 81
    iput-object p3, p0, Lo/getName;->ICustomTabsCallback$Stub:Lo/supportShouldUpRecreateTask;

    .line 82
    iput-object p4, p0, Lo/getName;->asInterface:Landroidx/work/impl/WorkDatabase;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/getName;->asBinder:Ljava/util/Map;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/getName;->onRelationshipValidationResult:Ljava/util/Map;

    .line 85
    iput-object p5, p0, Lo/getName;->ICustomTabsService:Ljava/util/List;

    .line 86
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/getName;->newSession:Ljava/util/Set;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/getName;->extraCallback:Ljava/util/List;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lo/getName;->onNavigationEvent:Landroid/os/PowerManager$WakeLock;

    .line 89
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method private extraCallback()V
    .locals 6

    .line 308
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lo/getName;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 311
    invoke-static {}, Lo/newCachedSingleThreadExecutor;->extraCallback()Lo/newCachedSingleThreadExecutor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 313
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v4, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const-string v5, "No more foreground work. Stopping SystemForegroundService"

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3105
    iget-object v2, v1, Lo/newCachedSingleThreadExecutor;->onMessageChannelReady:Landroid/os/Handler;

    new-instance v3, Lo/newCachedSingleThreadExecutor$4;

    invoke-direct {v3, v1}, Lo/newCachedSingleThreadExecutor$4;-><init>(Lo/newCachedSingleThreadExecutor;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 317
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v3, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, "No more foreground work. SystemForegroundService is already stopped"

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 321
    :goto_0
    iget-object v1, p0, Lo/getName;->onNavigationEvent:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lo/getName;->onNavigationEvent:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    .line 323
    iput-object v1, p0, Lo/getName;->onNavigationEvent:Landroid/os/PowerManager$WakeLock;

    .line 326
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Lo/PlaybackStateCompat$ShuffleMode;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1}, Lo/PlaybackStateCompat$ShuffleMode;->extraCallback()V

    .line 339
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v2, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string p0, "WorkerWrapper interrupted for %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v2, p0, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v0

    .line 342
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v2, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "WorkerWrapper could not be found for %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v2, p0, v0}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 7

    .line 199
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "Processor cancelling %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 201
    iget-object v1, p0, Lo/getName;->newSession:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lo/getName;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$ShuffleMode;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Lo/getName;->asBinder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$ShuffleMode;

    .line 210
    :cond_1
    invoke-static {p1, v1}, Lo/getName;->onMessageChannelReady(Ljava/lang/String;Lo/PlaybackStateCompat$ShuffleMode;)Z

    move-result p1

    if-eqz v4, :cond_2

    .line 212
    invoke-direct {p0}, Lo/getName;->extraCallback()V

    .line 214
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit v0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;)Z
    .locals 2

    .line 233
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lo/getName;->newSession:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 235
    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Z
    .locals 6

    .line 171
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "Processor stopping foreground work %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 173
    iget-object v1, p0, Lo/getName;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$ShuffleMode;

    .line 174
    invoke-static {p1, v1}, Lo/getName;->onMessageChannelReady(Ljava/lang/String;Lo/PlaybackStateCompat$ShuffleMode;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Landroidx/work/WorkerParameters$extraCallback;)Z
    .locals 11

    .line 114
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-virtual {p0, p1}, Lo/getName;->onTransact(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object v1, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, "Work %s is already enqueued for processing"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 120
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 118
    invoke-virtual {p2, v1, p1, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 121
    monitor-exit v0

    return v3

    .line 124
    :cond_0
    new-instance v1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;

    iget-object v5, p0, Lo/getName;->onPostMessage:Landroid/content/Context;

    iget-object v6, p0, Lo/getName;->onTransact:Lo/getActions;

    iget-object v7, p0, Lo/getName;->ICustomTabsCallback$Stub:Lo/supportShouldUpRecreateTask;

    iget-object v9, p0, Lo/getName;->asInterface:Landroidx/work/impl/WorkDatabase;

    move-object v4, v1

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;-><init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Lo/ActionBarActivity;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    iget-object v4, p0, Lo/getName;->ICustomTabsService:Ljava/util/List;

    .line 1648
    iput-object v4, v1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->asBinder:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1661
    iput-object p2, v1, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onTransact:Landroidx/work/WorkerParameters$extraCallback;

    .line 1682
    :cond_1
    new-instance p2, Lo/PlaybackStateCompat$ShuffleMode;

    invoke-direct {p2, v1}, Lo/PlaybackStateCompat$ShuffleMode;-><init>(Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;)V

    .line 2128
    iget-object v1, p2, Lo/PlaybackStateCompat$ShuffleMode;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    .line 136
    new-instance v4, Lo/getName$onNavigationEvent;

    invoke-direct {v4, p0, p1, v1}, Lo/getName$onNavigationEvent;-><init>(Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;Ljava/lang/String;Lo/getBatteryLevel;)V

    iget-object v5, p0, Lo/getName;->ICustomTabsCallback$Stub:Lo/supportShouldUpRecreateTask;

    .line 138
    invoke-interface {v5}, Lo/supportShouldUpRecreateTask;->extraCallback()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 136
    invoke-interface {v1, v4, v5}, Lo/getBatteryLevel;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 139
    iget-object v1, p0, Lo/getName;->asBinder:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lo/getName;->ICustomTabsCallback$Stub:Lo/supportShouldUpRecreateTask;

    invoke-interface {v0}, Lo/supportShouldUpRecreateTask;->onMessageChannelReady()Lo/onSupportActionModeFinished;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/onSupportActionModeFinished;->execute(Ljava/lang/Runnable;)V

    .line 142
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object v0, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string p1, "%s: processing %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v0, p1, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Z
    .locals 6

    .line 185
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "Processor stopping background work %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 187
    iget-object v1, p0, Lo/getName;->asBinder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$ShuffleMode;

    .line 188
    invoke-static {p1, v1}, Lo/getName;->onMessageChannelReady(Ljava/lang/String;Lo/PlaybackStateCompat$ShuffleMode;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lo/getName;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Lo/getName;->extraCallback()V

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)V
    .locals 6

    .line 148
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "Moving WorkSpec (%s) to the foreground"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    iget-object v1, p0, Lo/getName;->asBinder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompat$ShuffleMode;

    if-eqz v1, :cond_1

    .line 153
    iget-object v2, p0, Lo/getName;->onNavigationEvent:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 154
    iget-object v2, p0, Lo/getName;->onPostMessage:Landroid/content/Context;

    const-string v3, "ProcessorForegroundLck"

    invoke-static {v2, v3}, Lo/onWindowStartingSupportActionMode;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lo/getName;->onNavigationEvent:Landroid/os/PowerManager$WakeLock;

    .line 155
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 157
    :cond_0
    iget-object v2, p0, Lo/getName;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lo/getName;->onPostMessage:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lo/newTopicsSyncExecutor;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)Landroid/content/Intent;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lo/getName;->onPostMessage:Landroid/content/Context;

    invoke-static {p2, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 161
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;Z)V
    .locals 8

    .line 296
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lo/getName;->asBinder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/getName;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "%s %s executed; reschedule = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    .line 298
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 301
    iget-object v1, p0, Lo/getName;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;

    .line 302
    invoke-interface {v2, p1, p2}, Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;->onPostMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 304
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onRelationshipValidationResult(Ljava/lang/String;)Z
    .locals 2

    .line 264
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lo/getName;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 266
    monitor-exit v0

    throw p1
.end method

.method public final onTransact(Ljava/lang/String;)Z
    .locals 2

    .line 253
    iget-object v0, p0, Lo/getName;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lo/getName;->asBinder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/getName;->onRelationshipValidationResult:Ljava/util/Map;

    .line 255
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 256
    monitor-exit v0

    throw p1
.end method
