.class final Lo/onDeleted;
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
.field private final extraCallback:Ljava/lang/Object;

.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private onNavigationEvent:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/onDeleted;->extraCallback:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo/onDeleted;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lo/onDeleted;->onNavigationEvent:Lcom/google/android/gms/tasks/OnCompleteListener;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/onDeleted;)Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/onDeleted;->onNavigationEvent:Lcom/google/android/gms/tasks/OnCompleteListener;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/onDeleted;)Ljava/lang/Object;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/onDeleted;->extraCallback:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 12
    iget-object v0, p0, Lo/onDeleted;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 13
    :try_start_0
    iput-object v1, p0, Lo/onDeleted;->onNavigationEvent:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 14
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/onDeleted;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lo/onDeleted;->onNavigationEvent:Lcom/google/android/gms/tasks/OnCompleteListener;

    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Lo/onDeleted;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/access$400;

    invoke-direct {v1, p0, p1}, Lo/access$400;-><init>(Lo/onDeleted;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
