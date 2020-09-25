.class Lo/SessionReportingCoordinator$2;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SessionReportingCoordinator;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/SessionReportingCoordinator;


# direct methods
.method constructor <init>(Lo/SessionReportingCoordinator;ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lo/SessionReportingCoordinator$2;->this$0:Lo/SessionReportingCoordinator;

    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_0

    .line 73
    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Ljava/util/concurrent/Future;

    .line 77
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :catch_2
    nop

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 89
    iget-object p1, p0, Lo/SessionReportingCoordinator$2;->this$0:Lo/SessionReportingCoordinator;

    invoke-virtual {p1, p2}, Lo/SessionReportingCoordinator;->handleException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
