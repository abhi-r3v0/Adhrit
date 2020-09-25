.class public final Lo/isRoot;
.super Lo/lambda$processSetComponents$1;


# instance fields
.field private final ICustomTabsCallback:J

.field private final extraCallback:J

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(IJJILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lo/lambda$processSetComponents$1;-><init>()V

    iput p1, p0, Lo/isRoot;->onMessageChannelReady:I

    iput-wide p2, p0, Lo/isRoot;->extraCallback:J

    iput-wide p4, p0, Lo/isRoot;->ICustomTabsCallback:J

    iput p6, p0, Lo/isRoot;->onPostMessage:I

    if-eqz p7, :cond_0

    iput-object p7, p0, Lo/isRoot;->onNavigationEvent:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null packageName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/isRoot;->onMessageChannelReady:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/lambda$processSetComponents$1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lo/lambda$processSetComponents$1;

    iget v1, p0, Lo/isRoot;->onMessageChannelReady:I

    invoke-virtual {p1}, Lo/lambda$processSetComponents$1;->ICustomTabsCallback()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lo/isRoot;->extraCallback:J

    invoke-virtual {p1}, Lo/lambda$processSetComponents$1;->onMessageChannelReady()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/isRoot;->ICustomTabsCallback:J

    invoke-virtual {p1}, Lo/lambda$processSetComponents$1;->onNavigationEvent()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lo/isRoot;->onPostMessage:I

    invoke-virtual {p1}, Lo/lambda$processSetComponents$1;->onPostMessage()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lo/isRoot;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1}, Lo/lambda$processSetComponents$1;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/isRoot;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 9

    iget v0, p0, Lo/isRoot;->onMessageChannelReady:I

    iget-wide v1, p0, Lo/isRoot;->extraCallback:J

    iget-wide v3, p0, Lo/isRoot;->ICustomTabsCallback:J

    const v5, 0xf4243

    xor-int/2addr v0, v5

    mul-int v0, v0, v5

    const/16 v6, 0x20

    ushr-long v7, v1, v6

    xor-long/2addr v1, v7

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v5

    ushr-long v1, v3, v6

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v5

    iget v1, p0, Lo/isRoot;->onPostMessage:I

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    iget-object v1, p0, Lo/isRoot;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    iget-wide v0, p0, Lo/isRoot;->extraCallback:J

    return-wide v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    iget-wide v0, p0, Lo/isRoot;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/isRoot;->onPostMessage:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lo/isRoot;->onMessageChannelReady:I

    iget-wide v1, p0, Lo/isRoot;->extraCallback:J

    iget-wide v3, p0, Lo/isRoot;->ICustomTabsCallback:J

    iget v5, p0, Lo/isRoot;->onPostMessage:I

    iget-object v6, p0, Lo/isRoot;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit16 v7, v7, 0xa4

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "InstallState{installStatus="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesDownloaded="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalBytesToDownload="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", installErrorCode="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
