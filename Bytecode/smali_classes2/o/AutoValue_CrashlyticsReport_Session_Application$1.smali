.class public Lo/AutoValue_CrashlyticsReport_Session_Application$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;,
        Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activeLimboResolutionsByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final activeLimboTargetsByKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

.field private final enqueuedLimboResolutions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final limboDocumentRefs:Lo/setBinaries;

.field private final localStore:Lo/setCores;

.field private final maxConcurrentLimboResolutions:I

.field private final mutationUserCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_FilesPayload$1;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final pendingWritesCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final queriesByTarget:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            ">;>;"
        }
    .end annotation
.end field

.field private final queryViewsByQuery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/preferLastSpan$asBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

.field private syncEngineListener:Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;

.field private final targetIdGenerator:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;I)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    .line 159
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    .line 160
    iput p4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->maxConcurrentLimboResolutions:I

    .line 162
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    .line 163
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    .line 165
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->enqueuedLimboResolutions:Ljava/util/Queue;

    .line 166
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboTargetsByKey:Ljava/util/Map;

    .line 167
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboResolutionsByTarget:Ljava/util/Map;

    .line 168
    new-instance p1, Lo/setBinaries;

    invoke-direct {p1}, Lo/setBinaries;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->limboDocumentRefs:Lo/setBinaries;

    .line 170
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->mutationUserCallbacks:Ljava/util/Map;

    .line 171
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;->forSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;

    move-result-object p1

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->targetIdGenerator:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;

    .line 172
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    .line 174
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    return-void
.end method

