.class public Lo/Utils$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Utils$3;


# instance fields
.field private final endPost:Lo/QueueFile;

.field private final index:Lo/setLogFile;

.field private final indexedFilter:Lo/Utils$3$1;

.field private final startPost:Lo/QueueFile;


# direct methods
.method public constructor <init>(Lo/recursiveDelete;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lo/Utils$3$1;

    invoke-virtual {p1}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/Utils$3$1;-><init>(Lo/setLogFile;)V

    iput-object v0, p0, Lo/Utils$$Lambda$1;->indexedFilter:Lo/Utils$3$1;

    .line 36
    invoke-virtual {p1}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v0

    iput-object v0, p0, Lo/Utils$$Lambda$1;->index:Lo/setLogFile;

    .line 37
    invoke-static {p1}, Lo/Utils$$Lambda$1;->getStartPost(Lo/recursiveDelete;)Lo/QueueFile;

    move-result-object v0

    iput-object v0, p0, Lo/Utils$$Lambda$1;->startPost:Lo/QueueFile;

    .line 38
    invoke-static {p1}, Lo/Utils$$Lambda$1;->getEndPost(Lo/recursiveDelete;)Lo/QueueFile;

    move-result-object p1

    iput-object p1, p0, Lo/Utils$$Lambda$1;->endPost:Lo/QueueFile;

    return-void
.end method

.method private static getEndPost(Lo/recursiveDelete;)Lo/QueueFile;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lo/recursiveDelete;->getIndexEndName()Lo/LogFileManager;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v1

    invoke-virtual {p0}, Lo/recursiveDelete;->getIndexEndValue()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lo/setLogFile;->makePost(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/QueueFile;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object p0

    invoke-virtual {p0}, Lo/setLogFile;->maxPost()Lo/QueueFile;

    move-result-object p0

    return-object p0
.end method

.method private static getStartPost(Lo/recursiveDelete;)Lo/QueueFile;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lo/recursiveDelete;->getIndexStartName()Lo/LogFileManager;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v1

    invoke-virtual {p0}, Lo/recursiveDelete;->getIndexStartValue()Lo/LogFileManager$DirectoryProvider;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lo/setLogFile;->makePost(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/QueueFile;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object p0

    invoke-virtual {p0}, Lo/setLogFile;->minPost()Lo/QueueFile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEndPost()Lo/QueueFile;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/Utils$$Lambda$1;->endPost:Lo/QueueFile;

    return-object v0
.end method

.method public getIndex()Lo/setLogFile;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/Utils$$Lambda$1;->index:Lo/setLogFile;

    return-object v0
.end method

.method public getIndexedFilter()Lo/Utils$3;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/Utils$$Lambda$1;->indexedFilter:Lo/Utils$3$1;

    return-object v0
.end method

.method public getStartPost()Lo/QueueFile;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/Utils$$Lambda$1;->startPost:Lo/QueueFile;

    return-object v0
.end method

.method public matches(Lo/QueueFile;)Z
    .locals 2

    .line 68
    iget-object v0, p0, Lo/Utils$$Lambda$1;->index:Lo/setLogFile;

    invoke-virtual {p0}, Lo/Utils$$Lambda$1;->getStartPost()Lo/QueueFile;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/setLogFile;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lo/Utils$$Lambda$1;->index:Lo/setLogFile;

    .line 69
    invoke-virtual {p0}, Lo/Utils$$Lambda$1;->getEndPost()Lo/QueueFile;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/setLogFile;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;
    .locals 7

    .line 84
    new-instance v0, Lo/QueueFile;

    invoke-direct {v0, p2, p3}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    invoke-virtual {p0, v0}, Lo/Utils$$Lambda$1;->matches(Lo/QueueFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 87
    iget-object v0, p0, Lo/Utils$$Lambda$1;->indexedFilter:Lo/Utils$3$1;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/Utils$3$1;->updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object p1

    return-object p1
.end method

.method public updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;
    .locals 3

    .line 95
    invoke-virtual {p2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p2

    iget-object v0, p0, Lo/Utils$$Lambda$1;->index:Lo/setLogFile;

    invoke-static {p2, v0}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object p2

    goto :goto_1

    .line 100
    :cond_0
    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/discardOldLogFiles;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Lo/discardOldLogFiles;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/QueueFile;

    .line 102
    invoke-virtual {p0, v1}, Lo/Utils$$Lambda$1;->matches(Lo/QueueFile;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v1

    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 107
    :goto_1
    iget-object v0, p0, Lo/Utils$$Lambda$1;->indexedFilter:Lo/Utils$3$1;

    invoke-virtual {v0, p1, p2, p3}, Lo/Utils$3$1;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lo/discardOldLogFiles;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;
    .locals 0

    return-object p1
.end method
