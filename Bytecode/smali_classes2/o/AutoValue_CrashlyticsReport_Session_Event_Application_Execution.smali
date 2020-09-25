.class final Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCustomAttributes;


# instance fields
.field private batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/getRam;",
            ">;"
        }
    .end annotation
.end field

.field private lastStreamToken:Lo/SessionProtobufHelper;

.field private nextBatchId:I

.field private final persistence:Lo/getSignal;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getSignal;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->persistence:Lo/getSignal;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    .line 77
    new-instance p1, Lo/CrashlyticsReportWithSessionId;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lo/getRam;->BY_KEY:Ljava/util/Comparator;

    invoke-direct {p1, v0, v1}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    const/4 p1, 0x1

    .line 78
    iput p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->nextBatchId:I

    .line 79
    sget-object p1, Lo/CrashlyticsReport$Session$User;->EMPTY_STREAM_TOKEN:Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->lastStreamToken:Lo/SessionProtobufHelper;

    return-void
.end method

.method private indexOfBatchId(I)I
    .locals 2

    .line 347
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 355
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Builder;

    .line 356
    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private indexOfExistingBatchId(ILjava/lang/String;)I
    .locals 3

    .line 369
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->indexOfBatchId(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 370
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Batches must exist to be %s"

    invoke-static {v2, p2, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method private lookupMutationBatches(Lo/CrashlyticsReportWithSessionId;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->lookupMutationBatch(I)Lo/CrashlyticsReport$Builder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final acknowledgeBatch(Lo/CrashlyticsReport$Builder;Lo/SessionProtobufHelper;)V
    .locals 6

    .line 104
    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result p1

    const-string v0, "acknowledged"

    .line 105
    invoke-direct {p0, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->indexOfExistingBatchId(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Can only acknowledge the first batch in the mutation queue"

    .line 106
    invoke-static {v3, v5, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Builder;

    .line 111
    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 114
    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "Queue ordering failure: expected batch %d, got batch %d"

    .line 110
    invoke-static {v3, p1, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {p2}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->lastStreamToken:Lo/SessionProtobufHelper;

    return-void
.end method

.method public final addMutationBatch(Lo/getStream;Ljava/util/List;Ljava/util/List;)Lo/CrashlyticsReport$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getStream;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;)",
            "Lo/CrashlyticsReport$Builder;"
        }
    .end annotation

    .line 132
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Mutation batches should not be empty"

    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->nextBatchId:I

    add-int/lit8 v3, v0, 0x1

    .line 135
    iput v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->nextBatchId:I

    .line 137
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 139
    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    sub-int/2addr v3, v1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$Builder;

    .line 141
    invoke-virtual {v3}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v3

    if-ge v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Mutation batchIds must be monotonically increasing order"

    .line 140
    invoke-static {v1, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_1
    new-instance v1, Lo/CrashlyticsReport$Builder;

    invoke-direct {v1, v0, p1, p2, p3}, Lo/CrashlyticsReport$Builder;-><init>(ILo/getStream;Ljava/util/List;Ljava/util/List;)V

    .line 145
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/CrashlyticsReport$FilesPayload;

    .line 149
    iget-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    new-instance v2, Lo/getRam;

    .line 150
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    invoke-virtual {p3, v2}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object p3

    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    .line 152
    iget-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->persistence:Lo/getSignal;

    .line 153
    invoke-virtual {p3}, Lo/getSignal;->getIndexManager()Lo/setArch;

    move-result-object p3

    .line 154
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p2

    invoke-virtual {p2}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object p2

    check-cast p2, Lo/setJailbroken;

    invoke-interface {p3, p2}, Lo/setArch;->addToCollectionParentIndex(Lo/setJailbroken;)V

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method final containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 3

    .line 325
    new-instance v0, Lo/getRam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 327
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v2, v0}, Lo/CrashlyticsReportWithSessionId;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 332
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRam;

    invoke-virtual {v0}, Lo/getRam;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAllMutationBatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAllMutationBatchesAffectingDocumentKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ")",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Lo/getRam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v3, v0}, Lo/CrashlyticsReportWithSessionId;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 200
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getRam;

    .line 202
    invoke-virtual {v3}, Lo/getRam;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    invoke-virtual {v3}, Lo/getRam;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->lookupMutationBatch(I)Lo/CrashlyticsReport$Builder;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Batches in the index must exist in the main table"

    .line 207
    invoke-static {v4, v6, v5}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final getAllMutationBatchesAffectingDocumentKeys(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lo/eventFromJson;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 221
    new-instance v2, Lo/getRam;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 222
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v3, v2}, Lo/CrashlyticsReportWithSessionId;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 223
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getRam;

    .line 225
    invoke-virtual {v3}, Lo/getRam;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {v3}, Lo/getRam;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_1
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->lookupMutationBatches(Lo/CrashlyticsReportWithSessionId;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getAllMutationBatchesAffectingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            ")",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isCollectionGroupQuery()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CollectionGroup queries should be handled in LocalDocumentsView"

    .line 237
    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 250
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->isDocumentKey(Lo/setJailbroken;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 251
    invoke-virtual {p1, v2}, Lo/setRamUsed;->append(Ljava/lang/String;)Lo/setRamUsed;

    move-result-object v2

    check-cast v2, Lo/setJailbroken;

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 253
    :goto_0
    new-instance v3, Lo/getRam;

    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 256
    new-instance v1, Lo/CrashlyticsReportWithSessionId;

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lo/eventFromJson;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v2, v3}, Lo/CrashlyticsReportWithSessionId;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 260
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getRam;

    .line 262
    invoke-virtual {v3}, Lo/getRam;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v4

    .line 263
    invoke-virtual {p1, v4}, Lo/setRamUsed;->isPrefixOf(Lo/setRamUsed;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    invoke-virtual {v4}, Lo/setRamUsed;->length()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 271
    invoke-virtual {v3}, Lo/getRam;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    goto :goto_1

    .line 275
    :cond_2
    invoke-direct {p0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->lookupMutationBatches(Lo/CrashlyticsReportWithSessionId;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final getByteSize(Lo/setDiskSpace;)J
    .locals 5

    .line 376
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$Builder;

    .line 377
    invoke-virtual {p1, v3}, Lo/setDiskSpace;->encodeMutationBatch(Lo/CrashlyticsReport$Builder;)Lo/CrashlyticsReport$Session$Device$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lo/getEventAppExecutionSize;->getSerializedSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final getHighestUnacknowledgedBatchId()I
    .locals 1

    .line 186
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->nextBatchId:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getLastStreamToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->lastStreamToken:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public final getNextMutationBatchAfterBatchId(I)Lo/CrashlyticsReport$Builder;
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 179
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->indexOfBatchId(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 181
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Builder;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final lookupMutationBatch(I)Lo/CrashlyticsReport$Builder;
    .locals 3

    .line 163
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->indexOfBatchId(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 164
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Builder;

    .line 169
    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "If found batch must match"

    invoke-static {p1, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final performConsistencyCheck()V
    .locals 3

    .line 315
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    .line 317
    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Document leak -- detected dangling mutation references when queue is empty."

    .line 316
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeMutationBatch(Lo/CrashlyticsReport$Builder;)V
    .locals 5

    .line 296
    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v0

    const-string v1, "removed"

    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->indexOfExistingBatchId(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Can only remove the first entry of the mutation queue"

    .line 297
    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    .line 303
    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$FilesPayload;

    .line 304
    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    .line 305
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->persistence:Lo/getSignal;

    invoke-virtual {v3}, Lo/getSignal;->getReferenceDelegate()Lo/setException;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/setException;->removeMutationReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    .line 307
    new-instance v3, Lo/getRam;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lo/getRam;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;I)V

    .line 308
    invoke-virtual {v0, v3}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    goto :goto_1

    .line 310
    :cond_1
    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->batchesByDocumentKey:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method public final setLastStreamToken(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 126
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->lastStreamToken:Lo/SessionProtobufHelper;

    return-void
.end method

.method public final start()V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;->nextBatchId:I

    :cond_0
    return-void
.end method
