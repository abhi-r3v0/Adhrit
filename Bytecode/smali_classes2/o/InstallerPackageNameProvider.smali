.class public final Lo/InstallerPackageNameProvider;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final tagNumber:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lo/InstallerPackageNameProvider;->tagNumber:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    check-cast p1, Lo/InstallerPackageNameProvider;

    .line 44
    iget-wide v2, p0, Lo/InstallerPackageNameProvider;->tagNumber:J

    iget-wide v4, p1, Lo/InstallerPackageNameProvider;->tagNumber:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getTagNumber()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lo/InstallerPackageNameProvider;->tagNumber:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .line 53
    iget-wide v0, p0, Lo/InstallerPackageNameProvider;->tagNumber:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag{tagNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/InstallerPackageNameProvider;->tagNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