.method private addUserCallback(ILo/removeBackgroundStateChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private assertCallback(Ljava/lang/String;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->syncEngineListener:Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Trying to call %s before setting callback"

    invoke-static {v0, p1, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private emitNewSnapsAndNotifyLocalStore(Lo/populateFramesList;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;",
            "Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;",
            ")V"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 571
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 572
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/preferLastSpan$asBinder;

    .line 573
    invoke-virtual {v3}, Lo/preferLastSpan$asBinder;->getView()Lo/getArch;

    move-result-object v4

    .line 574
    invoke-virtual {v4, p1}, Lo/getArch;->computeDocChanges(Lo/populateFramesList;)Lo/getArch$onNavigationEvent;

    move-result-object v5

    .line 575
    invoke-virtual {v5}, Lo/getArch$onNavigationEvent;->needsRefill()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 579
    iget-object v6, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    .line 580
    invoke-virtual {v3}, Lo/preferLastSpan$asBinder;->getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lo/setCores;->executeQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Z)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;

    move-result-object v6

    .line 581
    invoke-virtual {v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->getDocuments()Lo/populateFramesList;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lo/getArch;->computeDocChanges(Lo/populateFramesList;Lo/getArch$onNavigationEvent;)Lo/getArch$onNavigationEvent;

    move-result-object v5

    :cond_1
    if-nez p2, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 584
    :cond_2
    invoke-virtual {p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getTargetChanges()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lo/preferLastSpan$asBinder;->getTargetId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CrashlyticsReport$Session$Event$Device$Builder;

    .line 585
    :goto_1
    invoke-virtual {v3}, Lo/preferLastSpan$asBinder;->getView()Lo/getArch;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lo/getArch;->applyChanges(Lo/getArch$onNavigationEvent;Lo/CrashlyticsReport$Session$Event$Device$Builder;)Lo/getCores;

    move-result-object v4

    .line 586
    invoke-virtual {v4}, Lo/getCores;->getLimboChanges()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lo/preferLastSpan$asBinder;->getTargetId()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->updateTrackedLimboDocuments(Ljava/util/List;I)V

    .line 588
    invoke-virtual {v4}, Lo/getCores;->getSnapshot()Lo/getDiskSpace;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 589
    invoke-virtual {v4}, Lo/getCores;->getSnapshot()Lo/getDiskSpace;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v3}, Lo/preferLastSpan$asBinder;->getTargetId()I

    move-result v3

    invoke-virtual {v4}, Lo/getCores;->getSnapshot()Lo/getDiskSpace;

    move-result-object v4

    invoke-static {v3, v4}, Lo/AutoValue_CrashlyticsReport_Session_Event;->fromViewSnapshot(ILo/getDiskSpace;)Lo/AutoValue_CrashlyticsReport_Session_Event;

    move-result-object v3

    .line 592
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    :cond_3
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->syncEngineListener:Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;

    invoke-interface {p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;->onViewSnapshots(Ljava/util/List;)V

    .line 596
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {p1, v1}, Lo/setCores;->notifyLocalViewChanges(Ljava/util/List;)V

    return-void
.end method

.method private errorIsInteresting(Lo/emptyMap;)Z
    .locals 3

    .line 5492
    iget-object v0, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 5500
    iget-object v1, p1, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6500
    iget-object p1, p1, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 698
    :goto_0
    sget-object v1, Lo/emptyMap$onPostMessage;->asBinder:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const-string v1, "requires an index"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    .line 700
    :cond_1
    sget-object p1, Lo/emptyMap$onPostMessage;->onRelationshipValidationResult:Lo/emptyMap$onPostMessage;

    if-ne v0, p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private failOutstandingPendingWritesAwaitingTasks()V
    .locals 6

    .line 498
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 499
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeBackgroundStateChangeListener;

    .line 500
    new-instance v3, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    sget-object v4, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->CANCELLED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const-string v5, "\'waitForPendingWrites\' task is cancelled due to User change."

    invoke-direct {v3, v5, v4}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    .line 2011
    iget-object v2, v2, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v2, v3}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private initializeViewAndComputeSnapshot(Lo/AutoValue_CrashlyticsReport_Session_Application;I)Lo/getDiskSpace;
    .locals 5

    .line 205
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lo/setCores;->executeQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Z)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 214
    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/preferLastSpan$asBinder;

    invoke-virtual {v2}, Lo/preferLastSpan$asBinder;->getView()Lo/getArch;

    move-result-object v2

    invoke-virtual {v2}, Lo/getArch;->getSyncState()Lo/getDiskSpace$onMessageChannelReady;

    move-result-object v2

    .line 215
    sget-object v4, Lo/getDiskSpace$onMessageChannelReady;->SYNCED:Lo/getDiskSpace$onMessageChannelReady;

    if-ne v2, v4, :cond_0

    const/4 v3, 0x1

    .line 216
    :cond_0
    invoke-static {v3}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->createSynthesizedTargetChangeForCurrentChange(Z)Lo/CrashlyticsReport$Session$Event$Device$Builder;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 223
    :goto_0
    new-instance v3, Lo/getArch;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->getRemoteKeys()Lo/CrashlyticsReportWithSessionId;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lo/getArch;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/CrashlyticsReportWithSessionId;)V

    .line 224
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->getDocuments()Lo/populateFramesList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/getArch;->computeDocChanges(Lo/populateFramesList;)Lo/getArch$onNavigationEvent;

    move-result-object v0

    .line 225
    invoke-virtual {v3, v0, v2}, Lo/getArch;->applyChanges(Lo/getArch$onNavigationEvent;Lo/CrashlyticsReport$Session$Event$Device$Builder;)Lo/getCores;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lo/getCores;->getLimboChanges()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->updateTrackedLimboDocuments(Ljava/util/List;I)V

    .line 228
    new-instance v2, Lo/preferLastSpan$asBinder;

    invoke-direct {v2, p1, p2, v3}, Lo/preferLastSpan$asBinder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;ILo/getArch;)V

    .line 229
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v0}, Lo/getCores;->getSnapshot()Lo/getDiskSpace;

    move-result-object p1

    return-object p1
.end method

