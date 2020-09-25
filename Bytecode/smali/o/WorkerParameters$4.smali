.class final Lo/WorkerParameters$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WorkerParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Z

.field private synthetic extraCallback:Z

.field private synthetic onMessageChannelReady:Lo/WorkerParameters;

.field private synthetic onNavigationEvent:Lo/ConstraintTrackingWorker;


# direct methods
.method constructor <init>(Lo/WorkerParameters;ZLo/ConstraintTrackingWorker;Z)V
    .locals 0

    .line 189
    iput-object p1, p0, Lo/WorkerParameters$4;->onMessageChannelReady:Lo/WorkerParameters;

    iput-boolean p2, p0, Lo/WorkerParameters$4;->extraCallback:Z

    iput-object p3, p0, Lo/WorkerParameters$4;->onNavigationEvent:Lo/ConstraintTrackingWorker;

    iput-boolean p4, p0, Lo/WorkerParameters$4;->ICustomTabsCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lo/WorkerParameters$4;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lo/WorkerParameters$4;->onNavigationEvent:Lo/ConstraintTrackingWorker;

    iget-object v1, p0, Lo/WorkerParameters$4;->onMessageChannelReady:Lo/WorkerParameters;

    invoke-interface {v0, v1}, Lo/ConstraintTrackingWorker;->onNavigationEvent(Lo/WorkDatabase;)V

    return-void

    .line 194
    :cond_0
    iget-boolean v0, p0, Lo/WorkerParameters$4;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lo/WorkerParameters$4;->onNavigationEvent:Lo/ConstraintTrackingWorker;

    iget-object v1, p0, Lo/WorkerParameters$4;->onMessageChannelReady:Lo/WorkerParameters;

    invoke-interface {v0, v1}, Lo/ConstraintTrackingWorker;->ICustomTabsCallback(Lo/WorkDatabase;)V

    :cond_1
    return-void
.end method
