.class public final Lo/getSignal;
.super Lo/setThreads;
.source ""


# instance fields
.field private final indexManager:Lo/setExecution;

.field private final mutationQueues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_FilesPayload$1;",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;",
            ">;"
        }
    .end annotation
.end field

.field private referenceDelegate:Lo/setException;

.field private final remoteDocumentCache:Lo/getThreads;

.field private started:Z

.field private final targetCache:Lo/setUiOrientation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lo/setThreads;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getSignal;->mutationQueues:Ljava/util/Map;

    .line 59
    new-instance v0, Lo/setExecution;

    invoke-direct {v0}, Lo/setExecution;-><init>()V

    iput-object v0, p0, Lo/getSignal;->indexManager:Lo/setExecution;

    .line 60
    new-instance v0, Lo/setUiOrientation;

    invoke-direct {v0, p0}, Lo/setUiOrientation;-><init>(Lo/getSignal;)V

    iput-object v0, p0, Lo/getSignal;->targetCache:Lo/setUiOrientation;

    .line 61
    new-instance v0, Lo/getThreads;

    invoke-direct {v0, p0}, Lo/getThreads;-><init>(Lo/getSignal;)V

    iput-object v0, p0, Lo/getSignal;->remoteDocumentCache:Lo/getThreads;

    return-void
.end method

.method public static createEagerGcMemoryPersistence()Lo/getSignal;
    .locals 2

    .line 43
    new-instance v0, Lo/getSignal;

    invoke-direct {v0}, Lo/getSignal;-><init>()V

    .line 44
    new-instance v1, Lo/getUiOrientation;

    invoke-direct {v1, v0}, Lo/getUiOrientation;-><init>(Lo/getSignal;)V

    invoke-direct {v0, v1}, Lo/getSignal;->setReferenceDelegate(Lo/setException;)V

    return-object v0
.end method

.method public static createLruGcMemoryPersistence(Lo/getExecution$onMessageChannelReady;Lo/setDiskSpace;)Lo/getSignal;
    .locals 2

    .line 50
    new-instance v0, Lo/getSignal;

    invoke-direct {v0}, Lo/getSignal;-><init>()V

    .line 51
    new-instance v1, Lo/getCustomAttributes;

    invoke-direct {v1, v0, p0, p1}, Lo/getCustomAttributes;-><init>(Lo/getSignal;Lo/getExecution$onMessageChannelReady;Lo/setDiskSpace;)V

    invoke-direct {v0, v1}, Lo/getSignal;->setReferenceDelegate(Lo/setException;)V

    return-object v0
.end method

.method private setReferenceDelegate(Lo/setException;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lo/getSignal;->referenceDelegate:Lo/setException;

    return-void
.end method


# virtual methods
.method final getIndexManager()Lo/setArch;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/getSignal;->indexManager:Lo/setExecution;

    return-object v0
.end method

.method final getMutationQueue(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Lo/setCustomAttributes;
    .locals 2

    .line 94
    iget-object v0, p0, Lo/getSignal;->mutationQueues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;-><init>(Lo/getSignal;)V

    .line 97
    iget-object v1, p0, Lo/getSignal;->mutationQueues:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method final getMutationQueues()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lo/getSignal;->mutationQueues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final getReferenceDelegate()Lo/setException;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/getSignal;->referenceDelegate:Lo/setException;

    return-object v0
.end method

.method final bridge synthetic getRemoteDocumentCache()Lo/getSize;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lo/getSignal;->getRemoteDocumentCache()Lo/getThreads;

    move-result-object v0

    return-object v0
.end method

.method final getRemoteDocumentCache()Lo/getThreads;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/getSignal;->remoteDocumentCache:Lo/getThreads;

    return-object v0
.end method

.method final bridge synthetic getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    return-object v0
.end method

.method final getTargetCache()Lo/setUiOrientation;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/getSignal;->targetCache:Lo/setUiOrientation;

    return-object v0
.end method

.method public final isStarted()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lo/getSignal;->started:Z

    return v0
.end method

.method final runTransaction(Ljava/lang/String;Lo/reportToJson;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lo/reportToJson<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 133
    iget-object p1, p0, Lo/getSignal;->referenceDelegate:Lo/setException;

    invoke-interface {p1}, Lo/setException;->onTransactionStarted()V

    .line 136
    :try_start_0
    invoke-interface {p2}, Lo/reportToJson;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object p2, p0, Lo/getSignal;->referenceDelegate:Lo/setException;

    invoke-interface {p2}, Lo/setException;->onTransactionCommitted()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/getSignal;->referenceDelegate:Lo/setException;

    invoke-interface {p2}, Lo/setException;->onTransactionCommitted()V

    .line 139
    throw p1
.end method

.method final runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lo/getSignal;->referenceDelegate:Lo/setException;

    invoke-interface {p1}, Lo/setException;->onTransactionStarted()V

    .line 125
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object p1, p0, Lo/getSignal;->referenceDelegate:Lo/setException;

    invoke-interface {p1}, Lo/setException;->onTransactionCommitted()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/getSignal;->referenceDelegate:Lo/setException;

    invoke-interface {p2}, Lo/setException;->onTransactionCommitted()V

    .line 128
    throw p1
.end method

.method public final shutdown()V
    .locals 4

    .line 74
    iget-boolean v0, p0, Lo/getSignal;->started:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MemoryPersistence shutdown without start"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iput-boolean v1, p0, Lo/getSignal;->started:Z

    return-void
.end method

.method public final start()V
    .locals 4

    .line 66
    iget-boolean v0, p0, Lo/getSignal;->started:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MemoryPersistence double-started!"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iput-boolean v1, p0, Lo/getSignal;->started:Z

    return-void
.end method