.method private varargs logErrorIfInteresting(Lo/emptyMap;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 688
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->errorIsInteresting(Lo/emptyMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const-string p1, "Firestore"

    const-string p2, "%s: %s"

    .line 690
    invoke-static {p1, p2, p3}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifyUser(ILo/emptyMap;)V
    .locals 2

    .line 512
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->mutationUserCallbacks:Ljava/util/Map;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 518
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/removeBackgroundStateChangeListener;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 521
    invoke-static {p2}, Lo/eventFromJson;->exceptionFromStatus(Lo/emptyMap;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object p2

    .line 3011
    iget-object v1, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v1, p2}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    goto :goto_0

    .line 4008
    :cond_0
    iget-object p2, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 525
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private pumpEnqueuedLimboResolutions()V
    .locals 9

    .line 640
    :goto_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->enqueuedLimboResolutions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboTargetsByKey:Ljava/util/Map;

    .line 641
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->maxConcurrentLimboResolutions:I

    if-ge v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->enqueuedLimboResolutions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 643
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->targetIdGenerator:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization;->nextId()I

    move-result v4

    .line 644
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;

    invoke-direct {v3, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    new-instance v8, Lo/setBatteryVelocity;

    .line 648
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->atPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object v3

    const-wide/16 v5, -0x1

    sget-object v7, Lo/getBinaries;->LIMBO_RESOLUTION:Lo/getBinaries;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lo/setBatteryVelocity;-><init>(Lo/setClsId;IJLo/getBinaries;)V

    .line 646
    invoke-virtual {v1, v8}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listen(Lo/setBatteryVelocity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAndCleanupTarget(ILo/emptyMap;)V
    .locals 6

    .line 531
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 532
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4516
    sget-object v2, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v3, p2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 534
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->syncEngineListener:Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;

    invoke-interface {v2, v1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;->onError(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/emptyMap;)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v1, "Listen for %s failed"

    .line 535
    invoke-direct {p0, p2, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->logErrorIfInteresting(Lo/emptyMap;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :cond_2
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->limboDocumentRefs:Lo/setBinaries;

    invoke-virtual {p2, p1}, Lo/setBinaries;->referencesForId(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object p2

    .line 541
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->limboDocumentRefs:Lo/setBinaries;

    invoke-virtual {v0, p1}, Lo/setBinaries;->removeReferencesForId(I)Lo/CrashlyticsReportWithSessionId;

    .line 542
    invoke-virtual {p2}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 543
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->limboDocumentRefs:Lo/setBinaries;

    invoke-virtual {v0, p2}, Lo/setBinaries;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    invoke-direct {p0, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->removeLimboTarget(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private removeLimboTarget(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 3

    .line 553
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 555
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->stopListening(I)V

    .line 556
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pumpEnqueuedLimboResolutions()V

    :cond_0
    return-void
.end method

.method private resolvePendingWriteTasks(I)V
    .locals 3

    .line 487
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/removeBackgroundStateChangeListener;

    .line 2008
    iget-object v1, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private trackLimboChange(Lo/AutoValue_CrashlyticsReport_Session$Builder;)V
    .locals 3

    .line 623
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    .line 624
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "New document in limbo: %s"

    invoke-static {v0, v2, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->enqueuedLimboResolutions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pumpEnqueuedLimboResolutions()V

    :cond_0
    return-void
.end method

.method private updateTrackedLimboDocuments(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session$Builder;",
            ">;I)V"
        }
    .end annotation

    .line 601
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session$Builder;

    .line 602
    sget-object v1, Lo/newArray;->$SwitchMap$com$google$firebase$firestore$core$LimboDocumentChange$Type:[I

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session$Builder;->getType()Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 608
    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Document no longer in limbo: %s"

    invoke-static {v1, v3, v2}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->limboDocumentRefs:Lo/setBinaries;

    invoke-virtual {v1, v0, p2}, Lo/setBinaries;->removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 611
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->limboDocumentRefs:Lo/setBinaries;

    invoke-virtual {v1, v0}, Lo/setBinaries;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->removeLimboTarget(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 617
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session$Builder;->getType()Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "Unknown limbo change type: %s"

    invoke-static {p2, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 604
    :cond_2
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->limboDocumentRefs:Lo/setBinaries;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lo/setBinaries;->addReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 605
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->trackLimboChange(Lo/AutoValue_CrashlyticsReport_Session$Builder;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getActiveLimboDocumentResolutions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getEnqueuedLimboDocumentResolutions()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->enqueuedLimboResolutions:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;

    if-eqz v0, :cond_0

    .line 367
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->access$000(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->access$100(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    return-object p1

    .line 370
    :cond_0
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 373
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    .line 375
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/preferLastSpan$asBinder;

    invoke-virtual {v1}, Lo/preferLastSpan$asBinder;->getView()Lo/getArch;

    move-result-object v1

    invoke-virtual {v1}, Lo/getArch;->getSyncedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReportWithSessionId;->unionWith(Lo/CrashlyticsReportWithSessionId;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public handleCredentialChange(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 669
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    if-eqz v0, :cond_0

    .line 673
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->failOutstandingPendingWritesAwaitingTasks()V

    .line 675
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {v0, p1}, Lo/setCores;->handleUserChange(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Lo/populateFramesList;

    move-result-object p1

    const/4 v0, 0x0

    .line 676
    invoke-direct {p0, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->emitNewSnapsAndNotifyLocalStore(Lo/populateFramesList;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V

    .line 680
    :cond_0
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleCredentialChange()V

    return-void
.end method

.method public handleOnlineStateChange(Lo/setGeneratorType;)V
    .locals 6

    const-string v0, "handleOnlineStateChange"

    .line 349
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->assertCallback(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/preferLastSpan$asBinder;

    invoke-virtual {v2}, Lo/preferLastSpan$asBinder;->getView()Lo/getArch;

    move-result-object v2

    .line 353
    invoke-virtual {v2, p1}, Lo/getArch;->applyOnlineStateChange(Lo/setGeneratorType;)Lo/getCores;

    move-result-object v2

    .line 355
    invoke-virtual {v2}, Lo/getCores;->getLimboChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "OnlineState should not affect limbo documents."

    .line 354
    invoke-static {v3, v5, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-virtual {v2}, Lo/getCores;->getSnapshot()Lo/getDiskSpace;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 357
    invoke-virtual {v2}, Lo/getCores;->getSnapshot()Lo/getDiskSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_1
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->syncEngineListener:Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;

    invoke-interface {v1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;->onViewSnapshots(Ljava/util/List;)V

    .line 361
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->syncEngineListener:Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;

    invoke-interface {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;->handleOnlineStateChange(Lo/setGeneratorType;)V

    return-void
.end method

.method public handleRejectedListen(ILo/emptyMap;)V
    .locals 8

    const-string v0, "handleRejectedListen"

    .line 387
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->assertCallback(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;

    if-eqz v0, :cond_0

    .line 390
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->access$100(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 394
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboTargetsByKey:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pumpEnqueuedLimboResolutions()V

    .line 403
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_User;

    sget-object p2, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    .line 404
    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 407
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    .line 408
    new-instance p1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;

    sget-object v3, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 411
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 412
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;-><init>(Lo/withNdkPayload;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    .line 415
    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->handleRemoteEvent(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V

    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {v0, p1}, Lo/setCores;->releaseTarget(I)V

    .line 418
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->removeAndCleanupTarget(ILo/emptyMap;)V

    return-void
.end method

.method public handleRejectedWrite(ILo/emptyMap;)V
    .locals 4

    const-string v0, "handleRejectedWrite"

    .line 441
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->assertCallback(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {v0, p1}, Lo/setCores;->rejectBatch(I)Lo/populateFramesList;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lo/populateFramesList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 445
    invoke-virtual {v0}, Lo/populateFramesList;->getMinKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Write failed at %s"

    invoke-direct {p0, p2, v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->logErrorIfInteresting(Lo/emptyMap;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->notifyUser(ILo/emptyMap;)V

    .line 453
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->resolvePendingWriteTasks(I)V

    const/4 p1, 0x0

    .line 455
    invoke-direct {p0, v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->emitNewSnapsAndNotifyLocalStore(Lo/populateFramesList;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V

    return-void
.end method

.method public handleRemoteEvent(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V
    .locals 8

    const-string v0, "handleRemoteEvent"

    .line 309
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->assertCallback(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getTargetChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 314
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$Session$Event$Device$Builder;

    .line 315
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->activeLimboResolutionsByTarget:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getAddedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    invoke-virtual {v3}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v3

    .line 321
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getModifiedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v4

    invoke-virtual {v4}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 322
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getRemovedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v4

    invoke-virtual {v4}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "Limbo resolution for single document contains multiple changes."

    .line 319
    invoke-static {v3, v7, v6}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 325
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getAddedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    invoke-virtual {v3}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 326
    invoke-static {v2, v4}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->access$002(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;Z)Z

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getModifiedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    invoke-virtual {v3}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 329
    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->access$000(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;)Z

    move-result v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Received change for limbo target document without add."

    .line 328
    invoke-static {v1, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getRemovedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    invoke-virtual {v1}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->access$000(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;)Z

    move-result v1

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Received remove for limbo target document without add."

    .line 332
    invoke-static {v1, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-static {v2, v5}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->access$002(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;Z)Z

    goto/16 :goto_0

    .line 342
    :cond_4
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {v0, p1}, Lo/setCores;->applyRemoteEvent(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)Lo/populateFramesList;

    move-result-object v0

    .line 343
    invoke-direct {p0, v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->emitNewSnapsAndNotifyLocalStore(Lo/populateFramesList;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V

    return-void
.end method

.method public handleSuccessfulWrite(Lo/CrashlyticsReport$Architecture;)V
    .locals 2

    const-string v0, "handleSuccessfulWrite"

    .line 424
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->assertCallback(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lo/CrashlyticsReport$Architecture;->getBatch()Lo/CrashlyticsReport$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->notifyUser(ILo/emptyMap;)V

    .line 431
    invoke-virtual {p1}, Lo/CrashlyticsReport$Architecture;->getBatch()Lo/CrashlyticsReport$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v0

    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->resolvePendingWriteTasks(I)V

    .line 433
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    .line 434
    invoke-virtual {v0, p1}, Lo/setCores;->acknowledgeBatch(Lo/CrashlyticsReport$Architecture;)Lo/populateFramesList;

    move-result-object p1

    .line 436
    invoke-direct {p0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->emitNewSnapsAndNotifyLocalStore(Lo/populateFramesList;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V

    return-void
.end method

.method public listen(Lo/AutoValue_CrashlyticsReport_Session_Application;)I
    .locals 3

    const-string v0, "listen"

    .line 193
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->assertCallback(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "We already listen to query: %s"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setCores;->allocateTarget(Lo/setClsId;)Lo/setBatteryVelocity;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->initializeViewAndComputeSnapshot(Lo/AutoValue_CrashlyticsReport_Session_Application;I)Lo/getDiskSpace;

    move-result-object p1

    .line 198
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->syncEngineListener:Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;->onViewSnapshots(Ljava/util/List;)V

    .line 200
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listen(Lo/setBatteryVelocity;)V

    .line 201
    invoke-virtual {v0}, Lo/setBatteryVelocity;->getTargetId()I

    move-result p1

    return p1
.end method

.method public registerPendingWritesTask(Lo/removeBackgroundStateChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The network is disabled. The task returned by \'awaitPendingWrites()\' will not complete until the network is enabled."

    invoke-static {v0, v2, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {v0}, Lo/setCores;->getHighestUnacknowledgedBatchId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1008
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 478
    :cond_1
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 479
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_2
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->pendingWritesCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCallback(Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->syncEngineListener:Lo/AutoValue_CrashlyticsReport_Session_Application$1$onPostMessage;

    return-void
.end method

.method stopListening(Lo/AutoValue_CrashlyticsReport_Session_Application;)V
    .locals 4

    const-string v0, "stopListening"

    .line 243
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->assertCallback(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/preferLastSpan$asBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Trying to stop listening to a query not found"

    .line 246
    invoke-static {v2, v3, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queryViewsByQuery:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v0}, Lo/preferLastSpan$asBinder;->getTargetId()I

    move-result v0

    .line 251
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->queriesByTarget:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 252
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {p1, v0}, Lo/setCores;->releaseTarget(I)V

    .line 256
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->stopListening(I)V

    .line 257
    sget-object p1, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    invoke-direct {p0, v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->removeAndCleanupTarget(ILo/emptyMap;)V

    :cond_1
    return-void
.end method

.method public transaction(Lo/CrashlyticsReport$Type;Lo/listIterator;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CrashlyticsReport$Type;",
            "Lo/listIterator<",
            "Lo/getClsId;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-direct {v0, p1, v1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;-><init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/listIterator;)V

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->run()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public writeMutations(Ljava/util/List;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "writeMutations"

    .line 268
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->assertCallback(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->localStore:Lo/setCores;

    invoke-virtual {v0, p1}, Lo/setCores;->writeLocally(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Event$1;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event$1;->getBatchId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->addUserCallback(ILo/removeBackgroundStateChangeListener;)V

    .line 273
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event$1;->getChanges()Lo/populateFramesList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->emitNewSnapsAndNotifyLocalStore(Lo/populateFramesList;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V

    .line 274
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->fillWritePipeline()V

    return-void
.end method
