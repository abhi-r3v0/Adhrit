.class public abstract Lo/getWorkingFileForSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LogFileManager$DirectoryProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getWorkingFileForSession$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/getWorkingFileForSession;",
        ">",
        "Ljava/lang/Object;",
        "Lo/LogFileManager$DirectoryProvider;"
    }
.end annotation


# instance fields
.field private lazyHash:Ljava/lang/String;

.field protected final priority:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method constructor <init>(Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method

.method private static compareLongDoubleNodes(Lo/writeInts;Lo/getLogString;)I
    .locals 2

    .line 169
    invoke-virtual {p0}, Lo/writeInts;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 170
    invoke-virtual {p1}, Lo/getLogString;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract compareLeafValues(Lo/getWorkingFileForSession;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {p0, p1}, Lo/getWorkingFileForSession;->compareTo(Lo/LogFileManager$DirectoryProvider;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/LogFileManager$DirectoryProvider;)I
    .locals 3

    .line 175
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 177
    :cond_0
    instance-of v0, p1, Lo/setCurrentSession;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 180
    :cond_1
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    const-string v2, "Node is not leaf node!"

    invoke-static {v0, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 181
    instance-of v0, p0, Lo/writeInts;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lo/getLogString;

    if-eqz v0, :cond_2

    .line 182
    move-object v0, p0

    check-cast v0, Lo/writeInts;

    check-cast p1, Lo/getLogString;

    invoke-static {v0, p1}, Lo/getWorkingFileForSession;->compareLongDoubleNodes(Lo/writeInts;Lo/getLogString;)I

    move-result p1

    return p1

    .line 183
    :cond_2
    instance-of v0, p0, Lo/getLogString;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lo/writeInts;

    if-eqz v0, :cond_3

    .line 184
    check-cast p1, Lo/writeInts;

    move-object v0, p0

    check-cast v0, Lo/getLogString;

    invoke-static {p1, v0}, Lo/getWorkingFileForSession;->compareLongDoubleNodes(Lo/writeInts;Lo/getLogString;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 186
    :cond_3
    check-cast p1, Lo/getWorkingFileForSession;

    invoke-virtual {p0, p1}, Lo/getWorkingFileForSession;->leafCompare(Lo/getWorkingFileForSession;)I

    move-result p1

    return p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 60
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object p1

    invoke-virtual {p1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    return-object p1

    .line 65
    :cond_1
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/getWorkingFileForSession;->lazyHash:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/getWorkingFileForSession;->getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getWorkingFileForSession;->lazyHash:Ljava/lang/String;

    .line 139
    :cond_0
    iget-object v0, p0, Lo/getWorkingFileForSession;->lazyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 104
    invoke-virtual {p1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    return-object p1

    .line 107
    :cond_0
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getLeafType()Lo/getWorkingFileForSession$onNavigationEvent;
.end method

.method public getPredecessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method

.method protected getPriorityHash(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;
    .locals 2

    .line 143
    sget-object v0, Lo/isCurrent;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown hash version: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    return-object p1

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "priority:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v1, p1}, Lo/LogFileManager$DirectoryProvider;->getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSuccessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-virtual {p0}, Lo/getWorkingFileForSession;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ".value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ".priority"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/getWorkingFileForSession;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Lo/LogFileManager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract hashCode()I
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected leafCompare(Lo/getWorkingFileForSession;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getWorkingFileForSession<",
            "*>;)I"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lo/getWorkingFileForSession;->getLeafType()Lo/getWorkingFileForSession$onNavigationEvent;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lo/getWorkingFileForSession;->getLeafType()Lo/getWorkingFileForSession$onNavigationEvent;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lo/getWorkingFileForSession;->compareLeafValues(Lo/getWorkingFileForSession;)I

    move-result p1

    return p1

    .line 202
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0, v0}, Lo/getWorkingFileForSession;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 3

    .line 71
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 74
    :cond_0
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    invoke-static {v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 78
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v1

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lo/setCurrentSession;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lo/getWorkingFileForSession;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 125
    invoke-virtual {p1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, p2}, Lo/getWorkingFileForSession;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 130
    :cond_1
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setCurrentSession;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    iget-object p2, p0, Lo/getWorkingFileForSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {p1, p2}, Lo/LogFileManager$DirectoryProvider;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method
