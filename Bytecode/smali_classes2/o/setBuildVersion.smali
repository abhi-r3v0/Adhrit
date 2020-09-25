.class public Lo/setBuildVersion;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final hasPendingWrites:Z

.field private final isFromCache:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lo/setBuildVersion;->hasPendingWrites:Z

    .line 32
    iput-boolean p2, p0, Lo/setBuildVersion;->isFromCache:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lo/setBuildVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 64
    :cond_1
    check-cast p1, Lo/setBuildVersion;

    .line 65
    iget-boolean v1, p0, Lo/setBuildVersion;->hasPendingWrites:Z

    iget-boolean v3, p1, Lo/setBuildVersion;->hasPendingWrites:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/setBuildVersion;->isFromCache:Z

    iget-boolean p1, p1, Lo/setBuildVersion;->isFromCache:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hasPendingWrites()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/setBuildVersion;->hasPendingWrites:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 70
    iget-boolean v0, p0, Lo/setBuildVersion;->hasPendingWrites:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-boolean v1, p0, Lo/setBuildVersion;->isFromCache:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lo/setBuildVersion;->isFromCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnapshotMetadata{hasPendingWrites="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lo/setBuildVersion;->hasPendingWrites:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFromCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/setBuildVersion;->isFromCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
