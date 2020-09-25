.class public final Lo/getEndedAt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FirestoreClient"

.field private static final MAX_CONCURRENT_LIMBO_RESOLUTIONS:I = 0x64


# instance fields
.field private final asyncQueue:Lo/CrashlyticsReport$Type;

.field private final credentialsProvider:Lo/getOrgId;

.field private final databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

.field private eventManager:Lo/getGenerator;

.field private gcScheduler:Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

.field private localStore:Lo/setCores;

.field private final metadataProvider:Lo/setUuidFromUtf8Bytes;

.field private persistence:Lo/setThreads;

.field private remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

.field private syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/AutoValue_CrashlyticsReport_Session;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;Lo/getOrgId;Lo/CrashlyticsReport$Type;Lo/setUuidFromUtf8Bytes;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lo/getEndedAt;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    .line 81
    iput-object p4, p0, Lo/getEndedAt;->credentialsProvider:Lo/getOrgId;

    .line 82
    iput-object p5, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 83
    iput-object p6, p0, Lo/getEndedAt;->metadataProvider:Lo/setUuidFromUtf8Bytes;

    .line 85
    new-instance p2, Lo/removeBackgroundStateChangeListener;

    invoke-direct {p2}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 86
    new-instance p6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 91
    invoke-static {p0, p2, p1, p3}, Lo/replaceAllInsert$extraCallback;->lambdaFactory$(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;Landroid/content/Context;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p5, p1}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 102
    invoke-static {p0, p6, p2, p5}, Lo/getGeneratorType;->lambdaFactory$(Lo/getEndedAt;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/removeBackgroundStateChangeListener;Lo/CrashlyticsReport$Type;)Lo/retainAll;

    move-result-object p1

    invoke-virtual {p4, p1}, Lo/getOrgId;->setChangeListener(Lo/retainAll;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V
    .locals 11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->getUid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FirestoreClient"

    const-string v2, "Initializing. user=%s"

    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    iget-object v4, p0, Lo/getEndedAt;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    iget-object v5, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    iget-object v6, p0, Lo/getEndedAt;->credentialsProvider:Lo/getOrgId;

    iget-object v8, p0, Lo/getEndedAt;->metadataProvider:Lo/setUuidFromUtf8Bytes;

    move-object v3, v0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session;Lo/CrashlyticsReport$Type;Lo/getOrgId;Landroid/content/Context;Lo/setUuidFromUtf8Bytes;)V

    .line 235
    new-instance v1, Lo/setFilename$extraCallback;

    iget-object v5, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    iget-object v6, p0, Lo/getEndedAt;->databaseInfo:Lo/AutoValue_CrashlyticsReport_Session;

    const/16 v9, 0x64

    move-object v3, v1

    move-object v4, p1

    move-object v7, v0

    move-object v8, p2

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lo/setFilename$extraCallback;-><init>(Landroid/content/Context;Lo/CrashlyticsReport$Type;Lo/AutoValue_CrashlyticsReport_Session;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;ILo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V

    .line 246
    invoke-virtual {p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->isPersistenceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Application$Builder;

    invoke-direct {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$Builder;-><init>()V

    goto :goto_0

    .line 248
    :cond_0
    new-instance p1, Lo/setApp;

    invoke-direct {p1}, Lo/setApp;-><init>()V

    .line 249
    :goto_0
    invoke-virtual {p1, v1}, Lo/setFilename;->initialize(Lo/setFilename$extraCallback;)V

    .line 250
    invoke-virtual {p1}, Lo/setFilename;->getPersistence()Lo/setThreads;

    move-result-object p2

    iput-object p2, p0, Lo/getEndedAt;->persistence:Lo/setThreads;

    .line 251
    invoke-virtual {p1}, Lo/setFilename;->getGargabeCollectionScheduler()Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

    move-result-object p2

    iput-object p2, p0, Lo/getEndedAt;->gcScheduler:Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

    .line 252
    invoke-virtual {p1}, Lo/setFilename;->getLocalStore()Lo/setCores;

    move-result-object p2

    iput-object p2, p0, Lo/getEndedAt;->localStore:Lo/setCores;

    .line 253
    invoke-virtual {p1}, Lo/setFilename;->getRemoteStore()Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    move-result-object p2

    iput-object p2, p0, Lo/getEndedAt;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    .line 254
    invoke-virtual {p1}, Lo/setFilename;->getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object p2

    iput-object p2, p0, Lo/getEndedAt;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    .line 255
    invoke-virtual {p1}, Lo/setFilename;->getEventManager()Lo/getGenerator;

    move-result-object p1

    iput-object p1, p0, Lo/getEndedAt;->eventManager:Lo/getGenerator;

    .line 257
    iget-object p1, p0, Lo/getEndedAt;->gcScheduler:Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

    if-eqz p1, :cond_1

    .line 258
    invoke-interface {p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;->start()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$addSnapshotsInSyncListener$14(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 0

    .line 264
    iget-object p0, p0, Lo/getEndedAt;->eventManager:Lo/getGenerator;

    invoke-virtual {p0, p1}, Lo/getGenerator;->addSnapshotsInSyncListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    return-void
.end method

.method public static synthetic lambda$disableNetwork$3(Lo/getEndedAt;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lo/getEndedAt;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->disableNetwork()V

    return-void
.end method

.method public static synthetic lambda$enableNetwork$4(Lo/getEndedAt;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lo/getEndedAt;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->enableNetwork()V

    return-void
.end method

.method public static synthetic lambda$getDocumentFromLocalCache$8(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lo/getEndedAt;->localStore:Lo/setCores;

    invoke-virtual {p0, p1}, Lo/setCores;->readDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getDocumentFromLocalCache$9(Lcom/google/android/gms/tasks/Task;)Lo/setDiskUsed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 175
    instance-of v0, p0, Lo/setDiskUsed;

    if-eqz v0, :cond_0

    .line 176
    check-cast p0, Lo/setDiskUsed;

    return-object p0

    .line 177
    :cond_0
    instance-of p0, p0, Lo/AutoValue_CrashlyticsReport_Session_User;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_1
    new-instance p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const-string v1, "Failed to get document from cache. (However, this document may exist on the server. Run again without setting source to CACHE to attempt to retrieve the document from the server.)"

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    throw p0
.end method

.method public static synthetic lambda$getDocumentsFromLocalCache$10(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_Session_Application;)Lo/getDiskSpace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lo/getEndedAt;->localStore:Lo/setCores;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo/setCores;->executeQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Z)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;

    move-result-object p0

    .line 194
    new-instance v0, Lo/getArch;

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->getRemoteKeys()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/getArch;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/CrashlyticsReportWithSessionId;)V

    .line 195
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->getDocuments()Lo/populateFramesList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/getArch;->computeDocChanges(Lo/populateFramesList;)Lo/getArch$onNavigationEvent;

    move-result-object p0

    .line 196
    invoke-virtual {v0, p0}, Lo/getArch;->applyChanges(Lo/getArch$onNavigationEvent;)Lo/getCores;

    move-result-object p0

    invoke-virtual {p0}, Lo/getCores;->getSnapshot()Lo/getDiskSpace;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$listen$6(Lo/getEndedAt;Lo/getOrganization;)V
    .locals 0

    .line 153
    iget-object p0, p0, Lo/getEndedAt;->eventManager:Lo/getGenerator;

    invoke-virtual {p0, p1}, Lo/getGenerator;->addQueryListener(Lo/getOrganization;)I

    return-void
.end method

.method public static synthetic lambda$new$0(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;Landroid/content/Context;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V
    .locals 0

    .line 4014
    :try_start_0
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 95
    invoke-static {p1}, Lo/clearInstancesForTest;->onNavigationEvent(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    .line 96
    invoke-direct {p0, p2, p1, p3}, Lo/getEndedAt;->initialize(Landroid/content/Context;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 98
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic lambda$new$1(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lo/getEndedAt;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "SyncEngine not yet initialized"

    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 111
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->getUid()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "FirestoreClient"

    const-string v2, "Credential changed. Current user: %s"

    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object p0, p0, Lo/getEndedAt;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->handleCredentialChange(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V

    return-void
.end method

.method static synthetic lambda$new$2(Lo/getEndedAt;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/removeBackgroundStateChangeListener;Lo/CrashlyticsReport$Type;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3014
    iget-object p0, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady()Z

    move-result p0

    xor-int/2addr p0, v0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p3, "Already fulfilled first user task"

    invoke-static {p0, p3, p1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4008
    iget-object p0, p2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p4}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 108
    :cond_0
    invoke-static {p0, p4}, Lo/findFirstVisibleItemClosestToStart$onMessageChannelReady;->lambdaFactory$(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p3, p0}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$removeSnapshotsInSyncListener$15(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 0

    .line 272
    iget-object p0, p0, Lo/getEndedAt;->eventManager:Lo/getGenerator;

    invoke-virtual {p0, p1}, Lo/getGenerator;->removeSnapshotsInSyncListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    return-void
.end method

.method public static synthetic lambda$stopListening$7(Lo/getEndedAt;Lo/getOrganization;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lo/getEndedAt;->eventManager:Lo/getGenerator;

    invoke-virtual {p0, p1}, Lo/getGenerator;->removeQueryListener(Lo/getOrganization;)V

    return-void
.end method

.method public static synthetic lambda$terminate$5(Lo/getEndedAt;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lo/getEndedAt;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shutdown()V

    .line 134
    iget-object v0, p0, Lo/getEndedAt;->persistence:Lo/setThreads;

    invoke-virtual {v0}, Lo/setThreads;->shutdown()V

    .line 135
    iget-object p0, p0, Lo/getEndedAt;->gcScheduler:Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p0}, Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;->stop()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$transaction$12(Lo/getEndedAt;Lo/listIterator;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lo/getEndedAt;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    iget-object p0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0, p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->transaction(Lo/CrashlyticsReport$Type;Lo/listIterator;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$waitForPendingWrites$13(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lo/getEndedAt;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->registerPendingWritesTask(Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$write$11(Lo/getEndedAt;Ljava/util/List;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 204
    iget-object p0, p0, Lo/getEndedAt;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    invoke-virtual {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->writeMutations(Ljava/util/List;Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method

.method private verifyNotTerminated()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lo/getEndedAt;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The client has already been terminated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addSnapshotsInSyncListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 264
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, p1}, Lo/SortedListAdapterCallback$onNavigationEvent;->lambdaFactory$(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final disableNetwork()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 120
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0}, Lo/setLayoutStateDirection$ICustomTabsCallback;->lambdaFactory$(Lo/getEndedAt;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Type;->enqueue(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final enableNetwork()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 125
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0}, Lo/preferLastSpan;->lambdaFactory$(Lo/getEndedAt;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Type;->enqueue(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getDocumentFromLocalCache(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 169
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, p1}, Lo/preferLastSpan$ICustomTabsCallback$Stub;->lambdaFactory$(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 170
    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type;->enqueue(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {}, Lo/getEvents;->lambdaFactory$()Lo/isDefaultApp;

    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getDocumentsFromLocalCache(Lo/AutoValue_CrashlyticsReport_Session_Application;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/getDiskSpace;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 191
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, p1}, Lo/replaceAllRemove;->lambdaFactory$(Lo/getEndedAt;Lo/AutoValue_CrashlyticsReport_Session_Application;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type;->enqueue(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final isTerminated()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->isShuttingDown()Z

    move-result v0

    return v0
.end method

.method public final listen(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/getGenerator$onMessageChannelReady;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getOrganization;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/getGenerator$onMessageChannelReady;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/getDiskSpace;",
            ">;)",
            "Lo/getOrganization;"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 152
    new-instance v0, Lo/getOrganization;

    invoke-direct {v0, p1, p2, p3}, Lo/getOrganization;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/getGenerator$onMessageChannelReady;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    .line 153
    iget-object p1, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, v0}, Lo/preferLastSpan$onPostMessage;->lambdaFactory$(Lo/getEndedAt;Lo/getOrganization;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final removeSnapshotsInSyncListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lo/getEndedAt;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, p1}, Lo/checkSpanForGap$extraCallback;->lambdaFactory$(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopListening(Lo/getOrganization;)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lo/getEndedAt;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, p1}, Lo/preferLastSpan$ICustomTabsCallback;->lambdaFactory$(Lo/getEndedAt;Lo/getOrganization;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final terminate()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/getEndedAt;->credentialsProvider:Lo/getOrgId;

    invoke-virtual {v0}, Lo/getOrgId;->removeChangeListener()V

    .line 131
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0}, Lo/preferLastSpan$extraCallback;->lambdaFactory$(Lo/getEndedAt;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Type;->enqueueAndInitiateShutdown(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final transaction(Lo/listIterator;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/listIterator<",
            "Lo/getClsId;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 211
    iget-object v0, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 212
    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, p1}, Lo/endBatchedUpdates$onMessageChannelReady;->lambdaFactory$(Lo/getEndedAt;Lo/listIterator;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 211
    invoke-static {v0, p1}, Lo/CrashlyticsReport$Type;->callTask(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final waitForPendingWrites()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 222
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 223
    iget-object v1, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, v0}, Lo/removeItemAtIndex$onMessageChannelReady;->lambdaFactory$(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 2014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method

.method public final write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lo/getEndedAt;->verifyNotTerminated()V

    .line 203
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 204
    iget-object v1, p0, Lo/getEndedAt;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, p1, v0}, Lo/beginBatchedUpdates$ICustomTabsCallback;->lambdaFactory$(Lo/getEndedAt;Ljava/util/List;Lo/removeBackgroundStateChangeListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    .line 1014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method
