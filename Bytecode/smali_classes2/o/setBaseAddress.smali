.class final Lo/setBaseAddress;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCustomAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setBaseAddress$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final BLOB_MAX_INLINE_LENGTH:I = 0xf4240


# instance fields
.field private final db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

.field private lastStreamToken:Lo/SessionProtobufHelper;

.field private nextBatchId:I

.field private final serializer:Lo/setDiskSpace;

.field private final uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Lo/setDiskSpace;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    .line 93
    iput-object p2, p0, Lo/setBaseAddress;->serializer:Lo/setDiskSpace;

    .line 94
    invoke-virtual {p3}, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->getUid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    .line 95
    sget-object p1, Lo/CrashlyticsReport$Session$User;->EMPTY_STREAM_TOKEN:Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/setBaseAddress;->lastStreamToken:Lo/SessionProtobufHelper;

    return-void
.end method

.method private decodeInlineMutationBatch(I[B)Lo/CrashlyticsReport$Builder;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 445
    :try_start_0
    array-length v2, p2

    const v3, 0xf4240

    if-ge v2, v3, :cond_0

    .line 446
    iget-object p1, p0, Lo/setBaseAddress;->serializer:Lo/setDiskSpace;

    .line 447
    invoke-static {p2}, Lo/CrashlyticsReport$Session$Device$Builder;->parseFrom([B)Lo/CrashlyticsReport$Session$Device$Builder;

    move-result-object p2

    .line 446
    invoke-virtual {p1, p2}, Lo/setDiskSpace;->decodeMutationBatch(Lo/CrashlyticsReport$Session$Device$Builder;)Lo/CrashlyticsReport$Builder;

    move-result-object p1

    return-object p1

    .line 450
    :cond_0
    new-instance v2, Lo/setBaseAddress$ICustomTabsCallback;

    invoke-direct {v2, p2}, Lo/setBaseAddress$ICustomTabsCallback;-><init>([B)V

    .line 451
    :goto_0
    invoke-static {v2}, Lo/setBaseAddress$ICustomTabsCallback;->access$000(Lo/setBaseAddress$ICustomTabsCallback;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 455
    invoke-virtual {v2}, Lo/setBaseAddress$ICustomTabsCallback;->numChunks()I

    move-result p2

    mul-int p2, p2, v3

    add-int/2addr p2, v1

    .line 457
    iget-object v4, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v5, "SELECT SUBSTR(mutations, ?, ?) FROM mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v4, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 458
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    const/4 p2, 0x2

    iget-object v6, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    aput-object v6, v5, p2

    const/4 p2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p2

    invoke-virtual {v4, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p2

    .line 459
    invoke-virtual {p2, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->first(Lo/from;)I

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {v2}, Lo/setBaseAddress$ICustomTabsCallback;->result()Lo/SessionProtobufHelper;

    move-result-object p1

    .line 463
    iget-object p2, p0, Lo/setBaseAddress;->serializer:Lo/setDiskSpace;

    .line 464
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Device$Builder;->parseFrom(Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Session$Device$Builder;

    move-result-object p1

    .line 463
    invoke-virtual {p2, p1}, Lo/setDiskSpace;->decodeMutationBatch(Lo/CrashlyticsReport$Session$Device$Builder;)Lo/CrashlyticsReport$Builder;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "MutationBatch failed to parse: %s"

    .line 466
    invoke-static {p1, p2}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method static synthetic lambda$getAllMutationBatches$6(Lo/setBaseAddress;Ljava/util/List;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 254
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lo/setBaseAddress;->decodeInlineMutationBatch(I[B)Lo/CrashlyticsReport$Builder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getAllMutationBatchesAffectingDocumentKey$7(Lo/setBaseAddress;Ljava/util/List;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 272
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lo/setBaseAddress;->decodeInlineMutationBatch(I[B)Lo/CrashlyticsReport$Builder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getAllMutationBatchesAffectingDocumentKeys$8(Lo/setBaseAddress;Ljava/util/Set;Ljava/util/List;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 306
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 309
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/setBaseAddress;->decodeInlineMutationBatch(I[B)Lo/CrashlyticsReport$Builder;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$getAllMutationBatchesAffectingDocumentKeys$9(Lo/CrashlyticsReport$Builder;Lo/CrashlyticsReport$Builder;)I
    .locals 0

    .line 321
    invoke-virtual {p0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result p0

    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result p1

    invoke-static {p0, p1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getAllMutationBatchesAffectingQuery$10(Lo/setBaseAddress;Ljava/util/List;ILandroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x0

    .line 369
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 370
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 371
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$Builder;

    invoke-virtual {v1}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/toStringMap$ICustomTabsCallback;->decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Lo/setRamUsed;->length()I

    move-result v1

    if-eq v1, p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x2

    .line 385
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lo/setBaseAddress;->decodeInlineMutationBatch(I[B)Lo/CrashlyticsReport$Builder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getHighestUnacknowledgedBatchId$5(Landroid/database/Cursor;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getNextMutationBatchAfterBatchId$4(Lo/setBaseAddress;Landroid/database/Cursor;)Lo/CrashlyticsReport$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 236
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/setBaseAddress;->decodeInlineMutationBatch(I[B)Lo/CrashlyticsReport$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$loadNextBatchIdAcrossAllUsers$1(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$loadNextBatchIdAcrossAllUsers$2(Lo/setBaseAddress;Landroid/database/Cursor;)V
    .locals 2

    .line 143
    iget v0, p0, Lo/setBaseAddress;->nextBatchId:I

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lo/setBaseAddress;->nextBatchId:I

    return-void
.end method

.method static synthetic lambda$lookupMutationBatch$3(Lo/setBaseAddress;ILandroid/database/Cursor;)Lo/CrashlyticsReport$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/setBaseAddress;->decodeInlineMutationBatch(I[B)Lo/CrashlyticsReport$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$performConsistencyCheck$11(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 423
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    .line 424
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$start$0(Lo/setBaseAddress;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-static {p1}, Lo/SessionProtobufHelper;->onNavigationEvent([B)Lo/SessionProtobufHelper;

    move-result-object p1

    iput-object p1, p0, Lo/setBaseAddress;->lastStreamToken:Lo/SessionProtobufHelper;

    return-void
.end method

.method private loadNextBatchIdAcrossAllUsers()V
    .locals 6

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v2, "SELECT uid FROM mutation_queues"

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception$1;->lambdaFactory$(Ljava/util/List;)Lo/from;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    const/4 v1, 0x0

    .line 139
    iput v1, p0, Lo/setBaseAddress;->nextBatchId:I

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    iget-object v4, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v5, "SELECT MAX(batch_id) FROM mutations WHERE uid = ?"

    invoke-virtual {v4, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 142
    invoke-virtual {v4, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v2

    invoke-static {p0}, Lo/getCausedBy;->lambdaFactory$(Lo/setBaseAddress;)Lo/from;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    goto :goto_0

    .line 146
    :cond_0
    iget v0, p0, Lo/setBaseAddress;->nextBatchId:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/setBaseAddress;->nextBatchId:I

    return-void
.end method

.method private writeMutationQueueMetadata()V
    .locals 4

    .line 172
    iget-object v0, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, -0x1

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/setBaseAddress;->lastStreamToken:Lo/SessionProtobufHelper;

    .line 178
    invoke-virtual {v2}, Lo/SessionProtobufHelper;->onPostMessage()[B

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "INSERT OR REPLACE INTO mutation_queues (uid, last_acknowledged_batch_id, last_stream_token) VALUES (?, ?, ?)"

    .line 172
    invoke-virtual {v0, v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final acknowledgeBatch(Lo/CrashlyticsReport$Builder;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 156
    invoke-static {p2}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/setBaseAddress;->lastStreamToken:Lo/SessionProtobufHelper;

    .line 157
    invoke-direct {p0}, Lo/setBaseAddress;->writeMutationQueueMetadata()V

    return-void
.end method

.method public final addMutationBatch(Lo/getStream;Ljava/util/List;Ljava/util/List;)Lo/CrashlyticsReport$Builder;
    .locals 11
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

    .line 184
    iget v0, p0, Lo/setBaseAddress;->nextBatchId:I

    add-int/lit8 v1, v0, 0x1

    .line 185
    iput v1, p0, Lo/setBaseAddress;->nextBatchId:I

    .line 187
    new-instance v1, Lo/CrashlyticsReport$Builder;

    invoke-direct {v1, v0, p1, p2, p3}, Lo/CrashlyticsReport$Builder;-><init>(ILo/getStream;Ljava/util/List;Ljava/util/List;)V

    .line 188
    iget-object p1, p0, Lo/setBaseAddress;->serializer:Lo/setDiskSpace;

    invoke-virtual {p1, v1}, Lo/setDiskSpace;->encodeMutationBatch(Lo/CrashlyticsReport$Builder;)Lo/CrashlyticsReport$Session$Device$Builder;

    move-result-object p1

    .line 190
    iget-object p2, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 194
    invoke-interface {p1}, Lo/WireFormat$FieldType$2;->toByteArray()[B

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const-string p1, "INSERT INTO mutations (uid, batch_id, mutations) VALUES (?, ?, ?)"

    .line 190
    invoke-virtual {p2, p1, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 201
    iget-object p2, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v3, "INSERT INTO document_mutations (uid, path, batch_id) VALUES (?, ?, ?)"

    .line 202
    invoke-virtual {p2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 203
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$FilesPayload;

    .line 204
    invoke-virtual {v3}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    .line 205
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v7

    invoke-static {v7}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object v7

    .line 210
    iget-object v8, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    new-array v9, v2, [Ljava/lang/Object;

    iget-object v10, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    aput-object v10, v9, v5

    aput-object v7, v9, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v4

    invoke-virtual {v8, p2, v9}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    .line 212
    iget-object v7, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v7}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getIndexManager()Lo/setArch;

    move-result-object v7

    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v3

    invoke-virtual {v3}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object v3

    check-cast v3, Lo/setJailbroken;

    invoke-interface {v7, v3}, Lo/setArch;->addToCollectionParentIndex(Lo/setJailbroken;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getAllMutationBatches()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-object v1, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v2, "SELECT batch_id, SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? ORDER BY batch_id ASC"

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xf4240

    .line 253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    invoke-static {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception$Builder;->lambdaFactory$(Lo/setBaseAddress;Ljava/util/List;)Lo/from;

    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-object v0
.end method

.method public final getAllMutationBatchesAffectingDocumentKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/util/List;
    .locals 5
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

    .line 260
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p1

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v1, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v2, "SELECT m.batch_id, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path = ? AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xf4240

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    invoke-static {p0, v0}, Lo/setFrames;->lambdaFactory$(Lo/setBaseAddress;Ljava/util/List;)Lo/from;

    move-result-object v1

    .line 272
    invoke-virtual {p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-object v0
.end method

.method public final getAllMutationBatchesAffectingDocumentKeys(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 7
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

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 282
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-static {v0}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_0
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;

    iget-object v1, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xf4240

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v2, "SELECT DISTINCT dm.batch_id, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path IN ("

    const-string v5, ") AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 301
    :goto_1
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->hasMoreSubqueries()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->performNextSubquery()Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v2

    invoke-static {p0, v1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;->lambdaFactory$(Lo/setBaseAddress;Ljava/util/Set;Ljava/util/List;)Lo/from;

    move-result-object v3

    .line 304
    invoke-virtual {v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->getSubqueriesPerformed()I

    move-result p1

    if-le p1, v6, :cond_2

    .line 318
    invoke-static {}, Lo/getFrames;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

.method public final getAllMutationBatchesAffectingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;)Ljava/util/List;
    .locals 8
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

    .line 329
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isCollectionGroupQuery()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CollectionGroup queries should be handled in LocalDocumentsView"

    .line 328
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 349
    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 354
    iget-object v5, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v6, "SELECT dm.batch_id, dm.path, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path >= ? AND dm.path < ? AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id"

    invoke-virtual {v5, v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0xf4240

    .line 363
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object p1, v6, v1

    const/4 p1, 0x3

    aput-object v3, v6, p1

    invoke-virtual {v5, v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    invoke-static {p0, v4, v0}, Lo/getOverflowCount;->lambdaFactory$(Lo/setBaseAddress;Ljava/util/List;I)Lo/from;

    move-result-object v0

    .line 364
    invoke-virtual {p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-object v4
.end method

.method public final getHighestUnacknowledgedBatchId()I
    .locals 4

    .line 241
    iget-object v0, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT IFNULL(MAX(batch_id), ?) FROM mutations WHERE uid = ?"

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {}, Lo/setOverflowCount;->lambdaFactory$()Lo/listIterator;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->firstValue(Lo/listIterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getLastStreamToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 162
    iget-object v0, p0, Lo/setBaseAddress;->lastStreamToken:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public final getNextMutationBatchAfterBatchId(I)Lo/CrashlyticsReport$Builder;
    .locals 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 231
    iget-object v1, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v2, "SELECT batch_id, SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? AND batch_id >= ? ORDER BY batch_id ASC LIMIT 1"

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xf4240

    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    invoke-static {p0}, Lo/setCausedBy;->lambdaFactory$(Lo/setBaseAddress;)Lo/listIterator;

    move-result-object v0

    .line 236
    invoke-virtual {p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->firstValue(Lo/listIterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Builder;

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 4

    .line 151
    iget-object v0, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT batch_id FROM mutations WHERE uid = ? LIMIT 1"

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final lookupMutationBatch(I)Lo/CrashlyticsReport$Builder;
    .locals 4

    .line 221
    iget-object v0, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? AND batch_id = ?"

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xf4240

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {p0, p1}, Lo/setReason;->lambdaFactory$(Lo/setBaseAddress;I)Lo/listIterator;

    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->firstValue(Lo/listIterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Builder;

    return-object p1
.end method

.method public final performConsistencyCheck()V
    .locals 6

    .line 413
    invoke-virtual {p0}, Lo/setBaseAddress;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    iget-object v1, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v2, "SELECT path FROM document_mutations WHERE uid = ?"

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 420
    invoke-virtual {v1, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception;->lambdaFactory$(Ljava/util/List;)Lo/from;

    move-result-object v3

    .line 421
    invoke-virtual {v1, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    .line 428
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v0, "Document leak -- detected dangling mutation references when queue is empty. Dangling keys: %s"

    .line 427
    invoke-static {v1, v0, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMutationBatch(Lo/CrashlyticsReport$Builder;)V
    .locals 10

    .line 393
    iget-object v0, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "DELETE FROM mutations WHERE uid = ? AND batch_id = ?"

    .line 394
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v2, "DELETE FROM document_mutations WHERE uid = ? AND path = ? AND batch_id = ?"

    .line 397
    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 399
    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v2

    .line 400
    iget-object v3, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v3, v0, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 401
    iget-object v5, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    const-string v5, "Mutation batch (%s, %d) did not exist"

    invoke-static {v0, v5, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$FilesPayload;

    .line 404
    invoke-virtual {v0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v3

    invoke-static {v3}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object v3

    .line 406
    iget-object v5, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    aput-object v9, v6, v7

    aput-object v3, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-virtual {v5, v1, v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    .line 407
    iget-object v3, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getReferenceDelegate()Lo/getBaseAddress;

    move-result-object v3

    invoke-virtual {v3, v0}, Lo/getBaseAddress;->removeMutationReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setLastStreamToken(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 167
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/setBaseAddress;->lastStreamToken:Lo/SessionProtobufHelper;

    .line 168
    invoke-direct {p0}, Lo/setBaseAddress;->writeMutationQueueMetadata()V

    return-void
.end method

.method public final start()V
    .locals 4

    .line 102
    invoke-direct {p0}, Lo/setBaseAddress;->loadNextBatchIdAcrossAllUsers()V

    .line 104
    iget-object v0, p0, Lo/setBaseAddress;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT last_stream_token FROM mutation_queues WHERE uid = ?"

    .line 105
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/setBaseAddress;->uid:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 106
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {p0}, Lo/setUuid;->lambdaFactory$(Lo/setBaseAddress;)Lo/from;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->first(Lo/from;)I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lo/setBaseAddress;->writeMutationQueueMetadata()V

    :cond_0
    return-void
.end method
