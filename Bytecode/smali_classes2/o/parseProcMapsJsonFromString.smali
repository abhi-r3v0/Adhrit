.class final Lo/parseProcMapsJsonFromString;
.super Lo/correctDataPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/parseProcMapsJsonFromString$onPostMessage;
    }
.end annotation


# instance fields
.field private final responseCode:Lo/correctDataPath$extraCallback;

.field private final token:Ljava/lang/String;

.field private final tokenExpirationTimestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLo/correctDataPath$extraCallback;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/correctDataPath;-><init>()V

    .line 21
    iput-object p1, p0, Lo/parseProcMapsJsonFromString;->token:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lo/parseProcMapsJsonFromString;->tokenExpirationTimestamp:J

    .line 23
    iput-object p4, p0, Lo/parseProcMapsJsonFromString;->responseCode:Lo/correctDataPath$extraCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLo/correctDataPath$extraCallback;Lo/parseProcMapsJsonFromString$4;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lo/parseProcMapsJsonFromString;-><init>(Ljava/lang/String;JLo/correctDataPath$extraCallback;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lo/correctDataPath;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 59
    check-cast p1, Lo/correctDataPath;

    .line 60
    iget-object v1, p0, Lo/parseProcMapsJsonFromString;->token:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/correctDataPath;->getToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/correctDataPath;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-wide v3, p0, Lo/parseProcMapsJsonFromString;->tokenExpirationTimestamp:J

    .line 61
    invoke-virtual {p1}, Lo/correctDataPath;->getTokenExpirationTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, Lo/parseProcMapsJsonFromString;->responseCode:Lo/correctDataPath$extraCallback;

    if-nez v1, :cond_2

    .line 62
    invoke-virtual {p1}, Lo/correctDataPath;->getResponseCode()Lo/correctDataPath$extraCallback;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lo/correctDataPath;->getResponseCode()Lo/correctDataPath$extraCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public final getResponseCode()Lo/correctDataPath$extraCallback;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/parseProcMapsJsonFromString;->responseCode:Lo/correctDataPath$extraCallback;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/parseProcMapsJsonFromString;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenExpirationTimestamp()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lo/parseProcMapsJsonFromString;->tokenExpirationTimestamp:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    .line 71
    iget-object v0, p0, Lo/parseProcMapsJsonFromString;->token:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 73
    iget-wide v3, p0, Lo/parseProcMapsJsonFromString;->tokenExpirationTimestamp:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 75
    iget-object v2, p0, Lo/parseProcMapsJsonFromString;->responseCode:Lo/correctDataPath$extraCallback;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toBuilder()Lo/correctDataPath$ICustomTabsCallback;
    .locals 2

    .line 81
    new-instance v0, Lo/parseProcMapsJsonFromString$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/parseProcMapsJsonFromString$onPostMessage;-><init>(Lo/correctDataPath;Lo/parseProcMapsJsonFromString$4;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TokenResult{token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/parseProcMapsJsonFromString;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenExpirationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/parseProcMapsJsonFromString;->tokenExpirationTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/parseProcMapsJsonFromString;->responseCode:Lo/correctDataPath$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
