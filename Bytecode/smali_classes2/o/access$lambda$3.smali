.class final Lo/access$lambda$3;
.super Lo/BinaryImagesConverter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/access$lambda$3$extraCallback;
    }
.end annotation


# instance fields
.field private final token:Ljava/lang/String;

.field private final tokenCreationTimestamp:J

.field private final tokenExpirationTimestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/BinaryImagesConverter;-><init>()V

    .line 21
    iput-object p1, p0, Lo/access$lambda$3;->token:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lo/access$lambda$3;->tokenExpirationTimestamp:J

    .line 23
    iput-wide p4, p0, Lo/access$lambda$3;->tokenCreationTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JJLo/access$lambda$3$5;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lo/access$lambda$3;-><init>(Ljava/lang/String;JJ)V

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
    instance-of v1, p1, Lo/BinaryImagesConverter;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 59
    check-cast p1, Lo/BinaryImagesConverter;

    .line 60
    iget-object v1, p0, Lo/access$lambda$3;->token:Ljava/lang/String;

    invoke-virtual {p1}, Lo/BinaryImagesConverter;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lo/access$lambda$3;->tokenExpirationTimestamp:J

    .line 61
    invoke-virtual {p1}, Lo/BinaryImagesConverter;->getTokenExpirationTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/access$lambda$3;->tokenCreationTimestamp:J

    .line 62
    invoke-virtual {p1}, Lo/BinaryImagesConverter;->getTokenCreationTimestamp()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/access$lambda$3;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenCreationTimestamp()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lo/access$lambda$3;->tokenCreationTimestamp:J

    return-wide v0
.end method

.method public final getTokenExpirationTimestamp()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lo/access$lambda$3;->tokenExpirationTimestamp:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    .line 71
    iget-object v0, p0, Lo/access$lambda$3;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 73
    iget-wide v2, p0, Lo/access$lambda$3;->tokenExpirationTimestamp:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 75
    iget-wide v1, p0, Lo/access$lambda$3;->tokenCreationTimestamp:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toBuilder()Lo/BinaryImagesConverter$extraCallback;
    .locals 2

    .line 81
    new-instance v0, Lo/access$lambda$3$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/access$lambda$3$extraCallback;-><init>(Lo/BinaryImagesConverter;Lo/access$lambda$3$5;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstallationTokenResult{token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/access$lambda$3;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenExpirationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/access$lambda$3;->tokenExpirationTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCreationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/access$lambda$3;->tokenCreationTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
