.class public abstract Landroidx/work/Worker;
.super Landroidx/work/ListenableWorker;
.source ""


# instance fields
.field onMessageChannelReady:Lo/getSupportParentActivityIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSupportParentActivityIntent<",
            "Landroidx/work/ListenableWorker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

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

    .line 80
    invoke-static {}, Lo/getSupportParentActivityIntent;->onNavigationEvent()Lo/getSupportParentActivityIntent;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Worker;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    .line 1300
    iget-object v0, p0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 2162
    iget-object v0, v0, Landroidx/work/WorkerParameters;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 81
    new-instance v1, Landroidx/work/Worker$5;

    invoke-direct {v1, p0}, Landroidx/work/Worker$5;-><init>(Landroidx/work/Worker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Landroidx/work/Worker;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    return-object v0
.end method

.method public abstract extraCallback()Landroidx/work/ListenableWorker$ICustomTabsCallback;
.end method
