.class public final Lo/loadInstallerPackageName;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final merge:Lo/ExecutorUtils$1$1;

.field private final overwrite:Lo/LogFileManager$DirectoryProvider;

.field private final path:Lo/ExecutorUtils$2;

.field private final visible:Z

.field private final writeId:J


# direct methods
.method public constructor <init>(JLo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lo/loadInstallerPackageName;->writeId:J

    .line 37
    iput-object p3, p0, Lo/loadInstallerPackageName;->path:Lo/ExecutorUtils$2;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    .line 39
    iput-object p4, p0, Lo/loadInstallerPackageName;->merge:Lo/ExecutorUtils$1$1;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lo/loadInstallerPackageName;->visible:Z

    return-void
.end method

.method public constructor <init>(JLo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lo/loadInstallerPackageName;->writeId:J

    .line 29
    iput-object p3, p0, Lo/loadInstallerPackageName;->path:Lo/ExecutorUtils$2;

    .line 30
    iput-object p4, p0, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lo/loadInstallerPackageName;->merge:Lo/ExecutorUtils$1$1;

    .line 32
    iput-boolean p5, p0, Lo/loadInstallerPackageName;->visible:Z

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

    if-eqz p1, :cond_b

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 86
    :cond_1
    check-cast p1, Lo/loadInstallerPackageName;

    .line 88
    iget-wide v2, p0, Lo/loadInstallerPackageName;->writeId:J

    iget-wide v4, p1, Lo/loadInstallerPackageName;->writeId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 91
    :cond_2
    iget-object v2, p0, Lo/loadInstallerPackageName;->path:Lo/ExecutorUtils$2;

    iget-object v3, p1, Lo/loadInstallerPackageName;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 94
    :cond_3
    iget-boolean v2, p0, Lo/loadInstallerPackageName;->visible:Z

    iget-boolean v3, p1, Lo/loadInstallerPackageName;->visible:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 97
    :cond_4
    iget-object v2, p0, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    if-eqz v2, :cond_7

    :cond_6
    return v1

    .line 102
    :cond_7
    :goto_0
    iget-object v2, p0, Lo/loadInstallerPackageName;->merge:Lo/ExecutorUtils$1$1;

    iget-object p1, p1, Lo/loadInstallerPackageName;->merge:Lo/ExecutorUtils$1$1;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_a

    :cond_9
    return v1

    :cond_a
    :goto_1
    return v0

    :cond_b
    :goto_2
    return v1
.end method

.method public final getMerge()Lo/ExecutorUtils$1$1;
    .locals 2

    .line 59
    iget-object v0, p0, Lo/loadInstallerPackageName;->merge:Lo/ExecutorUtils$1$1;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access merge when write is an overwrite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOverwrite()Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 52
    iget-object v0, p0, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access overwrite when write is a merge!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPath()Lo/ExecutorUtils$2;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/loadInstallerPackageName;->path:Lo/ExecutorUtils$2;

    return-object v0
.end method

.method public final getWriteId()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lo/loadInstallerPackageName;->writeId:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    .line 111
    iget-wide v0, p0, Lo/loadInstallerPackageName;->writeId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-boolean v1, p0, Lo/loadInstallerPackageName;->visible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v1, p0, Lo/loadInstallerPackageName;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v1, p0, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Lo/loadInstallerPackageName;->merge:Lo/ExecutorUtils$1$1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isMerge()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lo/loadInstallerPackageName;->merge:Lo/ExecutorUtils$1$1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isOverwrite()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lo/loadInstallerPackageName;->visible:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserWriteRecord{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/loadInstallerPackageName;->writeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/loadInstallerPackageName;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/loadInstallerPackageName;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " overwrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/loadInstallerPackageName;->overwrite:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " merge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/loadInstallerPackageName;->merge:Lo/ExecutorUtils$1$1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
