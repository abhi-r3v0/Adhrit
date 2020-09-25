.class public Lo/open;
.super Lo/getWorkingFileForSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getWorkingFileForSession<",
        "Lo/open;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0, p2}, Lo/getWorkingFileForSession;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    .line 25
    iput-object p1, p0, Lo/open;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic compareLeafValues(Lo/getWorkingFileForSession;)I
    .locals 0

    .line 19
    check-cast p1, Lo/open;

    invoke-virtual {p0, p1}, Lo/open;->compareLeafValues(Lo/open;)I

    move-result p1

    return p1
.end method

.method protected compareLeafValues(Lo/open;)I
    .locals 1

    .line 59
    iget-object v0, p0, Lo/open;->value:Ljava/lang/String;

    iget-object p1, p1, Lo/open;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 64
    instance-of v0, p1, Lo/open;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p1, Lo/open;

    .line 68
    iget-object v0, p0, Lo/open;->value:Ljava/lang/String;

    iget-object v2, p1, Lo/open;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

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
    .locals 3

    .line 35
    sget-object v0, Lo/isCurrent$extraCallback;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "string:"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lo/open;->getPriorityHash(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/open;->value:Ljava/lang/String;

    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid hash version for string node: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lo/open;->getPriorityHash(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/open;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLeafType()Lo/getWorkingFileForSession$onNavigationEvent;
    .locals 1

    .line 54
    sget-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->String:Lo/getWorkingFileForSession$onNavigationEvent;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/open;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget-object v0, p0, Lo/open;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lo/open;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/open;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/open;
    .locals 2

    .line 49
    new-instance v0, Lo/open;

    iget-object v1, p0, Lo/open;->value:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lo/open;-><init>(Ljava/lang/String;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method
