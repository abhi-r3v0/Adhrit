.class public Landroidx/work/impl/workers/CombineContinuationsWorker;
.super Landroidx/work/Worker;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Landroidx/work/ListenableWorker$ICustomTabsCallback;
    .locals 2

    .line 1118
    iget-object v0, p0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 2098
    iget-object v0, v0, Landroidx/work/WorkerParameters;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    .line 2348
    new-instance v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v1, v0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>(Lo/PlaybackStateCompat$Builder;)V

    return-object v1
.end method
