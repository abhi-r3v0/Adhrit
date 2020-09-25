.class final Landroidx/work/CoroutineWorker$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/work/CoroutineWorker;


# direct methods
.method constructor <init>(Landroidx/work/CoroutineWorker;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/CoroutineWorker$4;->ICustomTabsCallback:Landroidx/work/CoroutineWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 48
    iget-object v0, p0, Landroidx/work/CoroutineWorker$4;->ICustomTabsCallback:Landroidx/work/CoroutineWorker;

    .line 1043
    iget-object v0, v0, Landroidx/work/CoroutineWorker;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    .line 48
    invoke-virtual {v0}, Lo/onCreateSupportNavigateUpTaskStack;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroidx/work/CoroutineWorker$4;->ICustomTabsCallback:Landroidx/work/CoroutineWorker;

    .line 2042
    iget-object v0, v0, Landroidx/work/CoroutineWorker;->extraCallback:Lo/layerTree;

    const/4 v1, 0x0

    .line 2192
    invoke-interface {v0, v1}, Lo/assertValidTrackedQuery;->onNavigationEvent(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method
