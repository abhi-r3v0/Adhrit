.class public final Lo/getProjectId;
.super Lcom/google/android/gms/tasks/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getProjectId$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/Task<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private volatile ICustomTabsCallback:Z

.field private extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private final onNavigationEvent:Lo/fromResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromResource<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private onPostMessage:Z

.field private onRelationshipValidationResult:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Task;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    .line 3
    new-instance v0, Lo/fromResource;

    invoke-direct {v0}, Lo/fromResource;-><init>()V

    iput-object v0, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    return-void
.end method

.method private final asBinder()V
    .locals 2

    .line 146
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    if-nez v1, :cond_0

    .line 148
    monitor-exit v0

    return-void

    .line 149
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    invoke-virtual {v0, p0}, Lo/fromResource;->extraCallback(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception v1

    .line 149
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final asInterface()V
    .locals 2

    .line 141
    iget-boolean v0, p0, Lo/getProjectId;->onPostMessage:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    return-void
.end method

.method private final onRelationshipValidationResult()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lo/getProjectId;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final onTransact()V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lo/getProjectId;->onPostMessage:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/addLifecycleEventListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    new-instance v1, Lo/ensureReceiverRegistered;

    .line 32
    invoke-static {p1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lo/ensureReceiverRegistered;-><init>(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)V

    .line 33
    invoke-virtual {v0, v1}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 34
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object p0
.end method

.method public final ICustomTabsCallback(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/isDefaultApp<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    .line 8
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lo/getProjectId;->ICustomTabsCallback:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    .line 122
    invoke-static {p1, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 125
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    .line 127
    iput-object p1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object p1, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    invoke-virtual {p1, p0}, Lo/fromResource;->extraCallback(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_0
    move-exception p1

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 133
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    .line 135
    iput-boolean v1, p0, Lo/getProjectId;->ICustomTabsCallback:Z

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v0, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    invoke-virtual {v0, p0}, Lo/fromResource;->extraCallback(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_0
    move-exception v1

    .line 136
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final extraCallback(Landroid/app/Activity;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/addBackgroundStateChangeListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lo/unregister;

    sget-object v1, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 49
    invoke-static {v1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/unregister;-><init>(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)V

    .line 50
    iget-object p2, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    invoke-virtual {p2, v0}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 51
    invoke-static {p1}, Lo/getProjectId$onPostMessage;->onPostMessage(Landroid/app/Activity;)Lo/getProjectId$onPostMessage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/getProjectId$onPostMessage;->onMessageChannelReady(Lo/getGaTrackingId;)V

    .line 52
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object p0
.end method

.method public final extraCallback(Landroid/app/Activity;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/addLifecycleEventListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lo/ensureReceiverRegistered;

    sget-object v1, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 37
    invoke-static {v1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/ensureReceiverRegistered;-><init>(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)V

    .line 38
    iget-object p2, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    invoke-virtual {p2, v0}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 39
    invoke-static {p1}, Lo/getProjectId$onPostMessage;->onPostMessage(Landroid/app/Activity;)Lo/getProjectId$onPostMessage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/getProjectId$onPostMessage;->onMessageChannelReady(Lo/getGaTrackingId;)V

    .line 40
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object p0
.end method

.method public final extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lo/isDefaultApp<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 87
    iget-object v1, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    new-instance v2, Lo/notifyOnAppDeleted;

    .line 88
    invoke-static {p1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v2, p1, p2, v0}, Lo/notifyOnAppDeleted;-><init>(Ljava/util/concurrent/Executor;Lo/isDefaultApp;Lo/getProjectId;)V

    .line 89
    invoke-virtual {v1, v2}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 90
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object v0
.end method

.method public final extraCallback(Ljava/util/concurrent/Executor;Lo/notifyBackgroundStateChangeListeners;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/notifyBackgroundStateChangeListeners;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    new-instance v1, Lo/lambda$new$0;

    .line 76
    invoke-static {p1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lo/lambda$new$0;-><init>(Ljava/util/concurrent/Executor;Lo/notifyBackgroundStateChangeListeners;)V

    .line 77
    invoke-virtual {v0, v1}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 78
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object p0
.end method

.method public final extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addLifecycleEventListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-direct {p0}, Lo/getProjectId;->onTransact()V

    .line 13
    invoke-direct {p0}, Lo/getProjectId;->onRelationshipValidationResult()V

    .line 14
    iget-object v1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lo/getProjectId;->extraCallback:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 15
    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v2, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    new-instance v1, Lo/onDeleted;

    .line 56
    invoke-static {p1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lo/onDeleted;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 57
    invoke-virtual {v0, v1}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 58
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/addBackgroundStateChangeListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    new-instance v1, Lo/unregister;

    .line 44
    invoke-static {p1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lo/unregister;-><init>(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)V

    .line 45
    invoke-virtual {v0, v1}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 46
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addBackgroundStateChangeListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 4
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getPersistenceKey<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 93
    iget-object v1, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    new-instance v2, Lo/getApplicationId;

    .line 94
    invoke-static {p1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v2, p1, p2, v0}, Lo/getApplicationId;-><init>(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;Lo/getProjectId;)V

    .line 95
    invoke-virtual {v1, v2}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 96
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Exception;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    invoke-direct {p0}, Lo/getProjectId;->onTransact()V

    .line 20
    invoke-direct {p0}, Lo/getProjectId;->onRelationshipValidationResult()V

    .line 21
    iget-object v1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    iget-object p1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lo/getProjectId;->extraCallback:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    .line 24
    :cond_0
    new-instance p1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    invoke-direct {p1, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 22
    :cond_1
    iget-object v1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 114
    invoke-static {p1, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    invoke-direct {p0}, Lo/getProjectId;->asInterface()V

    const/4 v1, 0x1

    .line 117
    iput-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    .line 118
    iput-object p1, p0, Lo/getProjectId;->onRelationshipValidationResult:Ljava/lang/Exception;

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object p1, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    invoke-virtual {p1, p0}, Lo/fromResource;->extraCallback(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p1

    .line 119
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 108
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    .line 110
    iput-object p1, p0, Lo/getProjectId;->extraCallback:Ljava/lang/Object;

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    invoke-virtual {p1, p0}, Lo/fromResource;->extraCallback(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onPostMessage(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lo/isDefaultApp<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 68
    iget-object v1, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    new-instance v2, Lo/getAllAppNames;

    .line 69
    invoke-static {p1}, Lo/getGcmSenderId;->onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v2, p1, p2, v0}, Lo/getAllAppNames;-><init>(Ljava/util/concurrent/Executor;Lo/isDefaultApp;Lo/getProjectId;)V

    .line 70
    invoke-virtual {v1, v2}, Lo/fromResource;->onNavigationEvent(Lo/getGaTrackingId;)V

    .line 71
    invoke-direct {p0}, Lo/getProjectId;->asBinder()V

    return-object v0
.end method

.method public final onPostMessage(Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getPersistenceKey<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 98
    sget-object v0, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/isDefaultApp<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/getProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-direct {p0}, Lo/getProjectId;->asInterface()V

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lo/getProjectId;->onPostMessage:Z

    .line 102
    iput-object p1, p0, Lo/getProjectId;->extraCallback:Ljava/lang/Object;

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object p1, p0, Lo/getProjectId;->onNavigationEvent:Lo/fromResource;

    invoke-virtual {p1, p0}, Lo/fromResource;->extraCallback(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lo/getProjectId;->ICustomTabsCallback:Z

    return v0
.end method
