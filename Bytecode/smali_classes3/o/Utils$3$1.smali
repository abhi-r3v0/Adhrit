.class public Lo/Utils$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Utils$3;


# instance fields
.field private final index:Lo/setLogFile;


# direct methods
.method public constructor <init>(Lo/setLogFile;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/Utils$3$1;->index:Lo/setLogFile;

    return-void
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()Lo/setLogFile;
    .locals 1

    .line 129
    iget-object v0, p0, Lo/Utils$3$1;->index:Lo/setLogFile;

    return-object v0
.end method

.method public getIndexedFilter()Lo/Utils$3;
    .locals 0

    return-object p0
.end method

.method public updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;
    .locals 2

    .line 43
    iget-object p5, p0, Lo/Utils$3$1;->index:Lo/setLogFile;

    invoke-virtual {p1, p5}, Lo/discardOldLogFiles;->hasIndex(Lo/setLogFile;)Z

    move-result p5

    const-string v0, "The index must match the filter"

    invoke-static {p5, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p5

    .line 45
    invoke-interface {p5, p2}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 47
    invoke-interface {v0, p4}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-interface {p3, p4}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 51
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p4

    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v1

    if-ne p4, v1, :cond_0

    return-object p1

    :cond_0
    if-eqz p6, :cond_4

    .line 61
    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 62
    invoke-interface {p5, p2}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 63
    invoke-static {p2, v0}, Lo/sanitizeAttribute;->childRemovedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object p4

    invoke-virtual {p6, p4}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {p5}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result p4

    const-string p6, "A child remove without an old child only makes sense on a leaf node"

    .line 65
    invoke-static {p4, p6}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 70
    invoke-static {p2, p3}, Lo/sanitizeAttribute;->childAddedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object p4

    invoke-virtual {p6, p4}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {p2, p3, v0}, Lo/sanitizeAttribute;->childChangedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object p4

    invoke-virtual {p6, p4}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    .line 75
    :cond_4
    :goto_0
    invoke-interface {p5}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5

    return-object p1

    .line 79
    :cond_5
    invoke-virtual {p1, p2, p3}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    return-object p1
.end method

.method public updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;
    .locals 4

    .line 86
    iget-object v0, p0, Lo/Utils$3$1;->index:Lo/setLogFile;

    .line 87
    invoke-virtual {p2, v0}, Lo/discardOldLogFiles;->hasIndex(Lo/setLogFile;)Z

    move-result v0

    const-string v1, "Can\'t use IndexedNode that doesn\'t have filter\'s index"

    .line 86
    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    if-eqz p3, :cond_4

    .line 89
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/QueueFile;

    .line 90
    invoke-virtual {p2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v2

    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-static {v2, v1}, Lo/sanitizeAttribute;->childRemovedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object v1

    .line 91
    invoke-virtual {p3, v1}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    invoke-virtual {p2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/QueueFile;

    .line 97
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    .line 99
    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v3

    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lo/sanitizeAttribute;->childChangedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object v1

    .line 100
    invoke-virtual {p3, v1}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v2

    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-static {v2, v1}, Lo/sanitizeAttribute;->childAddedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object v1

    .line 104
    invoke-virtual {p3, v1}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public updatePriority(Lo/discardOldLogFiles;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;
    .locals 1

    .line 115
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 118
    :cond_0
    invoke-virtual {p1, p2}, Lo/discardOldLogFiles;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    return-object p1
.end method
