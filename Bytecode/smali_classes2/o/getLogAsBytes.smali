.class public Lo/getLogAsBytes;
.super Lo/getWorkingFileForSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getWorkingFileForSession<",
        "Lo/getLogAsBytes;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Lo/getWorkingFileForSession;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lo/getLogAsBytes;->value:Z

    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lo/getLogAsBytes;)I
    .locals 1

    .line 48
    iget-boolean v0, p0, Lo/getLogAsBytes;->value:Z

    iget-boolean p1, p1, Lo/getLogAsBytes;->value:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected bridge synthetic compareLeafValues(Lo/getWorkingFileForSession;)I
    .locals 0

    .line 17
    check-cast p1, Lo/getLogAsBytes;

    invoke-virtual {p0, p1}, Lo/getLogAsBytes;->compareLeafValues(Lo/getLogAsBytes;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 53
    instance-of v0, p1, Lo/getLogAsBytes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    check-cast p1, Lo/getLogAsBytes;

    .line 57
    iget-boolean v0, p0, Lo/getLogAsBytes;->value:Z

    iget-boolean v2, p1, Lo/getLogAsBytes;->value:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    iget-object p1, p1, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lo/getLogAsBytes;->getPriorityHash(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "boolean:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lo/getLogAsBytes;->value:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLeafType()Lo/getWorkingFileForSession$onNavigationEvent;
    .locals 1

    .line 43
    sget-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->Boolean:Lo/getWorkingFileForSession$onNavigationEvent;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-boolean v0, p0, Lo/getLogAsBytes;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget-boolean v0, p0, Lo/getLogAsBytes;->value:Z

    iget-object v1, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lo/getLogAsBytes;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/getLogAsBytes;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/getLogAsBytes;
    .locals 2

    .line 38
    new-instance v0, Lo/getLogAsBytes;

    iget-boolean v1, p0, Lo/getLogAsBytes;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/getLogAsBytes;-><init>(Ljava/lang/Boolean;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method
