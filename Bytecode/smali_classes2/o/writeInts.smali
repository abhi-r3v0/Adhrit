.class public Lo/writeInts;
.super Lo/getWorkingFileForSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getWorkingFileForSession<",
        "Lo/writeInts;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0, p2}, Lo/getWorkingFileForSession;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lo/writeInts;->value:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic compareLeafValues(Lo/getWorkingFileForSession;)I
    .locals 0

    .line 19
    check-cast p1, Lo/writeInts;

    invoke-virtual {p0, p1}, Lo/writeInts;->compareLeafValues(Lo/writeInts;)I

    move-result p1

    return p1
.end method

.method protected compareLeafValues(Lo/writeInts;)I
    .locals 4

    .line 54
    iget-wide v0, p0, Lo/writeInts;->value:J

    iget-wide v2, p1, Lo/writeInts;->value:J

    invoke-static {v0, v1, v2, v3}, Lo/SessionReportingCoordinator$$Lambda$2;->compareLongs(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 59
    instance-of v0, p1, Lo/writeInts;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    check-cast p1, Lo/writeInts;

    .line 63
    iget-wide v2, p0, Lo/writeInts;->value:J

    iget-wide v4, p1, Lo/writeInts;->value:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

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
    invoke-virtual {p0, p1}, Lo/writeInts;->getPriorityHash(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "number:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/writeInts;->value:J

    long-to-double v1, v1

    invoke-static {v1, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->doubleToHashString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLeafType()Lo/getWorkingFileForSession$onNavigationEvent;
    .locals 1

    .line 49
    sget-object v0, Lo/getWorkingFileForSession$onNavigationEvent;->Number:Lo/getWorkingFileForSession$onNavigationEvent;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 30
    iget-wide v0, p0, Lo/writeInts;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 68
    iget-wide v0, p0, Lo/writeInts;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lo/writeInts;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/writeInts;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/writeInts;
    .locals 3

    .line 43
    new-instance v0, Lo/writeInts;

    iget-wide v1, p0, Lo/writeInts;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/writeInts;-><init>(Ljava/lang/Long;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method
