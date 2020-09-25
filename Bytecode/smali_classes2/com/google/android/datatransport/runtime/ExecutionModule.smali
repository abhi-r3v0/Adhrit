.class public abstract Lcom/google/android/datatransport/runtime/ExecutionModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation runtime Lo/mark;
    .end annotation

    .line 28
    new-instance v0, Lo/onReceive;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/onReceive;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
