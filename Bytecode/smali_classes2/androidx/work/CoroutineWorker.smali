.class public abstract Landroidx/work/CoroutineWorker;
.super Landroidx/work/ListenableWorker;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u0016\u001a\u00020\u000fH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0019J\u0019\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000f0#R\u001c\u0010\u0007\u001a\u00020\u00088\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/work/CoroutineWorker;",
        "Landroidx/work/ListenableWorker;",
        "appContext",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "coroutineContext",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineContext$annotations",
        "()V",
        "getCoroutineContext",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "future",
        "Landroidx/work/impl/utils/futures/SettableFuture;",
        "Landroidx/work/ListenableWorker$Result;",
        "getFuture$work_runtime_ktx_release",
        "()Landroidx/work/impl/utils/futures/SettableFuture;",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "getJob$work_runtime_ktx_release",
        "()Lkotlinx/coroutines/CompletableJob;",
        "doWork",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onStopped",
        "",
        "setForeground",
        "foregroundInfo",
        "Landroidx/work/ForegroundInfo;",
        "(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setProgress",
        "data",
        "Landroidx/work/Data;",
        "(Landroidx/work/Data;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startWork",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "work-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final asInterface:Lo/zombifyForRemove;

.field final extraCallback:Lo/layerTree;

.field final onMessageChannelReady:Lo/getSupportParentActivityIntent;
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
    .locals 2

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2389
    new-instance p1, Lo/normalizeQuery;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/normalizeQuery;-><init>(Lo/assertValidTrackedQuery;)V

    check-cast p1, Lo/layerTree;

    .line 42
    iput-object p1, p0, Landroidx/work/CoroutineWorker;->extraCallback:Lo/layerTree;

    .line 43
    invoke-static {}, Lo/getSupportParentActivityIntent;->onNavigationEvent()Lo/getSupportParentActivityIntent;

    move-result-object p1

    const-string p2, "SettableFuture.create()"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    .line 47
    new-instance p2, Landroidx/work/CoroutineWorker$4;

    invoke-direct {p2, p0}, Landroidx/work/CoroutineWorker$4;-><init>(Landroidx/work/CoroutineWorker;)V

    check-cast p2, Ljava/lang/Runnable;

    .line 52
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->onPostMessage()Lo/supportShouldUpRecreateTask;

    move-result-object v0

    const-string v1, "taskExecutor"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/supportShouldUpRecreateTask;->onMessageChannelReady()Lo/onSupportActionModeFinished;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 46
    invoke-virtual {p1, p2, v0}, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 60
    invoke-static {}, Lo/setTrackedQueryKeys;->extraCallback()Lo/zombifyForRemove;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->asInterface:Lo/zombifyForRemove;

    return-void
.end method
