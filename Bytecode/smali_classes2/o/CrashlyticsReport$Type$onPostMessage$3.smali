.class final Lo/CrashlyticsReport$Type$onPostMessage$3;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsReport$Type$onPostMessage;-><init>(Lo/CrashlyticsReport$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/CrashlyticsReport$Type$onPostMessage;

.field final synthetic val$this$0:Lo/CrashlyticsReport$Type;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Type$onPostMessage;ILjava/util/concurrent/ThreadFactory;Lo/CrashlyticsReport$Type;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lo/CrashlyticsReport$Type$onPostMessage$3;->this$1:Lo/CrashlyticsReport$Type$onPostMessage;

    iput-object p4, p0, Lo/CrashlyticsReport$Type$onPostMessage$3;->val$this$0:Lo/CrashlyticsReport$Type;

    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 253
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_0

    .line 254
    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 255
    check-cast p1, Ljava/util/concurrent/Future;

    .line 258
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :catch_2
    nop

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 270
    iget-object p1, p0, Lo/CrashlyticsReport$Type$onPostMessage$3;->this$1:Lo/CrashlyticsReport$Type$onPostMessage;

    iget-object p1, p1, Lo/CrashlyticsReport$Type$onPostMessage;->this$0:Lo/CrashlyticsReport$Type;

    invoke-virtual {p1, p2}, Lo/CrashlyticsReport$Type;->panic(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
