.class public final Lo/setCores;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCores$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final RESUME_TOKEN_MAX_AGE_SECONDS:J


# instance fields
.field private localDocuments:Lo/setModel;

.field private final localViewReferences:Lo/setBinaries;

.field private mutationQueue:Lo/setCustomAttributes;

.field private final persistence:Lo/setThreads;

.field private final queryDataByTarget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/setBatteryVelocity;",
            ">;"
        }
    .end annotation
.end field

.field private queryEngine:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;

.field private final remoteDocuments:Lo/getSize;

.field private final targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

.field private final targetIdByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/setClsId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final targetIdGenerator:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lo/setCores;->RESUME_TOKEN_MAX_AGE_SECONDS:J

    return-void
.end method

.method public constructor <init>(Lo/setThreads;Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V
    .locals 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Lo/setThreads;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalStore was passed an unstarted persistence implementation"

    .line 134
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iput-object p1, p0, Lo/setCores;->persistence:Lo/setThreads;

    .line 137
    invoke-virtual {p1}, Lo/setThreads;->getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    move-result-object v0

    iput-object v0, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    .line 138
    invoke-interface {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->getHighestTargetId()I

    move-result v0

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;->forTargetCache(I)Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;

    move-result-object v0

    iput-object v0, p0, Lo/setCores;->targetIdGenerator:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;

    .line 139
    invoke-virtual {p1, p3}, Lo/setThreads;->getMutationQueue(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Lo/setCustomAttributes;

    move-result-object p3

    iput-object p3, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    .line 140
    invoke-virtual {p1}, Lo/setThreads;->getRemoteDocumentCache()Lo/getSize;

    move-result-object p3

    iput-object p3, p0, Lo/setCores;->remoteDocuments:Lo/getSize;

    .line 141
    new-instance v0, Lo/setModel;

    iget-object v1, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    .line 142
    invoke-virtual {p1}, Lo/setThreads;->getIndexManager()Lo/setArch;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lo/setModel;-><init>(Lo/getSize;Lo/setCustomAttributes;Lo/setArch;)V

    iput-object v0, p0, Lo/setCores;->localDocuments:Lo/setModel;

    .line 144
    iput-object p2, p0, Lo/setCores;->queryEngine:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;

    .line 145
    invoke-interface {p2, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;->setLocalDocumentsView(Lo/setModel;)V

    .line 147
    new-instance p2, Lo/setBinaries;

    invoke-direct {p2}, Lo/setBinaries;-><init>()V

    iput-object p2, p0, Lo/setCores;->localViewReferences:Lo/setBinaries;

    .line 148
    invoke-virtual {p1}, Lo/setThreads;->getReferenceDelegate()Lo/setException;

    move-result-object p1

    iget-object p2, p0, Lo/setCores;->localViewReferences:Lo/setBinaries;

    invoke-interface {p1, p2}, Lo/setException;->setInMemoryPins(Lo/setBinaries;)V

    .line 150
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    .line 151
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/setCores;->targetIdByTarget:Ljava/util/Map;

    return-void
.end method

.method private applyWriteToRemoteDocuments(Lo/CrashlyticsReport$Architecture;)V
    .locals 10

    .line 647
    invoke-virtual {p1}, Lo/CrashlyticsReport$Architecture;->getBatch()Lo/CrashlyticsReport$Builder;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 649
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 650
    iget-object v3, p0, Lo/setCores;->remoteDocuments:Lo/getSize;

    invoke-interface {v3, v2}, Lo/getSize;->get(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v3

    .line 652
    invoke-virtual {p1}, Lo/CrashlyticsReport$Architecture;->getDocVersions()Lo/populateFramesList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/withNdkPayload;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "docVersions should contain every doc in the write."

    .line 653
    invoke-static {v7, v9, v8}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 655
    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v7

    invoke-virtual {v7, v4}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result v4

    if-gez v4, :cond_0

    .line 656
    :cond_2
    invoke-virtual {v0, v2, v3, p1}, Lo/CrashlyticsReport$Builder;->applyToRemoteDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/CrashlyticsReport$Architecture;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v2

    if-nez v2, :cond_4

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v3, v4, v5

    const-string v3, "Mutation batch %s applied to document %s resulted in null."

    .line 658
    invoke-static {v2, v3, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 664
    :cond_4
    iget-object v3, p0, Lo/setCores;->remoteDocuments:Lo/getSize;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Architecture;->getCommitVersion()Lo/withNdkPayload;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lo/getSize;->add(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/withNdkPayload;)V

    goto :goto_0

    .line 669
    :cond_5
    iget-object p1, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {p1, v0}, Lo/setCustomAttributes;->removeMutationBatch(Lo/CrashlyticsReport$Builder;)V

    return-void
.end method

.method static synthetic lambda$acknowledgeBatch$2(Lo/setCores;Lo/CrashlyticsReport$Architecture;)Lo/populateFramesList;
    .locals 3

    .line 263
    invoke-virtual {p1}, Lo/CrashlyticsReport$Architecture;->getBatch()Lo/CrashlyticsReport$Builder;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Architecture;->getStreamToken()Lo/SessionProtobufHelper;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lo/setCustomAttributes;->acknowledgeBatch(Lo/CrashlyticsReport$Builder;Lo/SessionProtobufHelper;)V

    .line 265
    invoke-direct {p0, p1}, Lo/setCores;->applyWriteToRemoteDocuments(Lo/CrashlyticsReport$Architecture;)V

    .line 266
    iget-object p1, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {p1}, Lo/setCustomAttributes;->performConsistencyCheck()V

    .line 267
    iget-object p0, p0, Lo/setCores;->localDocuments:Lo/setModel;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getKeys()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setModel;->getDocuments(Ljava/lang/Iterable;)Lo/populateFramesList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$allocateTarget$7(Lo/setCores;Lo/setCores$ICustomTabsCallback;Lo/setClsId;)V
    .locals 7

    .line 544
    iget-object v0, p0, Lo/setCores;->targetIdGenerator:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;->nextId()I

    move-result v0

    iput v0, p1, Lo/setCores$ICustomTabsCallback;->targetId:I

    .line 545
    new-instance v0, Lo/setBatteryVelocity;

    iget v3, p1, Lo/setCores$ICustomTabsCallback;->targetId:I

    iget-object v1, p0, Lo/setCores;->persistence:Lo/setThreads;

    .line 549
    invoke-virtual {v1}, Lo/setThreads;->getReferenceDelegate()Lo/setException;

    move-result-object v1

    invoke-interface {v1}, Lo/setException;->getCurrentSequenceNumber()J

    move-result-wide v4

    sget-object v6, Lo/getBinaries;->LISTEN:Lo/getBinaries;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lo/setBatteryVelocity;-><init>(Lo/setClsId;IJLo/getBinaries;)V

    iput-object v0, p1, Lo/setCores$ICustomTabsCallback;->cached:Lo/setBatteryVelocity;

    .line 551
    iget-object p0, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    iget-object p1, p1, Lo/setCores$ICustomTabsCallback;->cached:Lo/setBatteryVelocity;

    invoke-interface {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->addTargetData(Lo/setBatteryVelocity;)V

    return-void
.end method

.method static synthetic lambda$applyRemoteEvent$5(Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;Lo/withNdkPayload;)Lo/populateFramesList;
    .locals 12

    .line 340
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getTargetChanges()Ljava/util/Map;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-virtual {v1}, Lo/setThreads;->getReferenceDelegate()Lo/setException;

    move-result-object v1

    invoke-interface {v1}, Lo/setException;->getCurrentSequenceNumber()J

    move-result-wide v1

    .line 343
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 345
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 346
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$Session$Event$Device$Builder;

    .line 348
    iget-object v7, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/setBatteryVelocity;

    if-eqz v7, :cond_0

    .line 355
    iget-object v8, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-virtual {v3}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getRemovedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->removeMatchingKeys(Lo/CrashlyticsReportWithSessionId;I)V

    .line 356
    iget-object v8, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-virtual {v3}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getAddedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->addMatchingKeys(Lo/CrashlyticsReportWithSessionId;I)V

    .line 358
    invoke-virtual {v3}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v8

    .line 3235
    invoke-virtual {v8}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_0

    .line 363
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Lo/setBatteryVelocity;->withResumeToken(Lo/SessionProtobufHelper;Lo/withNdkPayload;)Lo/setBatteryVelocity;

    move-result-object v4

    .line 364
    invoke-virtual {v4, v1, v2}, Lo/setBatteryVelocity;->withSequenceNumber(J)Lo/setBatteryVelocity;

    move-result-object v4

    .line 365
    iget-object v5, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    invoke-static {v7, v4, v3}, Lo/setCores;->shouldPersistTargetData(Lo/setBatteryVelocity;Lo/setBatteryVelocity;Lo/CrashlyticsReport$Session$Event$Device$Builder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-interface {v3, v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->updateTargetData(Lo/setBatteryVelocity;)V

    goto :goto_0

    .line 375
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getDocumentUpdates()Ljava/util/Map;

    move-result-object v1

    .line 377
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getResolvedLimboDocuments()Ljava/util/Set;

    move-result-object v2

    .line 380
    iget-object v3, p0, Lo/setCores;->remoteDocuments:Lo/getSize;

    .line 381
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v3, v6}, Lo/getSize;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    .line 383
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 385
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 386
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 391
    instance-of v10, v6, Lo/AutoValue_CrashlyticsReport_Session_User;

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v10

    sget-object v11, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 394
    iget-object v7, p0, Lo/setCores;->remoteDocuments:Lo/getSize;

    invoke-virtual {v6}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v9

    invoke-interface {v7, v9}, Lo/getSize;->remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    .line 395
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    if-eqz v9, :cond_6

    .line 397
    invoke-virtual {v6}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v10

    invoke-virtual {v9}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v11

    invoke-virtual {v10, v11}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result v10

    if-gtz v10, :cond_6

    .line 398
    invoke-virtual {v6}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v10

    invoke-virtual {v9}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v11

    invoke-virtual {v10, v11}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result v10

    if-nez v10, :cond_5

    .line 399
    invoke-virtual {v9}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->hasPendingWrites()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v5

    .line 411
    invoke-virtual {v9}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v9

    aput-object v9, v10, v4

    .line 412
    invoke-virtual {v6}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v6

    aput-object v6, v10, v7

    const-string v6, "LocalStore"

    const-string v7, "Ignoring outdated watch update for %s.Current version: %s  Watch version: %s"

    .line 406
    invoke-static {v6, v7, v10}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 400
    :cond_6
    :goto_3
    sget-object v7, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 401
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "Cannot add a document when the remote version is zero"

    .line 400
    invoke-static {v7, v10, v9}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object v7, p0, Lo/setCores;->remoteDocuments:Lo/getSize;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object v9

    invoke-interface {v7, v6, v9}, Lo/getSize;->add(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/withNdkPayload;)V

    .line 404
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :goto_4
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 416
    iget-object v6, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-virtual {v6}, Lo/setThreads;->getReferenceDelegate()Lo/setException;

    move-result-object v6

    invoke-interface {v6, v8}, Lo/setException;->updateLimboDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto/16 :goto_2

    .line 423
    :cond_7
    iget-object p1, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-interface {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->getLastRemoteSnapshotVersion()Lo/withNdkPayload;

    move-result-object p1

    .line 424
    sget-object v1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 426
    invoke-virtual {p2, p1}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object p1, v2, v4

    const-string p1, "Watch stream reverted to previous snapshot?? (%s < %s)"

    .line 425
    invoke-static {v1, p1, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 430
    iget-object p1, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-interface {p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->setLastRemoteSnapshotVersion(Lo/withNdkPayload;)V

    .line 433
    :cond_9
    iget-object p0, p0, Lo/setCores;->localDocuments:Lo/setModel;

    invoke-virtual {p0, v0}, Lo/setModel;->getLocalViewOfDocuments(Ljava/util/Map;)Lo/populateFramesList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$collectGarbage$9(Lo/setCores;Lo/getExecution;)Lo/getExecution$ICustomTabsCallback;
    .locals 0

    .line 674
    iget-object p0, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lo/getExecution;->collect(Landroid/util/SparseArray;)Lo/getExecution$ICustomTabsCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$notifyLocalViewChanges$6(Lo/setCores;Ljava/util/List;)V
    .locals 6

    .line 481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event;

    .line 482
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event;->getTargetId()I

    move-result v1

    .line 484
    iget-object v2, p0, Lo/setCores;->localViewReferences:Lo/setBinaries;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event;->getAdded()Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lo/setBinaries;->addReferences(Lo/CrashlyticsReportWithSessionId;I)V

    .line 485
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event;->getRemoved()Lo/CrashlyticsReportWithSessionId;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 487
    iget-object v5, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-virtual {v5}, Lo/setThreads;->getReferenceDelegate()Lo/setException;

    move-result-object v5

    invoke-interface {v5, v4}, Lo/setException;->removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_1

    .line 489
    :cond_1
    iget-object v3, p0, Lo/setCores;->localViewReferences:Lo/setBinaries;

    invoke-virtual {v3, v2, v1}, Lo/setBinaries;->removeReferences(Lo/CrashlyticsReportWithSessionId;I)V

    .line 491
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setBatteryVelocity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Can\'t set limbo-free snapshot version for unknown target: %s"

    .line 493
    invoke-static {v4, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 499
    invoke-virtual {v0}, Lo/setBatteryVelocity;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object v2

    .line 501
    invoke-virtual {v0, v2}, Lo/setBatteryVelocity;->withLastLimboFreeSnapshotVersion(Lo/withNdkPayload;)Lo/setBatteryVelocity;

    move-result-object v0

    .line 502
    iget-object v2, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$rejectBatch$3(Lo/setCores;I)Lo/populateFramesList;
    .locals 3

    .line 283
    iget-object v0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0, p1}, Lo/setCustomAttributes;->lookupMutationBatch(I)Lo/CrashlyticsReport$Builder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Attempt to reject nonexistent batch!"

    .line 284
    invoke-static {v1, v2, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0, p1}, Lo/setCustomAttributes;->removeMutationBatch(Lo/CrashlyticsReport$Builder;)V

    .line 287
    iget-object v0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0}, Lo/setCustomAttributes;->performConsistencyCheck()V

    .line 288
    iget-object p0, p0, Lo/setCores;->localDocuments:Lo/setModel;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getKeys()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setModel;->getDocuments(Ljava/lang/Iterable;)Lo/populateFramesList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$releaseTarget$8(Lo/setCores;I)V
    .locals 5

    .line 593
    iget-object v0, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setBatteryVelocity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 594
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Tried to release nonexistent target: %s"

    invoke-static {v3, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 600
    iget-object v1, p0, Lo/setCores;->localViewReferences:Lo/setBinaries;

    .line 601
    invoke-virtual {v1, p1}, Lo/setBinaries;->removeReferencesForId(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    .line 602
    invoke-virtual {v1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 603
    iget-object v3, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-virtual {v3}, Lo/setThreads;->getReferenceDelegate()Lo/setException;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/setException;->removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_1

    .line 607
    :cond_1
    iget-object v1, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-virtual {v1}, Lo/setThreads;->getReferenceDelegate()Lo/setException;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/setException;->removeTarget(Lo/setBatteryVelocity;)V

    .line 608
    iget-object v1, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 609
    iget-object p0, p0, Lo/setCores;->targetIdByTarget:Ljava/util/Map;

    invoke-virtual {v0}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$setLastStreamToken$4(Lo/setCores;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 315
    iget-object p0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {p0, p1}, Lo/setCustomAttributes;->setLastStreamToken(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method public static synthetic lambda$startMutationQueue$0(Lo/setCores;)V
    .locals 0

    .line 162
    iget-object p0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {p0}, Lo/setCustomAttributes;->start()V

    return-void
.end method

.method static synthetic lambda$writeLocally$1(Lo/setCores;Ljava/util/Set;Ljava/util/List;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_Event$1;
    .locals 7

    .line 212
    iget-object v0, p0, Lo/setCores;->localDocuments:Lo/setModel;

    .line 213
    invoke-virtual {v0, p1}, Lo/setModel;->getDocuments(Ljava/lang/Iterable;)Lo/populateFramesList;

    move-result-object p1

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$FilesPayload;

    .line 222
    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {p1, v3}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    invoke-virtual {v2, v3}, Lo/CrashlyticsReport$FilesPayload;->extractBaseValue(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 226
    new-instance v4, Lo/CrashlyticsReport$FilesPayload$File$Builder;

    .line 228
    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->getFieldMask()Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v5

    const/4 v6, 0x1

    .line 231
    invoke-static {v6}, Lo/CrashlyticsReport$FilesPayload$File;->exists(Z)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v6

    invoke-direct {v4, v2, v3, v5, v6}, Lo/CrashlyticsReport$FilesPayload$File$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Lo/CrashlyticsReport$FilesPayload$File;)V

    .line 226
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    iget-object p0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    .line 236
    invoke-interface {p0, p3, v0, p2}, Lo/setCustomAttributes;->addMutationBatch(Lo/getStream;Ljava/util/List;Ljava/util/List;)Lo/CrashlyticsReport$Builder;

    move-result-object p0

    .line 238
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Builder;->applyToLocalDocumentSet(Lo/populateFramesList;)Lo/populateFramesList;

    move-result-object p1

    .line 239
    new-instance p2, Lo/AutoValue_CrashlyticsReport_Session_Event$1;

    invoke-virtual {p0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result p0

    invoke-direct {p2, p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event$1;-><init>(ILo/populateFramesList;)V

    return-object p2
.end method

.method private static shouldPersistTargetData(Lo/setBatteryVelocity;Lo/setBatteryVelocity;Lo/CrashlyticsReport$Session$Event$Device$Builder;)Z
    .locals 5

    .line 450
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v0

    .line 1235
    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Attempted to persist query data with empty resume token"

    .line 449
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 454
    invoke-virtual {p0}, Lo/setBatteryVelocity;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v0

    .line 2235
    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 460
    :cond_2
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object p1

    invoke-virtual {p1}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object p1

    invoke-virtual {p1}, Lo/getStream;->getSeconds()J

    move-result-wide v3

    .line 461
    invoke-virtual {p0}, Lo/setBatteryVelocity;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object p0

    invoke-virtual {p0}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object p0

    invoke-virtual {p0}, Lo/getStream;->getSeconds()J

    move-result-wide p0

    sub-long/2addr v3, p0

    .line 463
    sget-wide p0, Lo/setCores;->RESUME_TOKEN_MAX_AGE_SECONDS:J

    cmp-long v0, v3, p0

    if-ltz v0, :cond_3

    return v2

    .line 470
    :cond_3
    invoke-virtual {p2}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getAddedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object p0

    invoke-virtual {p0}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result p0

    .line 471
    invoke-virtual {p2}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getModifiedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result p1

    add-int/2addr p0, p1

    .line 472
    invoke-virtual {p2}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getRemovedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result p1

    add-int/2addr p0, p1

    if-lez p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private startMutationQueue()V
    .locals 3

    .line 159
    iget-object v0, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0}, Lo/OverwritingInputMerger;->lambdaFactory$(Lo/setCores;)Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "Start MutationQueue"

    invoke-virtual {v0, v2, v1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final acknowledgeBatch(Lo/CrashlyticsReport$Architecture;)Lo/populateFramesList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Architecture;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, p1}, Lo/setManufacturer;->lambdaFactory$(Lo/setCores;Lo/CrashlyticsReport$Architecture;)Lo/reportToJson;

    move-result-object p1

    const-string v1, "Acknowledge batch"

    invoke-virtual {v0, v1, p1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Lo/reportToJson;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/populateFramesList;

    return-object p1
.end method

.method public final allocateTarget(Lo/setClsId;)Lo/setBatteryVelocity;
    .locals 4

    .line 534
    iget-object v0, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-interface {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->getTargetData(Lo/setClsId;)Lo/setBatteryVelocity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v1

    goto :goto_0

    .line 540
    :cond_0
    new-instance v0, Lo/setCores$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setCores$ICustomTabsCallback;-><init>(Lo/setCores$4;)V

    .line 541
    iget-object v1, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, v0, p1}, Lo/resumeAnimation;->lambdaFactory$(Lo/setCores;Lo/setCores$ICustomTabsCallback;Lo/setClsId;)Ljava/lang/Runnable;

    move-result-object v2

    const-string v3, "Allocate target"

    invoke-virtual {v1, v3, v2}, Lo/setThreads;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 553
    iget v1, v0, Lo/setCores$ICustomTabsCallback;->targetId:I

    .line 554
    iget-object v0, v0, Lo/setCores$ICustomTabsCallback;->cached:Lo/setBatteryVelocity;

    .line 557
    :goto_0
    iget-object v2, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 558
    iget-object v2, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 559
    iget-object v2, p0, Lo/setCores;->targetIdByTarget:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final applyRemoteEvent(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)Lo/populateFramesList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, p1, v0}, Lo/getLog;->lambdaFactory$(Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;Lo/withNdkPayload;)Lo/reportToJson;

    move-result-object p1

    const-string v0, "Apply remote event"

    invoke-virtual {v1, v0, p1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Lo/reportToJson;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/populateFramesList;

    return-object p1
.end method

.method public final collectGarbage(Lo/getExecution;)Lo/getExecution$ICustomTabsCallback;
    .locals 2

    .line 673
    iget-object v0, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, p1}, Lo/setRam;->lambdaFactory$(Lo/setCores;Lo/getExecution;)Lo/reportToJson;

    move-result-object p1

    const-string v1, "Collect garbage"

    invoke-virtual {v0, v1, p1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Lo/reportToJson;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getExecution$ICustomTabsCallback;

    return-object p1
.end method

.method public final executeQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Z)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;
    .locals 3

    .line 621
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setCores;->getTargetData(Lo/setClsId;)Lo/setBatteryVelocity;

    move-result-object v0

    .line 622
    sget-object v1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 623
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Lo/setBatteryVelocity;->getLastLimboFreeSnapshotVersion()Lo/withNdkPayload;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-virtual {v0}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v0

    invoke-interface {v2, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->getMatchingKeysForTargetId(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object v2

    .line 630
    :cond_0
    iget-object v0, p0, Lo/setCores;->queryEngine:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 633
    :cond_1
    sget-object v1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    :goto_0
    if-eqz p2, :cond_2

    move-object p2, v2

    goto :goto_1

    .line 634
    :cond_2
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object p2

    .line 631
    :goto_1
    invoke-interface {v0, p1, v1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;->getDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;Lo/CrashlyticsReportWithSessionId;)Lo/populateFramesList;

    move-result-object p1

    .line 635
    new-instance p2, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;

    invoke-direct {p2, p1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;-><init>(Lo/populateFramesList;Lo/CrashlyticsReportWithSessionId;)V

    return-object p2
.end method

.method public final getHighestUnacknowledgedBatchId()I
    .locals 1

    .line 297
    iget-object v0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0}, Lo/setCustomAttributes;->getHighestUnacknowledgedBatchId()I

    move-result v0

    return v0
.end method

.method public final getLastRemoteSnapshotVersion()Lo/withNdkPayload;
    .locals 1

    .line 323
    iget-object v0, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-interface {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->getLastRemoteSnapshotVersion()Lo/withNdkPayload;

    move-result-object v0

    return-object v0
.end method

.method public final getLastStreamToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 302
    iget-object v0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0}, Lo/setCustomAttributes;->getLastStreamToken()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getNextMutationBatch(I)Lo/CrashlyticsReport$Builder;
    .locals 1

    .line 515
    iget-object v0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0, p1}, Lo/setCustomAttributes;->getNextMutationBatchAfterBatchId(I)Lo/CrashlyticsReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final getRemoteDocumentKeys(I)Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-interface {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->getMatchingKeysForTargetId(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    return-object p1
.end method

.method final getTargetData(Lo/setClsId;)Lo/setBatteryVelocity;
    .locals 1

    .line 571
    iget-object v0, p0, Lo/setCores;->targetIdByTarget:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 573
    iget-object p1, p0, Lo/setCores;->queryDataByTarget:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setBatteryVelocity;

    return-object p1

    .line 575
    :cond_0
    iget-object v0, p0, Lo/setCores;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;

    invoke-interface {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;->getTargetData(Lo/setClsId;)Lo/setBatteryVelocity;

    move-result-object p1

    return-object p1
.end method

.method public final handleUserChange(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Lo/populateFramesList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_FilesPayload$1;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0}, Lo/setCustomAttributes;->getAllMutationBatches()Ljava/util/List;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-virtual {v1, p1}, Lo/setThreads;->getMutationQueue(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Lo/setCustomAttributes;

    move-result-object p1

    iput-object p1, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    .line 173
    invoke-direct {p0}, Lo/setCores;->startMutationQueue()V

    .line 175
    iget-object p1, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {p1}, Lo/setCustomAttributes;->getAllMutationBatches()Ljava/util/List;

    move-result-object p1

    .line 178
    new-instance v1, Lo/setModel;

    iget-object v2, p0, Lo/setCores;->remoteDocuments:Lo/getSize;

    iget-object v3, p0, Lo/setCores;->mutationQueue:Lo/setCustomAttributes;

    iget-object v4, p0, Lo/setCores;->persistence:Lo/setThreads;

    .line 179
    invoke-virtual {v4}, Lo/setThreads;->getIndexManager()Lo/setArch;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lo/setModel;-><init>(Lo/getSize;Lo/setCustomAttributes;Lo/setArch;)V

    iput-object v1, p0, Lo/setCores;->localDocuments:Lo/setModel;

    .line 180
    iget-object v2, p0, Lo/setCores;->queryEngine:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;

    invoke-interface {v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;->setLocalDocumentsView(Lo/setModel;)V

    .line 183
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 184
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$Builder;

    .line 186
    invoke-virtual {v2}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$FilesPayload;

    .line 187
    invoke-virtual {v3}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_2
    iget-object p1, p0, Lo/setCores;->localDocuments:Lo/setModel;

    invoke-virtual {p1, v1}, Lo/setModel;->getDocuments(Ljava/lang/Iterable;)Lo/populateFramesList;

    move-result-object p1

    return-object p1
.end method

.method public final notifyLocalViewChanges(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event;",
            ">;)V"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, p1}, Lo/setFailureListener;->lambdaFactory$(Lo/setCores;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v1, "notifyLocalViewChanges"

    invoke-virtual {v0, v1, p1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final readDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 1

    .line 521
    iget-object v0, p0, Lo/setCores;->localDocuments:Lo/setModel;

    invoke-virtual {v0, p1}, Lo/setModel;->getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final rejectBatch(I)Lo/populateFramesList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, p1}, Lo/setSimulator;->lambdaFactory$(Lo/setCores;I)Lo/reportToJson;

    move-result-object p1

    const-string v1, "Reject batch"

    invoke-virtual {v0, v1, p1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Lo/reportToJson;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/populateFramesList;

    return-object p1
.end method

.method public final releaseTarget(I)V
    .locals 2

    .line 590
    iget-object v0, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, p1}, Lo/getMaxFrame;->lambdaFactory$(Lo/setCores;I)Ljava/lang/Runnable;

    move-result-object p1

    const-string v1, "Release target"

    invoke-virtual {v0, v1, p1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setLastStreamToken(Lo/SessionProtobufHelper;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, p1}, Lo/SequenceJsonAdapter;->lambdaFactory$(Lo/setCores;Lo/SessionProtobufHelper;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v1, "Set stream token"

    invoke-virtual {v0, v1, p1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lo/setCores;->startMutationQueue()V

    return-void
.end method

.method public final writeLocally(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Event$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_Event$1;"
        }
    .end annotation

    .line 198
    invoke-static {}, Lo/getStream;->now()Lo/getStream;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$FilesPayload;

    .line 204
    invoke-virtual {v3}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    iget-object v2, p0, Lo/setCores;->persistence:Lo/setThreads;

    invoke-static {p0, v1, p1, v0}, Lo/setModelClass;->lambdaFactory$(Lo/setCores;Ljava/util/Set;Ljava/util/List;Lo/getStream;)Lo/reportToJson;

    move-result-object p1

    const-string v0, "Locally write mutations"

    invoke-virtual {v2, v0, p1}, Lo/setThreads;->runTransaction(Ljava/lang/String;Lo/reportToJson;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_Event$1;

    return-object p1
.end method
