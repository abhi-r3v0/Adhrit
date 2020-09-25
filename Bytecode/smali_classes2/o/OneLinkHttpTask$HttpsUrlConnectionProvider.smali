.class public final Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;
.super Lo/ActivityCompat;
.source ""


# instance fields
.field private final extraCallback:J

.field private final onPostMessage:Lo/ActivityCompat$onPostMessage;


# direct methods
.method public constructor <init>(Lo/ActivityCompat$onPostMessage;J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/ActivityCompat;-><init>()V

    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    .line 19
    iput-wide p2, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->extraCallback:J

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null status"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lo/ActivityCompat;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 46
    check-cast p1, Lo/ActivityCompat;

    .line 47
    iget-object v1, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    invoke-virtual {p1}, Lo/ActivityCompat;->onMessageChannelReady()Lo/ActivityCompat$onPostMessage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->extraCallback:J

    .line 48
    invoke-virtual {p1}, Lo/ActivityCompat;->onPostMessage()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 57
    iget-object v0, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 59
    iget-wide v1, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->extraCallback:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final onMessageChannelReady()Lo/ActivityCompat$onPostMessage;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    return-object v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->extraCallback:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackendResponse{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextRequestWaitMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/OneLinkHttpTask$HttpsUrlConnectionProvider;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
