.class public Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/ListenableWorker;
.source ""

# interfaces
.implements Lo/loadsAllData$onPostMessage;


# static fields
.field static final extraCallback:Ljava/lang/String;


# instance fields
.field asInterface:Lo/getSupportParentActivityIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSupportParentActivityIntent<",
            "Landroidx/work/ListenableWorker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field newSession:Landroidx/work/ListenableWorker;

.field onMessageChannelReady:Landroidx/work/WorkerParameters;

.field final onRelationshipValidationResult:Ljava/lang/Object;

.field volatile onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintTrkngWrkr"

    .line 52
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 73
    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onMessageChannelReady:Landroidx/work/WorkerParameters;

    .line 74
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onRelationshipValidationResult:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onTransact:Z

    .line 76
    invoke-static {}, Lo/getSupportParentActivityIntent;->onNavigationEvent()Lo/getSupportParentActivityIntent;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getBatteryLevel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getBatteryLevel<",
            "Landroidx/work/ListenableWorker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 1300
    iget-object v0, p0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 2162
    iget-object v0, v0, Landroidx/work/WorkerParameters;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 82
    new-instance v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$5;

    invoke-direct {v1, p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker$5;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onMessageChannelReady()V

    .line 179
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->newSession:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2247
    iput-boolean v1, v0, Landroidx/work/ListenableWorker;->ICustomTabsCallback:Z

    .line 2248
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Constraints changed for %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 234
    iget-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onRelationshipValidationResult:Ljava/lang/Object;

    monitor-enter p1

    .line 235
    :try_start_0
    iput-boolean v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onTransact:Z

    .line 236
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->newSession:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Lo/supportShouldUpRecreateTask;
    .locals 1

    .line 3098
    iget-object v0, p0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    .line 210
    invoke-static {v0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v0

    .line 3349
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    return-object v0
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
