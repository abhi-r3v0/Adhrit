.class public Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final INDEXING_SUPPORT_VERSION:I = 0xc

.field private static final SEQUENCE_NUMBER_BATCH_SIZE:I = 0x64

.field static final VERSION:I = 0xb


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final serializer:Lo/setDiskSpace;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lo/setDiskSpace;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->serializer:Lo/setDiskSpace;

    return-void
.end method

.method private addReadTime()V
    .locals 2

    .line 397
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN read_time_seconds INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE remote_documents ADD COLUMN read_time_nanos INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private addSequenceNumber()V
    .locals 2

    const-string v0, "target_documents"

    const-string v1, "sequence_number"

    .line 380
    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE target_documents ADD COLUMN sequence_number INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addTargetCount()V
    .locals 5

    const-string v0, "target_count"

    const-string v1, "target_globals"

    .line 369
    invoke-direct {p0, v1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ALTER TABLE target_globals ADD COLUMN target_count INTEGER"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "targets"

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 374
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 375
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private createLocalDocumentsCollectionIndex()V
    .locals 2

    const-string v0, "collection_index"

    .line 337
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lo/AFInAppEventType;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private createV1MutationQueue()V
    .locals 3

    const-string v0, "mutation_queues"

    const-string v1, "mutations"

    const-string v2, "document_mutations"

    .line 212
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lo/InstallReferrerClient;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private createV1RemoteDocumentCache()V
    .locals 2

    const-string v0, "remote_documents"

    .line 327
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lo/InstallReferrerStateListener;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private createV1TargetCache()V
    .locals 3

    const-string v0, "targets"

    const-string v1, "target_globals"

    const-string v2, "target_documents"

    .line 276
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lo/InstallReferrerClientImpl$ClientState;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private createV8CollectionParentsIndex()V
    .locals 4

    const-string v0, "collection_parents"

    .line 464
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lo/AppsFlyerConversionListener;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 479
    new-instance v0, Lo/setExecution$onPostMessage;

    invoke-direct {v0}, Lo/setExecution$onPostMessage;-><init>()V

    .line 481
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)"

    .line 482
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 484
    invoke-static {v0, v1}, Lo/getSymbol;->lambdaFactory$(Lo/setExecution$onPostMessage;Landroid/database/sqlite/SQLiteStatement;)Lo/from;

    move-result-object v0

    .line 497
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT path FROM remote_documents"

    invoke-direct {v1, v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 499
    invoke-static {v0}, Lo/getFile;->lambdaFactory$(Lo/from;)Lo/from;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    .line 506
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT path FROM document_mutations"

    invoke-direct {v1, v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 508
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame$Builder;->lambdaFactory$(Lo/from;)Lo/from;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-void
.end method

.method private dropLastLimboFreeSnapshotVersion()V
    .locals 3

    .line 402
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT target_id, target_proto FROM targets"

    invoke-direct {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0}, Lo/setSymbol;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Lo/from;

    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-void
.end method

.method private dropV1TargetCache()V
    .locals 2

    const-string v0, "targets"

    .line 315
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE targets"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string v0, "target_globals"

    .line 318
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE target_globals"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const-string v0, "target_documents"

    .line 321
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE target_documents"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private ensureSequenceNumbers()V
    .locals 8

    .line 427
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT highest_listen_sequence_number FROM target_globals LIMIT 1"

    invoke-direct {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lo/setFile;->lambdaFactory$()Lo/listIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->firstValue(Lo/listIterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Missing highest sequence number"

    .line 431
    invoke-static {v3, v5, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 433
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 434
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)"

    .line 435
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 438
    new-instance v5, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v6, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT RD.path FROM remote_documents AS RD WHERE NOT EXISTS (SELECT TD.path FROM target_documents AS TD WHERE RD.path = TD.path AND TD.target_id = 0) LIMIT ?"

    invoke-direct {v5, v6, v7}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    new-array v6, v1, [Ljava/lang/Object;

    const/16 v7, 0x64

    .line 445
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v5, v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v5

    new-array v1, v1, [Z

    :cond_1
    aput-boolean v2, v1, v2

    .line 452
    invoke-static {v1, v0, v3, v4}, Lo/isProximityOn;->lambdaFactory$([ZLandroid/database/sqlite/SQLiteStatement;J)Lo/from;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    .line 460
    aget-boolean v6, v1, v2

    if-nez v6, :cond_1

    return-void
.end method

.method private ensureTargetGlobal()V
    .locals 5

    .line 358
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "target_globals"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "0"

    filled-new-array {v1, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "INSERT INTO target_globals (highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos) VALUES (?, ?, ?, ?)"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private hasReadTime()Z
    .locals 7

    const-string v0, "remote_documents"

    const-string v1, "read_time_seconds"

    .line 386
    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "read_time_nanos"

    .line 387
    invoke-direct {p0, v0, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Table contained just one of read_time_seconds or read_time_nanos"

    .line 389
    invoke-static {v4, v6, v5}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method private ifTablesDontExist([Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 189
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 190
    aget-object v4, p1, v2

    .line 191
    invoke-direct {p0, v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->tableExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v2, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    if-eq v5, v3, :cond_2

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Expected all of "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to either exist or not, but "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exists and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 205
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 207
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skipping migration because all of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " already exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SQLiteSchema"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$createLocalDocumentsCollectionIndex$5(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V
    .locals 1

    .line 342
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE collection_index (uid TEXT, collection_path TEXT, field_path TEXT, field_value_type INTEGER, field_value_1, field_value_2, document_id TEXT, PRIMARY KEY (uid, collection_path, field_path, field_value_type, field_value_1, field_value_2, document_id))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$createV1MutationQueue$0(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE mutation_queues (uid TEXT PRIMARY KEY, last_acknowledged_batch_id INTEGER, last_stream_token BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE mutations (uid TEXT, batch_id INTEGER, mutations BLOB, PRIMARY KEY (uid, batch_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE document_mutations (uid TEXT, path TEXT, batch_id INTEGER, PRIMARY KEY (uid, path, batch_id))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$createV1RemoteDocumentCache$4(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V
    .locals 1

    .line 331
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE remote_documents (path TEXT PRIMARY KEY, contents BLOB)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$createV1TargetCache$3(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE targets (target_id INTEGER PRIMARY KEY, canonical_id TEXT, snapshot_version_seconds INTEGER, snapshot_version_nanos INTEGER, resume_token BLOB, last_listen_sequence_number INTEGER,target_proto BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX query_targets ON targets (canonical_id, target_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE target_globals (highest_target_id INTEGER, highest_listen_sequence_number INTEGER, last_remote_snapshot_version_seconds INTEGER, last_remote_snapshot_version_nanos INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE target_documents (target_id INTEGER, path TEXT, PRIMARY KEY (target_id, path))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE INDEX document_targets ON target_documents (path, target_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$10(Lo/setExecution$onPostMessage;Landroid/database/sqlite/SQLiteStatement;Lo/setJailbroken;)V
    .locals 1

    .line 486
    invoke-virtual {p0, p2}, Lo/setExecution$onPostMessage;->add(Lo/setJailbroken;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 487
    invoke-virtual {p2}, Lo/setRamUsed;->getLastSegment()Ljava/lang/String;

    move-result-object p0

    .line 488
    invoke-virtual {p2}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object p2

    check-cast p2, Lo/setJailbroken;

    .line 489
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    const/4 v0, 0x1

    .line 490
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p0, 0x2

    .line 491
    invoke-static {p2}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$11(Lo/from;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 501
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    .line 502
    invoke-virtual {p1}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    invoke-interface {p0, p1}, Lo/from;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$createV8CollectionParentsIndex$12(Lo/from;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 510
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    .line 511
    invoke-virtual {p1}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    invoke-interface {p0, p1}, Lo/from;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$createV8CollectionParentsIndex$9(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V
    .locals 1

    .line 471
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE collection_parents (collection_id TEXT, parent TEXT, PRIMARY KEY(collection_id, parent))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dropLastLimboFreeSnapshotVersion$6(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Landroid/database/Cursor;)V
    .locals 5

    const/4 v0, 0x0

    .line 405
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 406
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    .line 409
    :try_start_0
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event;->parseFrom([B)Lo/CrashlyticsReport$Session$Event;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lo/getEventAppExecutionSize;->toBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Session$Event$onPostMessage;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->clearLastLimboFreeSnapshotVersion()Lo/CrashlyticsReport$Session$Event$onPostMessage;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Session$Event;

    .line 411
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE targets SET target_proto = ? WHERE target_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 413
    invoke-virtual {p1}, Lo/writeRawVarint64;->toByteArray()[B

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 411
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "Failed to decode Query data for target %s"

    invoke-static {p1, p0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method static synthetic lambda$ensureSequenceNumbers$7(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    .line 430
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$ensureSequenceNumbers$8([ZLandroid/database/sqlite/SQLiteStatement;JLandroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    aput-boolean v0, p0, v1

    .line 455
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 456
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p0, 0x2

    .line 457
    invoke-virtual {p1, p0, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 458
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p4, p0, p2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Failed to insert a sentinel row"

    invoke-static {v0, p1, p0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$removeAcknowledgedMutations$1(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 257
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->removeMutationBatch(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$removeAcknowledgedMutations$2(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Landroid/database/Cursor;)V
    .locals 7

    const/4 v0, 0x0

    .line 250
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 251
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 253
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v5, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT batch_id FROM mutations WHERE uid = ? AND batch_id <= ?"

    invoke-direct {p1, v5, v6}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    .line 256
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p1, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    .line 257
    invoke-static {p0, v1}, Lo/getOffset;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Ljava/lang/String;)Lo/from;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-void
.end method

.method static synthetic lambda$rewriteCanonicalIds$13(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Landroid/database/Cursor;)V
    .locals 5

    const/4 v0, 0x0

    .line 544
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 545
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    .line 548
    :try_start_0
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event;->parseFrom([B)Lo/CrashlyticsReport$Session$Event;

    move-result-object p1

    .line 549
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->serializer:Lo/setDiskSpace;

    invoke-virtual {v3, p1}, Lo/setDiskSpace;->decodeTargetData(Lo/CrashlyticsReport$Session$Event;)Lo/setBatteryVelocity;

    move-result-object p1

    .line 550
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object p1

    invoke-virtual {p1}, Lo/setClsId;->getCanonicalId()Ljava/lang/String;

    move-result-object p1

    .line 551
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE targets SET canonical_id  = ? WHERE target_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 553
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 551
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 555
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "Failed to decode Query data for target %s"

    invoke-static {p1, p0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method private removeAcknowledgedMutations()V
    .locals 3

    .line 244
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT uid, last_acknowledged_batch_id FROM mutation_queues"

    invoke-direct {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 248
    invoke-static {p0}, Lo/setPc;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Lo/from;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-void
.end method

.method private removeMutationBatch(Ljava/lang/String;I)V
    .locals 6

    .line 262
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM mutations WHERE uid = ? AND batch_id = ?"

    .line 263
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 264
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    int-to-long v2, p2

    const/4 v4, 0x2

    .line 265
    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 266
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v5, "Mutatiohn batch (%s, %d) did not exist"

    invoke-static {v0, v5, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 272
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "DELETE FROM document_mutations WHERE uid = ? AND batch_id = ?"

    .line 270
    invoke-virtual {v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private rewriteCanonicalIds()V
    .locals 3

    .line 541
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT target_id, target_proto FROM targets"

    invoke-direct {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame$1;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Lo/from;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-void
.end method

.method private tableContainsColumn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 516
    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->getTableColumns(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 517
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tableExists(Ljava/lang/String;)Z
    .locals 4

    .line 561
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT 1=1 FROM sqlite_master WHERE tbl_name = ?"

    invoke-direct {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 562
    invoke-virtual {v0, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    .line 563
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v3
.end method


# virtual methods
.method getTableColumns(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 527
    :try_start_0
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PRAGMA table_info("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string p1, "name"

    .line 528
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 529
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 534
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_2
    throw p1
.end method

.method runMigrations()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 76
    invoke-virtual {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->runMigrations(II)V

    return-void
.end method

.method runMigrations(I)V
    .locals 1

    const/16 v0, 0xb

    .line 80
    invoke-virtual {p0, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->runMigrations(II)V

    return-void
.end method

.method runMigrations(II)V
    .locals 2

    if-gtz p1, :cond_0

    if-lez p2, :cond_0

    .line 98
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->createV1MutationQueue()V

    .line 99
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->createV1TargetCache()V

    .line 100
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->createV1RemoteDocumentCache()V

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 110
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->dropV1TargetCache()V

    .line 111
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->createV1TargetCache()V

    :cond_1
    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 116
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->ensureTargetGlobal()V

    .line 117
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->addTargetCount()V

    :cond_2
    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    .line 121
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->addSequenceNumber()V

    :cond_3
    const/4 v0, 0x6

    if-ge p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    .line 125
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->removeAcknowledgedMutations()V

    :cond_4
    const/4 v0, 0x7

    if-ge p1, v0, :cond_5

    if-lt p2, v0, :cond_5

    .line 129
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->ensureSequenceNumbers()V

    :cond_5
    const/16 v0, 0x8

    if-ge p1, v0, :cond_6

    if-lt p2, v0, :cond_6

    .line 133
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->createV8CollectionParentsIndex()V

    :cond_6
    const/16 v0, 0x9

    if-ge p1, v0, :cond_8

    if-lt p2, v0, :cond_8

    .line 137
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->hasReadTime()Z

    move-result v1

    if-nez v1, :cond_7

    .line 138
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->addReadTime()V

    goto :goto_0

    .line 145
    :cond_7
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->dropLastLimboFreeSnapshotVersion()V

    :cond_8
    :goto_0
    if-ne p1, v0, :cond_9

    const/16 v0, 0xa

    if-lt p2, v0, :cond_9

    .line 153
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->dropLastLimboFreeSnapshotVersion()V

    :cond_9
    const/16 v0, 0xb

    if-ge p1, v0, :cond_a

    if-lt p2, v0, :cond_a

    .line 158
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->rewriteCanonicalIds()V

    :cond_a
    const/16 v0, 0xc

    if-ge p1, v0, :cond_b

    if-lt p2, v0, :cond_b

    .line 175
    sget-boolean p1, Lo/setThreads;->INDEXING_SUPPORT_ENABLED:Z

    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkState(Z)V

    .line 176
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->createLocalDocumentsCollectionIndex()V

    :cond_b
    return-void
.end method
