.class public final Lo/setBatteryVelocity;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

.field private final purpose:Lo/getBinaries;

.field private final resumeToken:Lo/SessionProtobufHelper;

.field private final sequenceNumber:J

.field private final snapshotVersion:Lo/withNdkPayload;

.field private final target:Lo/setClsId;

.field private final targetId:I


# direct methods
.method public constructor <init>(Lo/setClsId;IJLo/getBinaries;)V
    .locals 9

    .line 68
    sget-object v7, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    sget-object v8, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->EMPTY_RESUME_TOKEN:Lo/SessionProtobufHelper;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lo/setBatteryVelocity;-><init>(Lo/setClsId;IJLo/getBinaries;Lo/withNdkPayload;Lo/withNdkPayload;Lo/SessionProtobufHelper;)V

    return-void
.end method

.method constructor <init>(Lo/setClsId;IJLo/getBinaries;Lo/withNdkPayload;Lo/withNdkPayload;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setClsId;

    iput-object p1, p0, Lo/setBatteryVelocity;->target:Lo/setClsId;

    .line 58
    iput p2, p0, Lo/setBatteryVelocity;->targetId:I

    .line 59
    iput-wide p3, p0, Lo/setBatteryVelocity;->sequenceNumber:J

    .line 60
    iput-object p7, p0, Lo/setBatteryVelocity;->lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

    .line 61
    iput-object p5, p0, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    .line 62
    invoke-static {p6}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/withNdkPayload;

    iput-object p1, p0, Lo/setBatteryVelocity;->snapshotVersion:Lo/withNdkPayload;

    .line 63
    invoke-static {p8}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/setBatteryVelocity;->resumeToken:Lo/SessionProtobufHelper;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    check-cast p1, Lo/setBatteryVelocity;

    .line 155
    iget-object v2, p0, Lo/setBatteryVelocity;->target:Lo/setClsId;

    iget-object v3, p1, Lo/setBatteryVelocity;->target:Lo/setClsId;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lo/setBatteryVelocity;->targetId:I

    iget v3, p1, Lo/setBatteryVelocity;->targetId:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lo/setBatteryVelocity;->sequenceNumber:J

    iget-wide v4, p1, Lo/setBatteryVelocity;->sequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    iget-object v3, p1, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/setBatteryVelocity;->snapshotVersion:Lo/withNdkPayload;

    iget-object v3, p1, Lo/setBatteryVelocity;->snapshotVersion:Lo/withNdkPayload;

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/setBatteryVelocity;->lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

    iget-object v3, p1, Lo/setBatteryVelocity;->lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/setBatteryVelocity;->resumeToken:Lo/SessionProtobufHelper;

    iget-object p1, p1, Lo/setBatteryVelocity;->resumeToken:Lo/SessionProtobufHelper;

    .line 161
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getLastLimboFreeSnapshotVersion()Lo/withNdkPayload;
    .locals 1

    .line 142
    iget-object v0, p0, Lo/setBatteryVelocity;->lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

    return-object v0
.end method

.method public final getPurpose()Lo/getBinaries;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    return-object v0
.end method

.method public final getResumeToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/setBatteryVelocity;->resumeToken:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public final getSequenceNumber()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lo/setBatteryVelocity;->sequenceNumber:J

    return-wide v0
.end method

.method public final getSnapshotVersion()Lo/withNdkPayload;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/setBatteryVelocity;->snapshotVersion:Lo/withNdkPayload;

    return-object v0
.end method

.method public final getTarget()Lo/setClsId;
    .locals 1

    .line 115
    iget-object v0, p0, Lo/setBatteryVelocity;->target:Lo/setClsId;

    return-object v0
.end method

.method public final getTargetId()I
    .locals 1

    .line 119
    iget v0, p0, Lo/setBatteryVelocity;->targetId:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 166
    iget-object v0, p0, Lo/setBatteryVelocity;->target:Lo/setClsId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget v1, p0, Lo/setBatteryVelocity;->targetId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 168
    iget-wide v1, p0, Lo/setBatteryVelocity;->sequenceNumber:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-object v1, p0, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 170
    iget-object v1, p0, Lo/setBatteryVelocity;->snapshotVersion:Lo/withNdkPayload;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget-object v1, p0, Lo/setBatteryVelocity;->lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget-object v1, p0, Lo/setBatteryVelocity;->resumeToken:Lo/SessionProtobufHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetData{target="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setBatteryVelocity;->target:Lo/setClsId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/setBatteryVelocity;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/setBatteryVelocity;->sequenceNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshotVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setBatteryVelocity;->snapshotVersion:Lo/withNdkPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastLimboFreeSnapshotVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setBatteryVelocity;->lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resumeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setBatteryVelocity;->resumeToken:Lo/SessionProtobufHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withLastLimboFreeSnapshotVersion(Lo/withNdkPayload;)Lo/setBatteryVelocity;
    .locals 10

    .line 104
    new-instance v9, Lo/setBatteryVelocity;

    iget-object v1, p0, Lo/setBatteryVelocity;->target:Lo/setClsId;

    iget v2, p0, Lo/setBatteryVelocity;->targetId:I

    iget-wide v3, p0, Lo/setBatteryVelocity;->sequenceNumber:J

    iget-object v5, p0, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    iget-object v6, p0, Lo/setBatteryVelocity;->snapshotVersion:Lo/withNdkPayload;

    iget-object v8, p0, Lo/setBatteryVelocity;->resumeToken:Lo/SessionProtobufHelper;

    move-object v0, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lo/setBatteryVelocity;-><init>(Lo/setClsId;IJLo/getBinaries;Lo/withNdkPayload;Lo/withNdkPayload;Lo/SessionProtobufHelper;)V

    return-object v9
.end method

.method public final withResumeToken(Lo/SessionProtobufHelper;Lo/withNdkPayload;)Lo/setBatteryVelocity;
    .locals 10

    .line 92
    new-instance v9, Lo/setBatteryVelocity;

    iget-object v1, p0, Lo/setBatteryVelocity;->target:Lo/setClsId;

    iget v2, p0, Lo/setBatteryVelocity;->targetId:I

    iget-wide v3, p0, Lo/setBatteryVelocity;->sequenceNumber:J

    iget-object v5, p0, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    iget-object v7, p0, Lo/setBatteryVelocity;->lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

    move-object v0, v9

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lo/setBatteryVelocity;-><init>(Lo/setClsId;IJLo/getBinaries;Lo/withNdkPayload;Lo/withNdkPayload;Lo/SessionProtobufHelper;)V

    return-object v9
.end method

.method public final withSequenceNumber(J)Lo/setBatteryVelocity;
    .locals 10

    .line 80
    new-instance v9, Lo/setBatteryVelocity;

    iget-object v1, p0, Lo/setBatteryVelocity;->target:Lo/setClsId;

    iget v2, p0, Lo/setBatteryVelocity;->targetId:I

    iget-object v5, p0, Lo/setBatteryVelocity;->purpose:Lo/getBinaries;

    iget-object v6, p0, Lo/setBatteryVelocity;->snapshotVersion:Lo/withNdkPayload;

    iget-object v7, p0, Lo/setBatteryVelocity;->lastLimboFreeSnapshotVersion:Lo/withNdkPayload;

    iget-object v8, p0, Lo/setBatteryVelocity;->resumeToken:Lo/SessionProtobufHelper;

    move-object v0, v9

    move-wide v3, p1

    invoke-direct/range {v0 .. v8}, Lo/setBatteryVelocity;-><init>(Lo/setClsId;IJLo/getBinaries;Lo/withNdkPayload;Lo/withNdkPayload;Lo/SessionProtobufHelper;)V

    return-object v9
.end method
