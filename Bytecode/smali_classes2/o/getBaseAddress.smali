.class Lo/getBaseAddress;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setException;
.implements Lo/setLog;


# static fields
.field static final REMOVE_ORPHANED_DOCUMENTS_BATCH_SIZE:I = 0x64


# instance fields
.field private currentSequenceNumber:J

.field private final garbageCollector:Lo/getExecution;

.field private inMemoryPins:Lo/setBinaries;

.field private listenSequence:Lo/setOs;

.field private final persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Lo/getExecution$onMessageChannelReady;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lo/getBaseAddress;->currentSequenceNumber:J

    .line 43
    iput-object p1, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    .line 44
    new-instance p1, Lo/getExecution;

    invoke-direct {p1, p0, p2}, Lo/getExecution;-><init>(Lo/setLog;Lo/getExecution$onMessageChannelReady;)V

    iput-object p1, p0, Lo/getBaseAddress;->garbageCollector:Lo/getExecution;

    return-void
.end method

.method private isPinned(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lo/getBaseAddress;->inMemoryPins:Lo/setBinaries;

    invoke-virtual {v0, p1}, Lo/setBinaries;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lo/getBaseAddress;->mutationQueuesContainKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$forEachOrphanedDocumentSequenceNumber$1(Lo/from;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 101
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/from;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getSequenceNumberCount$0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    .line 87
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$removeOrphanedDocuments$2(Lo/getBaseAddress;[ILandroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 170
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/toStringMap$ICustomTabsCallback;->decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p2

    .line 171
    invoke-static {p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p2

    .line 172
    invoke-direct {p0, p2}, Lo/getBaseAddress;->isPinned(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 174
    iget-object p1, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getRemoteDocumentCache()Lo/getSize;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/getSize;->remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    .line 175
    invoke-direct {p0, p2}, Lo/getBaseAddress;->removeSentinel(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    :cond_0
    return-void
.end method

.method private mutationQueuesContainKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 4

    .line 131
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT 1 FROM document_mutations WHERE path = ?"

    .line 132
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method private removeSentinel(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DELETE FROM target_documents WHERE path = ? AND target_id = 0"

    .line 151
    invoke-virtual {v0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private writeSentinel(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 4

    .line 197
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 201
    invoke-virtual {p0}, Lo/getBaseAddress;->getCurrentSequenceNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "INSERT OR REPLACE INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)"

    .line 198
    invoke-virtual {v0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lo/getBaseAddress;->writeSentinel(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    return-void
.end method

.method public forEachOrphanedDocumentSequenceNumber(Lo/from;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "select sequence_number from target_documents group by path having COUNT(*) = 1 AND target_id = 0"

    .line 99
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$Builder;->lambdaFactory$(Lo/from;)Lo/from;

    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-void
.end method

.method public forEachTarget(Lo/from;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Lo/setBatteryVelocity;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->forEachTarget(Lo/from;)V

    return-void
.end method

.method public getByteSize()J
    .locals 2

    .line 206
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getByteSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSequenceNumber()J
    .locals 6

    .line 69
    iget-wide v0, p0, Lo/getBaseAddress;->currentSequenceNumber:J

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

    .line 72
    iget-wide v0, p0, Lo/getBaseAddress;->currentSequenceNumber:J

    return-wide v0
.end method

.method public getGarbageCollector()Lo/getExecution;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/getBaseAddress;->garbageCollector:Lo/getExecution;

    return-object v0
.end method

.method public getSequenceNumberCount()J
    .locals 4

    .line 82
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->getTargetCount()J

    move-result-wide v0

    .line 83
    iget-object v2, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v3, "SELECT COUNT(*) FROM (SELECT sequence_number FROM target_documents GROUP BY path HAVING COUNT(*) = 1 AND target_id = 0)"

    .line 85
    invoke-virtual {v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v2

    invoke-static {}, Lo/getUuid;->lambdaFactory$()Lo/listIterator;

    move-result-object v3

    .line 87
    invoke-virtual {v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->firstValue(Lo/listIterator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onTransactionCommitted()V
    .locals 6

    .line 61
    iget-wide v0, p0, Lo/getBaseAddress;->currentSequenceNumber:J

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

    .line 64
    iput-wide v3, p0, Lo/getBaseAddress;->currentSequenceNumber:J

    return-void
.end method

.method public onTransactionStarted()V
    .locals 6

    .line 53
    iget-wide v0, p0, Lo/getBaseAddress;->currentSequenceNumber:J

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

    .line 56
    iget-object v0, p0, Lo/getBaseAddress;->listenSequence:Lo/setOs;

    invoke-virtual {v0}, Lo/setOs;->next()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getBaseAddress;->currentSequenceNumber:J

    return-void
.end method

.method public removeMutationReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lo/getBaseAddress;->writeSentinel(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    return-void
.end method

.method public removeOrphanedDocuments(J)I
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v4, "select path from target_documents group by path having COUNT(*) = 1 AND target_id = 0 AND sequence_number <= ? LIMIT ?"

    .line 165
    invoke-virtual {v2, v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-virtual {v2, v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v2

    invoke-static {p0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$1;->lambdaFactory$(Lo/getBaseAddress;[I)Lo/from;

    move-result-object v4

    .line 168
    invoke-virtual {v2, v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    move-result v2

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 182
    :cond_1
    aget p1, v1, v3

    return p1
.end method

.method public removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lo/getBaseAddress;->writeSentinel(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    return-void
.end method

.method public removeTarget(Lo/setBatteryVelocity;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lo/getBaseAddress;->getCurrentSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/setBatteryVelocity;->withSequenceNumber(J)Lo/setBatteryVelocity;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->updateTargetData(Lo/setBatteryVelocity;)V

    return-void
.end method

.method public removeTargets(JLandroid/util/SparseArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lo/getBaseAddress;->persistence:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->removeQueries(JLandroid/util/SparseArray;)I

    move-result p1

    return p1
.end method

.method public setInMemoryPins(Lo/setBinaries;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lo/getBaseAddress;->inMemoryPins:Lo/setBinaries;

    return-void
.end method

.method start(J)V
    .locals 1

    .line 48
    new-instance v0, Lo/setOs;

    invoke-direct {v0, p1, p2}, Lo/setOs;-><init>(J)V

    iput-object v0, p0, Lo/getBaseAddress;->listenSequence:Lo/setOs;

    return-void
.end method

.method public updateLimboDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lo/getBaseAddress;->writeSentinel(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    return-void
.end method
