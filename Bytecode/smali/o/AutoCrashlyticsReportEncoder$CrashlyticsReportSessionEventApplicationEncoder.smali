.class public Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 69
    iput-object p2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    return-void
.end method

.method private addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lo/getGenerator$onMessageChannelReady;Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getGenerator$onMessageChannelReady;",
            "Landroid/app/Activity;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 479
    invoke-static {p0, p4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;->lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    move-result-object p4

    .line 508
    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    invoke-direct {v0, p1, p4}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;-><init>(Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    .line 511
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->asQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    .line 512
    iget-object p4, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {p4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object p4

    invoke-virtual {p4, p1, p2, v0}, Lo/getEndedAt;->listen(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/getGenerator$onMessageChannelReady;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getOrganization;

    move-result-object p1

    .line 514
    new-instance p2, Lo/setCrashed;

    iget-object p4, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 516
    invoke-virtual {p4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object p4

    invoke-direct {p2, p4, p1, v0}, Lo/setCrashed;-><init>(Lo/getEndedAt;Lo/getOrganization;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)V

    .line 514
    invoke-static {p3, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->bind(Landroid/app/Activity;Lo/getNdkPayload;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method private asQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 1

    .line 541
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->atPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v0

    return-object v0
.end method

.method static forPath(Lo/setJailbroken;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid document reference. Document references must have an even number of segments, but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getViaSnapshotListener(Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_CustomAttribute;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 294
    new-instance v1, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v1}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 296
    new-instance v2, Lo/getGenerator$onMessageChannelReady;

    invoke-direct {v2}, Lo/getGenerator$onMessageChannelReady;-><init>()V

    const/4 v3, 0x1

    .line 297
    iput-boolean v3, v2, Lo/getGenerator$onMessageChannelReady;->includeDocumentMetadataChanges:Z

    .line 298
    iput-boolean v3, v2, Lo/getGenerator$onMessageChannelReady;->includeQueryMetadataChanges:Z

    .line 299
    iput-boolean v3, v2, Lo/getGenerator$onMessageChannelReady;->waitForSyncWhenOnline:Z

    .line 301
    sget-object v3, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder;->lambdaFactory$(Lo/removeBackgroundStateChangeListener;Lo/removeBackgroundStateChangeListener;Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    move-result-object p1

    const/4 v4, 0x0

    .line 302
    invoke-direct {p0, v3, v2, v4, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lo/getGenerator$onMessageChannelReady;Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    .line 1008
    iget-object v1, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v1, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 1014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method private static internalOptions(Lo/getBuildVersion;)Lo/getGenerator$onMessageChannelReady;
    .locals 4

    .line 546
    new-instance v0, Lo/getGenerator$onMessageChannelReady;

    invoke-direct {v0}, Lo/getGenerator$onMessageChannelReady;-><init>()V

    .line 547
    sget-object v1, Lo/getBuildVersion;->INCLUDE:Lo/getBuildVersion;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lo/getGenerator$onMessageChannelReady;->includeDocumentMetadataChanges:Z

    .line 548
    sget-object v1, Lo/getBuildVersion;->INCLUDE:Lo/getBuildVersion;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lo/getGenerator$onMessageChannelReady;->includeQueryMetadataChanges:Z

    .line 549
    iput-boolean v3, v0, Lo/getGenerator$onMessageChannelReady;->waitForSyncWhenOnline:Z

    return-object v0
.end method

.method static synthetic lambda$addSnapshotListenerInternal$2(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;Lo/getDiskSpace;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 482
    invoke-interface {p1, v0, p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void

    :cond_0
    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Got event without value or error set"

    .line 486
    invoke-static {v2, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p2}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v2

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v2

    if-gt v2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Too many documents returned on a document query"

    .line 487
    invoke-static {p3, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 491
    invoke-virtual {p2}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object p3

    iget-object v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {p3, v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/setDiskUsed;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 494
    invoke-virtual {p2}, Lo/getDiskSpace;->getMutatedKeys()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    invoke-virtual {p3}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 495
    iget-object p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 497
    invoke-virtual {p2}, Lo/getDiskSpace;->isFromCache()Z

    move-result p2

    .line 496
    invoke-static {p0, p3, p2, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->fromDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/setDiskUsed;ZZ)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    move-result-object p0

    goto :goto_2

    .line 500
    :cond_3
    iget-object p3, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 502
    invoke-virtual {p2}, Lo/getDiskSpace;->isFromCache()Z

    move-result p2

    .line 501
    invoke-static {p3, p0, p2, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->fromNoDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;ZZ)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    move-result-object p0

    .line 504
    :goto_2
    invoke-interface {p1, p0, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public static synthetic lambda$get$0(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lcom/google/android/gms/tasks/Task;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lo/setDiskUsed;

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {v3}, Lo/setDiskUsed;->hasLocalMutations()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 283
    :goto_0
    new-instance p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    const/4 v4, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/setDiskUsed;ZZ)V

    return-object p1
.end method

.method static synthetic lambda$getViaSnapshotListener$1(Lo/removeBackgroundStateChangeListener;Lo/removeBackgroundStateChangeListener;Lo/AutoValue_CrashlyticsReport_CustomAttribute;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    const-string v0, "Failed to register a listener for a single document"

    if-eqz p4, :cond_0

    .line 2011
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p4}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    :cond_0
    const/4 p4, 0x0

    .line 2014
    :try_start_0
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 314
    invoke-static {p1}, Lo/clearInstancesForTest;->onNavigationEvent(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getNdkPayload;

    .line 318
    invoke-interface {p1}, Lo/getNdkPayload;->remove()V

    .line 320
    invoke-virtual {p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getMetadata()Lo/setBuildVersion;

    move-result-object p1

    invoke-virtual {p1}, Lo/setBuildVersion;->isFromCache()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 330
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string p2, "Failed to get document because the client is offline."

    sget-object p3, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    .line 3011
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 334
    :cond_1
    invoke-virtual {p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getMetadata()Lo/setBuildVersion;

    move-result-object p1

    invoke-virtual {p1}, Lo/setBuildVersion;->isFromCache()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->SERVER:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    if-ne p2, p1, :cond_2

    .line 337
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string p2, "Failed to get document from server. (However, this document does exist in the local cache. Run again without setting source to SERVER to retrieve the cached document.)"

    sget-object p3, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    .line 4011
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 5008
    :cond_2
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p3}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 349
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-array p1, p4, [Ljava/lang/Object;

    .line 350
    invoke-static {p0, v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-array p1, p4, [Ljava/lang/Object;

    .line 347
    invoke-static {p0, v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method private update(Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 232
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object v0

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    const/4 v2, 0x1

    .line 233
    invoke-static {v2}, Lo/CrashlyticsReport$FilesPayload$File;->exists(Z)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;->toMutationList(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getEndedAt;->write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 234
    invoke-static {}, Lo/eventFromJson;->voidErrorTransformer()Lo/isDefaultApp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addSnapshotListener(Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 397
    sget-object v0, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    invoke-virtual {p0, p1, v0, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListener(Landroid/app/Activity;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Landroid/app/Activity;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/getBuildVersion;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    const-string v0, "Provided activity must not be null."

    .line 453
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided MetadataChanges value must not be null."

    .line 454
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided EventListener must not be null."

    .line 455
    invoke-static {p3, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 457
    invoke-static {p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->internalOptions(Lo/getBuildVersion;)Lo/getGenerator$onMessageChannelReady;

    move-result-object p2

    .line 456
    invoke-direct {p0, v0, p2, p1, p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lo/getGenerator$onMessageChannelReady;Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 381
    sget-object v0, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    invoke-virtual {p0, p1, v0, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListener(Ljava/util/concurrent/Executor;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getBuildVersion;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    const-string v0, "Provided executor must not be null."

    .line 430
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided MetadataChanges value must not be null."

    .line 431
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided EventListener must not be null."

    .line 432
    invoke-static {p3, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-static {p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->internalOptions(Lo/getBuildVersion;)Lo/getGenerator$onMessageChannelReady;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lo/getGenerator$onMessageChannelReady;Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 368
    sget-object v0, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    invoke-virtual {p0, v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListener(Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBuildVersion;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 412
    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListener(Ljava/util/concurrent/Executor;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public collection(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;
    .locals 2

    const-string v0, "Provided collection path must not be null."

    .line 131
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 133
    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v1

    invoke-static {p1}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/setRamUsed;->append(Lo/setRamUsed;)Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;-><init>(Lo/setJailbroken;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public delete()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 245
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object v0

    new-instance v1, Lo/withEvents;

    iget-object v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    sget-object v3, Lo/CrashlyticsReport$FilesPayload$File;->NONE:Lo/CrashlyticsReport$FilesPayload$File;

    invoke-direct {v1, v2, v3}, Lo/withEvents;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    .line 246
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getEndedAt;->write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 247
    invoke-static {}, Lo/eventFromJson;->voidErrorTransformer()Lo/isDefaultApp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 524
    :cond_0
    instance-of v1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 528
    :cond_1
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    .line 530
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iget-object v3, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object p1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public get()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;"
        }
    .end annotation

    .line 258
    sget-object v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->DEFAULT:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    invoke-virtual {p0, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->get(Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public get(Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_CustomAttribute;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;"
        }
    .end annotation

    .line 274
    sget-object v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->CACHE:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    if-ne p1, v0, :cond_0

    .line 275
    iget-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 276
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object p1

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 277
    invoke-virtual {p1, v0}, Lo/getEndedAt;->getDocumentFromLocalCache(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/hasFlexibleChildInBothOrientations$onPostMessage;->lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Lo/isDefaultApp;

    move-result-object v1

    .line 278
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getViaSnapshotListener(Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getFirestore()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-virtual {v0}, Lo/setRamUsed;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-object v0
.end method

.method public getParent()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;
    .locals 3

    .line 108
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v1

    invoke-virtual {v1}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object v1

    check-cast v1, Lo/setJailbroken;

    iget-object v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, v1, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;-><init>(Lo/setJailbroken;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-virtual {v0}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 535
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 536
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 146
    sget-object v0, Lo/setNdkPayload;->OVERWRITE:Lo/setNdkPayload;

    invoke-virtual {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->set(Ljava/lang/Object;Lo/setNdkPayload;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Lo/setNdkPayload;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setNdkPayload;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Provided data must not be null."

    .line 161
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided options must not be null."

    .line 162
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p2}, Lo/setNdkPayload;->isMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    invoke-virtual {p2}, Lo/setNdkPayload;->getFieldMask()Lo/CrashlyticsReport$CustomAttribute;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseMergeData(Ljava/lang/Object;Lo/CrashlyticsReport$CustomAttribute;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p1

    goto :goto_0

    .line 166
    :cond_0
    iget-object p2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseSetData(Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p1

    .line 167
    :goto_0
    iget-object p2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 168
    invoke-virtual {p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object p2

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    sget-object v1, Lo/CrashlyticsReport$FilesPayload$File;->NONE:Lo/CrashlyticsReport$FilesPayload$File;

    .line 169
    invoke-virtual {p1, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;->toMutationList(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/getEndedAt;->write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 170
    invoke-static {}, Lo/eventFromJson;->voidErrorTransformer()Lo/isDefaultApp;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public varargs update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 202
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    const/4 v1, 0x1

    .line 204
    invoke-static {v1, p1, p2, p3}, Lo/eventFromJson;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseUpdateData(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->update(Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseUpdateData(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p1

    .line 184
    invoke-direct {p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->update(Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public varargs update(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 223
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    const/4 v1, 0x1

    .line 225
    invoke-static {v1, p1, p2, p3}, Lo/eventFromJson;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 224
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseUpdateData(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->update(Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
