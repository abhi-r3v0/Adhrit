.class final Lo/ag$c;
.super Lo/aj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ag$c$extraCallback;
    }
.end annotation


# instance fields
.field private final asBinder:I

.field private final extraCallback:J

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private final onPostMessage:J


# direct methods
.method private constructor <init>(JIIJI)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/aj;-><init>()V

    .line 24
    iput-wide p1, p0, Lo/ag$c;->onPostMessage:J

    .line 25
    iput p3, p0, Lo/ag$c;->onNavigationEvent:I

    .line 26
    iput p4, p0, Lo/ag$c;->onMessageChannelReady:I

    .line 27
    iput-wide p5, p0, Lo/ag$c;->extraCallback:J

    .line 28
    iput p7, p0, Lo/ag$c;->asBinder:I

    return-void
.end method

.method synthetic constructor <init>(JIIJIB)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p7}, Lo/ag$c;-><init>(JIIJI)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 1

    .line 38
    iget v0, p0, Lo/ag$c;->onNavigationEvent:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 72
    :cond_0
    instance-of v1, p1, Lo/aj;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 73
    check-cast p1, Lo/aj;

    .line 74
    iget-wide v3, p0, Lo/ag$c;->onPostMessage:J

    invoke-virtual {p1}, Lo/aj;->onMessageChannelReady()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lo/ag$c;->onNavigationEvent:I

    .line 75
    invoke-virtual {p1}, Lo/aj;->ICustomTabsCallback()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/ag$c;->onMessageChannelReady:I

    .line 76
    invoke-virtual {p1}, Lo/aj;->onPostMessage()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lo/ag$c;->extraCallback:J

    .line 77
    invoke-virtual {p1}, Lo/aj;->onNavigationEvent()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lo/ag$c;->asBinder:I

    .line 78
    invoke-virtual {p1}, Lo/aj;->extraCallback()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method final extraCallback()I
    .locals 1

    .line 53
    iget v0, p0, Lo/ag$c;->asBinder:I

    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 87
    iget-wide v0, p0, Lo/ag$c;->onPostMessage:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 89
    iget v3, p0, Lo/ag$c;->onNavigationEvent:I

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 91
    iget v3, p0, Lo/ag$c;->onMessageChannelReady:I

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 93
    iget-wide v3, p0, Lo/ag$c;->extraCallback:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 95
    iget v0, p0, Lo/ag$c;->asBinder:I

    xor-int/2addr v0, v1

    return v0
.end method

.method final onMessageChannelReady()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lo/ag$c;->onPostMessage:J

    return-wide v0
.end method

.method final onNavigationEvent()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lo/ag$c;->extraCallback:J

    return-wide v0
.end method

.method final onPostMessage()I
    .locals 1

    .line 43
    iget v0, p0, Lo/ag$c;->onMessageChannelReady:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventStoreConfig{maxStorageSizeInBytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/ag$c;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ag$c;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSectionEnterTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ag$c;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCleanUpAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/ag$c;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlobByteSizePerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ag$c;->asBinder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
