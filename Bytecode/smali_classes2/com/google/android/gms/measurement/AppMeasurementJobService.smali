.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;
.source ""

# interfaces
.implements Lo/setPressable;


# instance fields
.field private onNavigationEvent:Lo/FloatingActionButton$Behavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FloatingActionButton$Behavior<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 1

    .line 6
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 1001
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    if-nez v0, :cond_0

    .line 1002
    new-instance v0, Lo/FloatingActionButton$Behavior;

    invoke-direct {v0, p0}, Lo/FloatingActionButton$Behavior;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 7
    invoke-virtual {v0}, Lo/FloatingActionButton$Behavior;->onMessageChannelReady()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 2001
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    if-nez v0, :cond_0

    .line 2002
    new-instance v0, Lo/FloatingActionButton$Behavior;

    invoke-direct {v0, p0}, Lo/FloatingActionButton$Behavior;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 9
    invoke-virtual {v0}, Lo/FloatingActionButton$Behavior;->extraCallback()V

    .line 10
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public final onMessageChannelReady(I)Z
    .locals 0

    .line 17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onNavigationEvent(Landroid/app/job/JobParameters;Z)V
    .locals 0

    const/4 p2, 0x0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final onPostMessage(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 5001
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    if-nez v0, :cond_0

    .line 5002
    new-instance v0, Lo/FloatingActionButton$Behavior;

    invoke-direct {v0, p0}, Lo/FloatingActionButton$Behavior;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 5003
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 15
    invoke-virtual {v0, p1}, Lo/FloatingActionButton$Behavior;->onMessageChannelReady(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 3001
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    if-nez v0, :cond_0

    .line 3002
    new-instance v0, Lo/FloatingActionButton$Behavior;

    invoke-direct {v0, p0}, Lo/FloatingActionButton$Behavior;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 3003
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 12
    invoke-virtual {v0, p1}, Lo/FloatingActionButton$Behavior;->extraCallback(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 4001
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    if-nez v0, :cond_0

    .line 4002
    new-instance v0, Lo/FloatingActionButton$Behavior;

    invoke-direct {v0, p0}, Lo/FloatingActionButton$Behavior;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 4003
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->onNavigationEvent:Lo/FloatingActionButton$Behavior;

    .line 14
    invoke-virtual {v0, p1}, Lo/FloatingActionButton$Behavior;->extraCallback(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
