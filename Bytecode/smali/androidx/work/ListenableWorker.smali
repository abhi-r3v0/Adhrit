.class public abstract Landroidx/work/ListenableWorker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/ListenableWorker$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public volatile ICustomTabsCallback:Z

.field public ICustomTabsCallback$Stub:Z

.field public asBinder:Z

.field public onNavigationEvent:Landroidx/work/WorkerParameters;

.field public onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 88
    iput-object p1, p0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WorkerParameters is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Application Context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/getBatteryLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getBatteryLevel<",
            "Landroidx/work/ListenableWorker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end method

.method public onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public onNavigationEvent()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Landroidx/work/ListenableWorker;->asBinder:Z

    return v0
.end method

.method public onPostMessage()Lo/supportShouldUpRecreateTask;
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 1170
    iget-object v0, v0, Landroidx/work/WorkerParameters;->onPostMessage:Lo/supportShouldUpRecreateTask;

    return-object v0
.end method
