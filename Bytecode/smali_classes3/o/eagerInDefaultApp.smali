.class public final Lo/eagerInDefaultApp;
.super Ljava/lang/Object;


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:I

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 0

    invoke-direct {p0}, Lo/eagerInDefaultApp;-><init>()V

    iput p1, p0, Lo/eagerInDefaultApp;->extraCallback:I

    iput-object p2, p0, Lo/eagerInDefaultApp;->onNavigationEvent:Ljava/lang/String;

    iput-wide p3, p0, Lo/eagerInDefaultApp;->onPostMessage:J

    iput-wide p5, p0, Lo/eagerInDefaultApp;->onMessageChannelReady:J

    iput p7, p0, Lo/eagerInDefaultApp;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/eagerInDefaultApp;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lo/eagerInDefaultApp;

    iget v1, p0, Lo/eagerInDefaultApp;->extraCallback:I

    .line 1000
    iget v3, p1, Lo/eagerInDefaultApp;->extraCallback:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lo/eagerInDefaultApp;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2000
    iget-object v1, p1, Lo/eagerInDefaultApp;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    .line 6000
    :cond_1
    iget-object v3, p1, Lo/eagerInDefaultApp;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 2000
    :cond_2
    :goto_0
    iget-wide v3, p0, Lo/eagerInDefaultApp;->onPostMessage:J

    .line 3000
    iget-wide v5, p1, Lo/eagerInDefaultApp;->onPostMessage:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, p0, Lo/eagerInDefaultApp;->onMessageChannelReady:J

    .line 4000
    iget-wide v5, p1, Lo/eagerInDefaultApp;->onMessageChannelReady:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget v1, p0, Lo/eagerInDefaultApp;->ICustomTabsCallback:I

    .line 5000
    iget p1, p1, Lo/eagerInDefaultApp;->ICustomTabsCallback:I

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final hashCode()I
    .locals 9

    iget v0, p0, Lo/eagerInDefaultApp;->extraCallback:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lo/eagerInDefaultApp;->onNavigationEvent:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    iget-wide v3, p0, Lo/eagerInDefaultApp;->onPostMessage:J

    iget-wide v5, p0, Lo/eagerInDefaultApp;->onMessageChannelReady:J

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    const/16 v2, 0x20

    ushr-long v7, v3, v2

    xor-long/2addr v3, v7

    long-to-int v4, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget v1, p0, Lo/eagerInDefaultApp;->ICustomTabsCallback:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lo/eagerInDefaultApp;->extraCallback:I

    iget-object v1, p0, Lo/eagerInDefaultApp;->onNavigationEvent:Ljava/lang/String;

    iget-wide v2, p0, Lo/eagerInDefaultApp;->onPostMessage:J

    iget-wide v4, p0, Lo/eagerInDefaultApp;->onMessageChannelReady:J

    iget v6, p0, Lo/eagerInDefaultApp;->ICustomTabsCallback:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit16 v7, v7, 0x9d

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "SliceCheckpoint{fileExtractionStatus="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", filePath="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileOffset="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", remainingBytes="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", previousChunk="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
