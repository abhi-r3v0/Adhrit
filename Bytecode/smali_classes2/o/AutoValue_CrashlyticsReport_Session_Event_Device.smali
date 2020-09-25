.class final Lo/AutoValue_CrashlyticsReport_Session_Event_Device;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;,
        Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

.field private highestTargetId:I

.field private lastListenSequenceNumber:J

.field private lastRemoteSnapshotVersion:Lo/withNdkPayload;

.field private final localSerializer:Lo/setDiskSpace;

.field private targetCount:J


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Lo/setDiskSpace;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    .line 43
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    .line 44
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->localSerializer:Lo/setDiskSpace;

    return-void
.end method

.method private decodeTargetData([B)Lo/setBatteryVelocity;
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->localSerializer:Lo/setDiskSpace;

    .line 239
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event;->parseFrom([B)Lo/CrashlyticsReport$Session$Event;

    move-result-object p1

    .line 238
    invoke-virtual {v0, p1}, Lo/setDiskSpace;->decodeTargetData(Lo/CrashlyticsReport$Session$Event;)Lo/setBatteryVelocity;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TargetData failed to parse: %s"

    .line 241
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method static synthetic lambda$forEachTarget$1(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/from;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->decodeTargetData([B)Lo/setBatteryVelocity;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/from;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getMatchingKeysForTargetId$4(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;->keys:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;->keys:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method static synthetic lambda$getTargetData$3(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/setClsId;Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p3

    invoke-direct {p0, p3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->decodeTargetData([B)Lo/setBatteryVelocity;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iput-object p0, p2, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;->targetData:Lo/setBatteryVelocity;

    :cond_0
    return-void
.end method

.method static synthetic lambda$removeQueries$2(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Landroid/util/SparseArray;[ILandroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 199
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 200
    invoke-direct {p0, p3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->removeTarget(I)V

    .line 201
    aget p0, p2, v0

    add-int/lit8 p0, p0, 0x1

    aput p0, p2, v0

    :cond_0
    return-void
.end method

.method static synthetic lambda$start$0(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Landroid/database/Cursor;)V
    .locals 5

    const/4 v0, 0x0

    .line 56
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->highestTargetId:I

    const/4 v0, 0x1

    .line 57
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastListenSequenceNumber:J

    .line 58
    new-instance v0, Lo/withNdkPayload;

    new-instance v1, Lo/getStream;

    const/4 v2, 0x2

    .line 59
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lo/getStream;-><init>(JI)V

    invoke-direct {v0, v1}, Lo/withNdkPayload;-><init>(Lo/getStream;)V

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    const/4 v0, 0x4

    .line 60
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->targetCount:J

    return-void
.end method

.method private removeMatchingKeysForTargetId(I)V
    .locals 3

    .line 282
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DELETE FROM target_documents WHERE target_id = ?"

    invoke-virtual {v0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private removeTarget(I)V
    .locals 4

    .line 172
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->removeMatchingKeysForTargetId(I)V

    .line 173
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DELETE FROM targets WHERE target_id = ?"

    invoke-virtual {v0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->targetCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->targetCount:J

    return-void
.end method

.method private saveTargetData(Lo/setBatteryVelocity;)V
    .locals 7

    .line 98
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v0

    .line 99
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object v1

    invoke-virtual {v1}, Lo/setClsId;->getCanonicalId()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object v2

    invoke-virtual {v2}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->localSerializer:Lo/setDiskSpace;

    .line 103
    invoke-virtual {v3, p1}, Lo/setDiskSpace;->encodeTargetData(Lo/setBatteryVelocity;)Lo/CrashlyticsReport$Session$Event;

    move-result-object v3

    .line 105
    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    .line 117
    invoke-virtual {v2}, Lo/getStream;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    .line 118
    invoke-virtual {v2}, Lo/getStream;->getNanoseconds()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v5, v1

    .line 119
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v0

    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onPostMessage()[B

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v5, v1

    .line 120
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, v5, v0

    .line 121
    invoke-virtual {v3}, Lo/writeRawVarint64;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v5, v0

    const-string p1, "INSERT OR REPLACE INTO targets (target_id, canonical_id, snapshot_version_seconds, snapshot_version_nanos, resume_token, last_listen_sequence_number, target_proto) VALUES (?, ?, ?, ?, ?, ?, ?)"

    .line 105
    invoke-virtual {v4, p1, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateMetadata(Lo/setBatteryVelocity;)Z
    .locals 7

    .line 127
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v0

    iget v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->highestTargetId:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 128
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v0

    iput v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->highestTargetId:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v3

    iget-wide v5, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastListenSequenceNumber:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 133
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastListenSequenceNumber:J

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    return v2
.end method

.method private writeMetadata()V
    .locals 4

    .line 160
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->highestTargetId:I

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastListenSequenceNumber:J

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    .line 166
    invoke-virtual {v2}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object v2

    invoke-virtual {v2}, Lo/getStream;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    .line 167
    invoke-virtual {v2}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object v2

    invoke-virtual {v2}, Lo/getStream;->getNanoseconds()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->targetCount:J

    .line 168
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "UPDATE target_globals SET highest_target_id = ?, highest_listen_sequence_number = ?, last_remote_snapshot_version_seconds = ?, last_remote_snapshot_version_nanos = ?, target_count = ?"

    .line 160
    invoke-virtual {v0, v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addMatchingKeys(Lo/CrashlyticsReportWithSessionId;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;I)V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "INSERT OR IGNORE INTO target_documents (target_id, path) VALUES (?, ?)"

    .line 257
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getReferenceDelegate()Lo/getBaseAddress;

    move-result-object v1

    .line 260
    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 261
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v3

    invoke-static {v3}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object v3

    .line 262
    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v0, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    .line 263
    invoke-interface {v1, v2}, Lo/setException;->addReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addTargetData(Lo/setBatteryVelocity;)V
    .locals 4

    .line 142
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->saveTargetData(Lo/setBatteryVelocity;)V

    .line 145
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->updateMetadata(Lo/setBatteryVelocity;)Z

    .line 146
    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->targetCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->targetCount:J

    .line 147
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->writeMetadata()V

    return-void
.end method

.method public final containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 4

    .line 306
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p1

    .line 307
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT target_id FROM target_documents WHERE path = ? AND target_id != 0 LIMIT 1"

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 309
    invoke-virtual {v0, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method public final forEachTarget(Lo/from;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Lo/setBatteryVelocity;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT target_proto FROM targets"

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {p0, p1}, Lo/getRamUsed;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/from;)Lo/from;

    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    return-void
.end method

.method public final getHighestListenSequenceNumber()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastListenSequenceNumber:J

    return-wide v0
.end method

.method public final getHighestTargetId()I
    .locals 1

    .line 67
    iget v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->highestTargetId:I

    return v0
.end method

.method public final getLastRemoteSnapshotVersion()Lo/withNdkPayload;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    return-object v0
.end method

.method public final getMatchingKeysForTargetId(I)Lo/CrashlyticsReportWithSessionId;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$2;)V

    .line 288
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v2, "SELECT path FROM target_documents WHERE target_id = ?"

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    invoke-static {v0}, Lo/getDiskUsed;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;)Lo/from;

    move-result-object v1

    .line 290
    invoke-virtual {p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    .line 296
    iget-object p1, v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;->keys:Lo/CrashlyticsReportWithSessionId;

    return-object p1
.end method

.method public final getTargetCount()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->targetCount:J

    return-wide v0
.end method

.method public final getTargetData(Lo/setClsId;)Lo/setBatteryVelocity;
    .locals 5

    .line 214
    invoke-virtual {p1}, Lo/setClsId;->getCanonicalId()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$2;)V

    .line 216
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v3, "SELECT target_proto FROM targets WHERE canonical_id = ?"

    invoke-virtual {v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 217
    invoke-virtual {v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {p0, p1, v1}, Lo/setBatteryLevel;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/setClsId;Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;)Lo/from;

    move-result-object p1

    .line 218
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    .line 229
    iget-object p1, v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;->targetData:Lo/setBatteryVelocity;

    return-object p1
.end method

.method public final removeMatchingKeys(Lo/CrashlyticsReportWithSessionId;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;I)V"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "DELETE FROM target_documents WHERE target_id = ? AND path = ?"

    .line 271
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getReferenceDelegate()Lo/getBaseAddress;

    move-result-object v1

    .line 274
    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 275
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v3

    invoke-static {v3}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object v3

    .line 276
    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v0, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I

    .line 277
    invoke-interface {v1, v2}, Lo/setException;->removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final removeQueries(JLandroid/util/SparseArray;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 194
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v3, "SELECT target_id FROM targets WHERE last_listen_sequence_number <= ?"

    invoke-virtual {v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 195
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {v2, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    invoke-static {p0, p3, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Landroid/util/SparseArray;[I)Lo/from;

    move-result-object p3

    .line 196
    invoke-virtual {p1, p3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    .line 204
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->writeMetadata()V

    .line 205
    aget p1, v1, p2

    return p1
.end method

.method public final removeTargetData(Lo/setBatteryVelocity;)V
    .locals 0

    .line 179
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result p1

    .line 180
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->removeTarget(I)V

    .line 181
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->writeMetadata()V

    return-void
.end method

.method public final setLastRemoteSnapshotVersion(Lo/withNdkPayload;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    .line 94
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->writeMetadata()V

    return-void
.end method

.method final start()V
    .locals 3

    .line 49
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos, target_count FROM target_globals LIMIT 1"

    .line 50
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {p0}, Lo/setOffset;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;)Lo/from;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->first(Lo/from;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Missing target_globals entry"

    .line 62
    invoke-static {v2, v1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final updateTargetData(Lo/setBatteryVelocity;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->saveTargetData(Lo/setBatteryVelocity;)V

    .line 154
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->updateMetadata(Lo/setBatteryVelocity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->writeMetadata()V

    :cond_0
    return-void
.end method
