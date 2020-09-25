.class final Lo/getLibraryFile;
.super Lo/isRelevant;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getLibraryFile$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final authToken:Lo/correctDataPath;

.field private final fid:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;

.field private final responseCode:Lo/isRelevant$onMessageChannelReady;

.field private final uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/correctDataPath;Lo/isRelevant$onMessageChannelReady;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/isRelevant;-><init>()V

    .line 26
    iput-object p1, p0, Lo/getLibraryFile;->uri:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lo/getLibraryFile;->fid:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lo/getLibraryFile;->refreshToken:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lo/getLibraryFile;->authToken:Lo/correctDataPath;

    .line 30
    iput-object p5, p0, Lo/getLibraryFile;->responseCode:Lo/isRelevant$onMessageChannelReady;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/correctDataPath;Lo/isRelevant$onMessageChannelReady;Lo/getLibraryFile$3;)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p5}, Lo/getLibraryFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/correctDataPath;Lo/isRelevant$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lo/isRelevant;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 80
    check-cast p1, Lo/isRelevant;

    .line 81
    iget-object v1, p0, Lo/getLibraryFile;->uri:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/isRelevant;->getUri()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/isRelevant;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lo/getLibraryFile;->fid:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 82
    invoke-virtual {p1}, Lo/isRelevant;->getFid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lo/isRelevant;->getFid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lo/getLibraryFile;->refreshToken:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 83
    invoke-virtual {p1}, Lo/isRelevant;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lo/isRelevant;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lo/getLibraryFile;->authToken:Lo/correctDataPath;

    if-nez v1, :cond_4

    .line 84
    invoke-virtual {p1}, Lo/isRelevant;->getAuthToken()Lo/correctDataPath;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lo/isRelevant;->getAuthToken()Lo/correctDataPath;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lo/getLibraryFile;->responseCode:Lo/isRelevant$onMessageChannelReady;

    if-nez v1, :cond_5

    .line 85
    invoke-virtual {p1}, Lo/isRelevant;->getResponseCode()Lo/isRelevant$onMessageChannelReady;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lo/isRelevant;->getResponseCode()Lo/isRelevant$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_4
    return v0

    :cond_6
    return v2
.end method

.method public final getAuthToken()Lo/correctDataPath;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/getLibraryFile;->authToken:Lo/correctDataPath;

    return-object v0
.end method

.method public final getFid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/getLibraryFile;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/getLibraryFile;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseCode()Lo/isRelevant$onMessageChannelReady;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/getLibraryFile;->responseCode:Lo/isRelevant$onMessageChannelReady;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/getLibraryFile;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 94
    iget-object v0, p0, Lo/getLibraryFile;->uri:Ljava/lang/String;

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

    .line 96
    iget-object v3, p0, Lo/getLibraryFile;->fid:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 98
    iget-object v3, p0, Lo/getLibraryFile;->refreshToken:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 100
    iget-object v3, p0, Lo/getLibraryFile;->authToken:Lo/correctDataPath;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 102
    iget-object v2, p0, Lo/getLibraryFile;->responseCode:Lo/isRelevant$onMessageChannelReady;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toBuilder()Lo/isRelevant$extraCallback;
    .locals 2

    .line 108
    new-instance v0, Lo/getLibraryFile$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getLibraryFile$onMessageChannelReady;-><init>(Lo/isRelevant;Lo/getLibraryFile$3;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstallationResponse{uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getLibraryFile;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getLibraryFile;->fid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getLibraryFile;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getLibraryFile;->authToken:Lo/correctDataPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getLibraryFile;->responseCode:Lo/isRelevant$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
