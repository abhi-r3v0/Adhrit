.class final Lo/access$400;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lcom/google/android/gms/tasks/Task;

.field private final synthetic onPostMessage:Lo/onDeleted;


# direct methods
.method constructor <init>(Lo/onDeleted;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/access$400;->onPostMessage:Lo/onDeleted;

    iput-object p2, p0, Lo/access$400;->onNavigationEvent:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/access$400;->onPostMessage:Lo/onDeleted;

    invoke-static {v0}, Lo/onDeleted;->onMessageChannelReady(Lo/onDeleted;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/access$400;->onPostMessage:Lo/onDeleted;

    invoke-static {v1}, Lo/onDeleted;->ICustomTabsCallback(Lo/onDeleted;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lo/access$400;->onPostMessage:Lo/onDeleted;

    invoke-static {v1}, Lo/onDeleted;->ICustomTabsCallback(Lo/onDeleted;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lo/access$400;->onNavigationEvent:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
