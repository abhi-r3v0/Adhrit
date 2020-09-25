.class final Lo/lambda$new$0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getGaTrackingId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getGaTrackingId<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private extraCallback:Lo/notifyBackgroundStateChangeListeners;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/notifyBackgroundStateChangeListeners;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/lambda$new$0;->onNavigationEvent:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo/lambda$new$0;->onPostMessage:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lo/lambda$new$0;->extraCallback:Lo/notifyBackgroundStateChangeListeners;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/lambda$new$0;)Lo/notifyBackgroundStateChangeListeners;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/lambda$new$0;->extraCallback:Lo/notifyBackgroundStateChangeListeners;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/lambda$new$0;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/lambda$new$0;->onNavigationEvent:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 13
    iget-object v0, p0, Lo/lambda$new$0;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 14
    :try_start_0
    iput-object v1, p0, Lo/lambda$new$0;->extraCallback:Lo/notifyBackgroundStateChangeListeners;

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lo/lambda$new$0;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lo/lambda$new$0;->extraCallback:Lo/notifyBackgroundStateChangeListeners;

    if-nez v0, :cond_0

    .line 9
    monitor-exit p1

    return-void

    .line 10
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lo/lambda$new$0;->onPostMessage:Ljava/util/concurrent/Executor;

    new-instance v0, Lo/onBackgroundStateChanged;

    invoke-direct {v0, p0}, Lo/onBackgroundStateChanged;-><init>(Lo/lambda$new$0;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
