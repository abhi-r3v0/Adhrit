.class final Lo/getUiOrientation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setException;


# instance fields
.field private inMemoryPins:Lo/setBinaries;

.field private orphanedDocuments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final persistence:Lo/getSignal;


# direct methods
.method constructor <init>(Lo/getSignal;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/getUiOrientation;->persistence:Lo/getSignal;

    return-void
.end method

.method private isReferenced(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 2

    .line 103
    iget-object v0, p0, Lo/getUiOrientation;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setUiOrientation;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lo/getUiOrientation;->mutationQueuesContainKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 111
    :cond_1
    iget-object v0, p0, Lo/getUiOrientation;->inMemoryPins:Lo/setBinaries;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lo/setBinaries;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private mutationQueuesContainKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 2

    .line 93
    iget-object v0, p0, Lo/getUiOrientation;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getMutationQueues()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;

    .line 94
    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final addReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCurrentSequenceNumber()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final onTransactionCommitted()V
    .locals 4

    .line 74
    iget-object v0, p0, Lo/getUiOrientation;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getRemoteDocumentCache()Lo/getThreads;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 76
    invoke-direct {p0, v2}, Lo/getUiOrientation;->isReferenced(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {v0, v2}, Lo/getThreads;->remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    return-void
.end method

.method public final onTransactionStarted()V
    .locals 1

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    return-void
.end method

.method public final removeMutationReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTarget(Lo/setBatteryVelocity;)V
    .locals 4

    .line 59
    iget-object v0, p0, Lo/getUiOrientation;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/setUiOrientation;->getMatchingKeysForTargetId(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    invoke-virtual {v1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 61
    iget-object v3, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0, p1}, Lo/setUiOrientation;->removeTargetData(Lo/setBatteryVelocity;)V

    return-void
.end method

.method public final setInMemoryPins(Lo/setBinaries;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/getUiOrientation;->inMemoryPins:Lo/setBinaries;

    return-void
.end method

.method public final updateLimboDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Lo/getUiOrientation;->isReferenced(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lo/getUiOrientation;->orphanedDocuments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
