.class final Lo/ensureBackgroundStateListenerRegistered;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lcom/google/android/gms/tasks/Task;

.field private final synthetic onPostMessage:Lo/unregister;


# direct methods
.method constructor <init>(Lo/unregister;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ensureBackgroundStateListenerRegistered;->onPostMessage:Lo/unregister;

    iput-object p2, p0, Lo/ensureBackgroundStateListenerRegistered;->onNavigationEvent:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/ensureBackgroundStateListenerRegistered;->onPostMessage:Lo/unregister;

    invoke-static {v0}, Lo/unregister;->onMessageChannelReady(Lo/unregister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/ensureBackgroundStateListenerRegistered;->onPostMessage:Lo/unregister;

    invoke-static {v1}, Lo/unregister;->ICustomTabsCallback(Lo/unregister;)Lo/addBackgroundStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lo/ensureBackgroundStateListenerRegistered;->onPostMessage:Lo/unregister;

    invoke-static {v1}, Lo/unregister;->ICustomTabsCallback(Lo/unregister;)Lo/addBackgroundStateChangeListener;

    move-result-object v1

    iget-object v2, p0, Lo/ensureBackgroundStateListenerRegistered;->onNavigationEvent:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/addBackgroundStateChangeListener;->onFailure(Ljava/lang/Exception;)V

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
