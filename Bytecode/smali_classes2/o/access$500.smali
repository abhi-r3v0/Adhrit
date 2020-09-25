.class final Lo/access$500;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/notifyOnAppDeleted;

.field private final synthetic onMessageChannelReady:Lcom/google/android/gms/tasks/Task;


# direct methods
.method constructor <init>(Lo/notifyOnAppDeleted;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    iput-object p2, p0, Lo/access$500;->onMessageChannelReady:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    invoke-static {v0}, Lo/notifyOnAppDeleted;->onNavigationEvent(Lo/notifyOnAppDeleted;)Lo/isDefaultApp;

    move-result-object v0

    iget-object v1, p0, Lo/access$500;->onMessageChannelReady:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0, v1}, Lo/isDefaultApp;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/notifyOnAppDeleted;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 15
    :cond_0
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    .line 16
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    .line 17
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/notifyBackgroundStateChangeListeners;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    invoke-static {v1}, Lo/notifyOnAppDeleted;->ICustomTabsCallback(Lo/notifyOnAppDeleted;)Lo/getProjectId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    invoke-static {v1}, Lo/notifyOnAppDeleted;->ICustomTabsCallback(Lo/notifyOnAppDeleted;)Lo/getProjectId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lo/access$500;->ICustomTabsCallback:Lo/notifyOnAppDeleted;

    invoke-static {v1}, Lo/notifyOnAppDeleted;->ICustomTabsCallback(Lo/notifyOnAppDeleted;)Lo/getProjectId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method
