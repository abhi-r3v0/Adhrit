.class final Lo/getCustomAttributes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setException;
.implements Lo/setLog;


# instance fields
.field private currentSequenceNumber:J

.field private final garbageCollector:Lo/getExecution;

.field private inMemoryPins:Lo/setBinaries;

.field private final listenSequence:Lo/setOs;

.field private final orphanedSequenceNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final persistence:Lo/getSignal;

.field private final serializer:Lo/setDiskSpace;


# direct methods
.method constructor <init>(Lo/getSignal;Lo/getExecution$onMessageChannelReady;Lo/setDiskSpace;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    .line 42
    iput-object p3, p0, Lo/getCustomAttributes;->serializer:Lo/setDiskSpace;

    .line 43
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lo/getCustomAttributes;->orphanedSequenceNumbers:Ljava/util/Map;

    .line 44
    new-instance p3, Lo/setOs;

    .line 45
    invoke-virtual {p1}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object p1

    invoke-virtual {p1}, Lo/setUiOrientation;->getHighestListenSequenceNumber()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Lo/setOs;-><init>(J)V

    iput-object p3, p0, Lo/getCustomAttributes;->listenSequence:Lo/setOs;

    const-wide/16 v0, -0x1

    .line 46
    iput-wide v0, p0, Lo/getCustomAttributes;->currentSequenceNumber:J

    .line 47
    new-instance p1, Lo/getExecution;

    invoke-direct {p1, p0, p2}, Lo/getExecution;-><init>(Lo/setLog;Lo/getExecution$onMessageChannelReady;)V

    iput-object p1, p0, Lo/getCustomAttributes;->garbageCollector:Lo/getExecution;

    return-void
.end method

.method private isPinned(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;J)Z
    .locals 4

    .line 171
    invoke-direct {p0, p1}, Lo/getCustomAttributes;->mutationQueuesContainsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lo/getCustomAttributes;->inMemoryPins:Lo/setBinaries;

    invoke-virtual {v0, p1}, Lo/setBinaries;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 179
    :cond_1
    iget-object v0, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setUiOrientation;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 183
    :cond_2
    iget-object v0, p0, Lo/getCustomAttributes;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_3

    .line 184
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-lez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$getSequenceNumberCount$0([JLjava/lang/Long;)V
    .locals 4

    const/4 p1, 0x0

    .line 90
    aget-wide v0, p0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method

.method private mutationQueuesContainsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

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

    .line 159
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
    .locals 3

    .line 144
    iget-object v0, p0, Lo/getCustomAttributes;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-virtual {p0}, Lo/getCustomAttributes;->getCurrentSequenceNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final forEachOrphanedDocumentSequenceNumber(Lo/from;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lo/getCustomAttributes;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lo/getCustomAttributes;->isPinned(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {p1, v1}, Lo/from;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final forEachTarget(Lo/from;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Lo/setBatteryVelocity;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setUiOrientation;->forEachTarget(Lo/from;)V

    return-void
.end method

.method public final getByteSize()J
    .locals 5

    .line 193
    iget-object v0, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    iget-object v1, p0, Lo/getCustomAttributes;->serializer:Lo/setDiskSpace;

    invoke-virtual {v0, v1}, Lo/setUiOrientation;->getByteSize(Lo/setDiskSpace;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    .line 194
    iget-object v2, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v2}, Lo/getSignal;->getRemoteDocumentCache()Lo/getThreads;

    move-result-object v2

    iget-object v3, p0, Lo/getCustomAttributes;->serializer:Lo/setDiskSpace;

    invoke-virtual {v2, v3}, Lo/getThreads;->getByteSize(Lo/setDiskSpace;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 195
    iget-object v2, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v2}, Lo/getSignal;->getMutationQueues()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;

    .line 196
    iget-object v4, p0, Lo/getCustomAttributes;->serializer:Lo/setDiskSpace;

    invoke-virtual {v3, v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->getByteSize(Lo/setDiskSpace;)J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final getCurrentSequenceNumber()J
    .locals 6

    .line 73
    iget-wide v0, p0, Lo/getCustomAttributes;->currentSequenceNumber:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Attempting to get a sequence number outside of a transaction"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-wide v0, p0, Lo/getCustomAttributes;->currentSequenceNumber:J

    return-wide v0
.end method

.method public final getGarbageCollector()Lo/getExecution;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/getCustomAttributes;->garbageCollector:Lo/getExecution;

    return-object v0
.end method

.method public final getSequenceNumberCount()J
    .locals 5

    .line 86
    iget-object v0, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lo/setUiOrientation;->getTargetCount()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v2, v2, [J

    .line 88
    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application$1;->lambdaFactory$([J)Lo/from;

    move-result-object v3

    invoke-virtual {p0, v3}, Lo/getCustomAttributes;->forEachOrphanedDocumentSequenceNumber(Lo/from;)V

    const/4 v3, 0x0

    .line 92
    aget-wide v3, v2, v3

    add-long/2addr v0, v3

    return-wide v0
.end method

.method public final onTransactionCommitted()V
    .locals 6

    .line 65
    iget-wide v0, p0, Lo/getCustomAttributes;->currentSequenceNumber:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Committing a transaction without having started one"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iput-wide v3, p0, Lo/getCustomAttributes;->currentSequenceNumber:J

    return-void
.end method

.method public final onTransactionStarted()V
    .locals 6

    .line 57
    iget-wide v0, p0, Lo/getCustomAttributes;->currentSequenceNumber:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Starting a transaction without committing the previous one"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lo/getCustomAttributes;->listenSequence:Lo/setOs;

    invoke-virtual {v0}, Lo/setOs;->next()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getCustomAttributes;->currentSequenceNumber:J

    return-void
.end method

.method public final removeMutationReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lo/getCustomAttributes;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-virtual {p0}, Lo/getCustomAttributes;->getCurrentSequenceNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeOrphanedDocuments(J)I
    .locals 5

    .line 119
    iget-object v0, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getRemoteDocumentCache()Lo/getThreads;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lo/getThreads;->getDocuments()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 121
    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    .line 122
    invoke-direct {p0, v3, p1, p2}, Lo/getCustomAttributes;->isPinned(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    invoke-virtual {v0, v3}, Lo/getThreads;->remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    .line 124
    iget-object v4, p0, Lo/getCustomAttributes;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lo/getCustomAttributes;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-virtual {p0}, Lo/getCustomAttributes;->getCurrentSequenceNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeTarget(Lo/setBatteryVelocity;)V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lo/getCustomAttributes;->getCurrentSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/setBatteryVelocity;->withSequenceNumber(J)Lo/setBatteryVelocity;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setUiOrientation;->updateTargetData(Lo/setBatteryVelocity;)V

    return-void
.end method

.method public final removeTargets(JLandroid/util/SparseArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lo/getCustomAttributes;->persistence:Lo/getSignal;

    invoke-virtual {v0}, Lo/getSignal;->getTargetCache()Lo/setUiOrientation;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/setUiOrientation;->removeQueries(JLandroid/util/SparseArray;)I

    move-result p1

    return p1
.end method

.method public final setInMemoryPins(Lo/setBinaries;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/getCustomAttributes;->inMemoryPins:Lo/setBinaries;

    return-void
.end method

.method public final updateLimboDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lo/getCustomAttributes;->orphanedSequenceNumbers:Ljava/util/Map;

    invoke-virtual {p0}, Lo/getCustomAttributes;->getCurrentSequenceNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
