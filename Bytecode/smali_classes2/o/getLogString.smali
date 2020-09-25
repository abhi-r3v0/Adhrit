.class public Lo/getLogString;
.super Lo/getWorkingFileForSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getWorkingFileForSession<",
        "Lo/getLogString;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 26
    invoke-direct {p0, p2}, Lo/getWorkingFileForSession;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    .line 27
    iput-object p1, p0, Lo/getLogString;->value:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lo/getLogString;)I
    .locals 1

    .line 57
    iget-object v0, p0, Lo/getLogString;->value:Ljava/lang/Double;

    iget-object p1, p1, Lo/getLogString;->value:Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic compareLeafValues(Lo/getWorkingFileForSession;)I
    .locals 0

    .line 21
    check-cast p1, Lo/getLogString;

    invoke-virtual {p0, p1}, Lo/getLogString;->compareLeafValues(Lo/getLogString;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 62
    instance-of v0, p1, Lo/getLogString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    check-cast p1, Lo/getLogString;

    .line 66
    iget-object v0, p0, Lo/getLogString;->value:Ljava/lang/Double;

    iget-object v2, p1, Lo/getLogString;->value:Ljava/lang/Double;

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

    .line 37
    invoke-virtual {p0, p1}, Lo/getLogString;->getPriorityHash(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "number:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/getLogString;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->doubleToHashString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLeafType()Lo/getWorkingFileForSession$onNavigationEvent;
    .locals 1

    .line 51
    sget-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->Number:Lo/getWorkingFileForSession$onNavigationEvent;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/getLogString;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 71
    iget-object v0, p0, Lo/getLogString;->value:Ljava/lang/Double;

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

    .line 21
    invoke-virtual {p0, p1}, Lo/getLogString;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/getLogString;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/getLogString;
    .locals 2

    .line 45
    invoke-static {p1}, Lo/toStringMap;->isValidPriority(Lo/LogFileManager$DirectoryProvider;)Z

    move-result v0

    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 46
    new-instance v0, Lo/getLogString;

    iget-object v1, p0, Lo/getLogString;->value:Ljava/lang/Double;

    invoke-direct {v0, v1, p1}, Lo/getLogString;-><init>(Ljava/lang/Double;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method
