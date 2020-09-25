.class final Landroidx/work/impl/workers/ConstraintTrackingWorker$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/workers/ConstraintTrackingWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getBatteryLevel;

.field final synthetic onPostMessage:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lo/getBatteryLevel;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;->onPostMessage:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;->onMessageChannelReady:Lo/getBatteryLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 136
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;->onPostMessage:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onRelationshipValidationResult:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;->onPostMessage:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-boolean v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->onTransact:Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;->onPostMessage:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 1173
    iget-object v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    .line 1360
    new-instance v2, Landroidx/work/ListenableWorker$ICustomTabsCallback$onMessageChannelReady;

    invoke-direct {v2}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onMessageChannelReady;-><init>()V

    .line 1173
    invoke-virtual {v1, v2}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;->onPostMessage:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->asInterface:Lo/getSupportParentActivityIntent;

    iget-object v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$3;->onMessageChannelReady:Lo/getBatteryLevel;

    invoke-virtual {v1, v2}, Lo/getSupportParentActivityIntent;->extraCallback(Lo/getBatteryLevel;)Z

    .line 142
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
