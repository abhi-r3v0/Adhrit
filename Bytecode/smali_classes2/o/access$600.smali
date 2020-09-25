.class final Lo/access$600;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getAllAppNames;

.field private final synthetic onPostMessage:Lcom/google/android/gms/tasks/Task;


# direct methods
.method constructor <init>(Lo/getAllAppNames;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/access$600;->ICustomTabsCallback:Lo/getAllAppNames;

    iput-object p2, p0, Lo/access$600;->onPostMessage:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/access$600;->onPostMessage:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lo/access$600;->ICustomTabsCallback:Lo/getAllAppNames;

    invoke-static {v0}, Lo/getAllAppNames;->onPostMessage(Lo/getAllAppNames;)Lo/getProjectId;

    move-result-object v0

    invoke-virtual {v0}, Lo/getProjectId;->ICustomTabsCallback$Stub()Z

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/access$600;->ICustomTabsCallback:Lo/getAllAppNames;

    invoke-static {v0}, Lo/getAllAppNames;->ICustomTabsCallback(Lo/getAllAppNames;)Lo/isDefaultApp;

    move-result-object v0

    iget-object v1, p0, Lo/access$600;->onPostMessage:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0, v1}, Lo/isDefaultApp;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v1, p0, Lo/access$600;->ICustomTabsCallback:Lo/getAllAppNames;

    invoke-static {v1}, Lo/getAllAppNames;->onPostMessage(Lo/getAllAppNames;)Lo/getProjectId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lo/access$600;->ICustomTabsCallback:Lo/getAllAppNames;

    invoke-static {v1}, Lo/getAllAppNames;->onPostMessage(Lo/getAllAppNames;)Lo/getProjectId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lo/access$600;->ICustomTabsCallback:Lo/getAllAppNames;

    invoke-static {v1}, Lo/getAllAppNames;->onPostMessage(Lo/getAllAppNames;)Lo/getProjectId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lo/access$600;->ICustomTabsCallback:Lo/getAllAppNames;

    invoke-static {v1}, Lo/getAllAppNames;->onPostMessage(Lo/getAllAppNames;)Lo/getProjectId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method
