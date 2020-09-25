.class public final Lo/Utils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Utils$3;


# instance fields
.field private final index:Lo/setLogFile;

.field private final limit:I

.field private final rangedFilter:Lo/Utils$$Lambda$1;

.field private final reverse:Z


# direct methods
.method public constructor <init>(Lo/recursiveDelete;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lo/Utils$$Lambda$1;

    invoke-direct {v0, p1}, Lo/Utils$$Lambda$1;-><init>(Lo/recursiveDelete;)V

    iput-object v0, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    .line 43
    invoke-virtual {p1}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v0

    iput-object v0, p0, Lo/Utils$2;->index:Lo/setLogFile;

    .line 44
    invoke-virtual {p1}, Lo/recursiveDelete;->getLimit()I

    move-result v0

    iput v0, p0, Lo/Utils$2;->limit:I

    .line 45
    invoke-virtual {p1}, Lo/recursiveDelete;->isViewFromLeft()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lo/Utils$2;->reverse:Z

    return-void
.end method

.method private fullLimitUpdateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;
    .locals 8

    .line 78
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getChildCount()I

    move-result v0

    iget v1, p0, Lo/Utils$2;->limit:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 79
    new-instance v0, Lo/QueueFile;

    invoke-direct {v0, p2, p3}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    .line 81
    iget-boolean v1, p0, Lo/Utils$2;->reverse:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lo/discardOldLogFiles;->getFirstChild()Lo/QueueFile;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getLastChild()Lo/QueueFile;

    move-result-object v1

    .line 82
    :goto_1
    iget-object v4, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    invoke-virtual {v4, v0}, Lo/Utils$$Lambda$1;->matches(Lo/QueueFile;)Z

    move-result v4

    .line 83
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    invoke-interface {v5, p2}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 84
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    invoke-interface {v5, p2}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 85
    iget-object v6, p0, Lo/Utils$2;->index:Lo/setLogFile;

    iget-boolean v7, p0, Lo/Utils$2;->reverse:Z

    invoke-interface {p4, v6, v1, v7}, Lo/Utils$3$onPostMessage;->getChildAfterChild(Lo/setLogFile;Lo/QueueFile;Z)Lo/QueueFile;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v7

    invoke-interface {v6, v7}, Lo/LogFileManager$DirectoryProvider;->hasChild(Lo/LogFileManager;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    :cond_2
    iget-object v6, p0, Lo/Utils$2;->index:Lo/setLogFile;

    iget-boolean v7, p0, Lo/Utils$2;->reverse:Z

    invoke-interface {p4, v6, v1, v7}, Lo/Utils$3$onPostMessage;->getChildAfterChild(Lo/setLogFile;Lo/QueueFile;Z)Lo/QueueFile;

    move-result-object v1

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    const/4 p4, 0x1

    goto :goto_3

    .line 95
    :cond_4
    iget-object p4, p0, Lo/Utils$2;->index:Lo/setLogFile;

    iget-boolean v6, p0, Lo/Utils$2;->reverse:Z

    invoke-virtual {p4, v1, v0, v6}, Lo/setLogFile;->compare(Lo/QueueFile;Lo/QueueFile;Z)I

    move-result p4

    :goto_3
    if-eqz v4, :cond_5

    .line 96
    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-ltz p4, :cond_5

    const/4 p4, 0x1

    goto :goto_4

    :cond_5
    const/4 p4, 0x0

    :goto_4
    if-eqz p4, :cond_7

    if-eqz p5, :cond_6

    .line 100
    invoke-static {p2, p3, v5}, Lo/sanitizeAttribute;->childChangedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object p4

    .line 99
    invoke-virtual {p5, p4}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    .line 102
    :cond_6
    invoke-virtual {p1, p2, p3}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    return-object p1

    :cond_7
    if-eqz p5, :cond_8

    .line 105
    invoke-static {p2, v5}, Lo/sanitizeAttribute;->childRemovedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object p3

    invoke-virtual {p5, p3}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    .line 107
    :cond_8
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    if-eqz v1, :cond_9

    .line 108
    iget-object p2, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    invoke-virtual {p2, v1}, Lo/Utils$$Lambda$1;->matches(Lo/QueueFile;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_b

    if-eqz p5, :cond_a

    .line 112
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p2

    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-static {p2, p3}, Lo/sanitizeAttribute;->childAddedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object p2

    .line 111
    invoke-virtual {p5, p2}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    .line 114
    :cond_a
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p2

    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    :cond_b
    return-object p1

    .line 119
    :cond_c
    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_d

    return-object p1

    :cond_d
    if-eqz v4, :cond_f

    .line 123
    iget-object p4, p0, Lo/Utils$2;->index:Lo/setLogFile;

    iget-boolean v2, p0, Lo/Utils$2;->reverse:Z

    invoke-virtual {p4, v1, v0, v2}, Lo/setLogFile;->compare(Lo/QueueFile;Lo/QueueFile;Z)I

    move-result p4

    if-ltz p4, :cond_f

    if-eqz p5, :cond_e

    .line 126
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p4

    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-static {p4, v0}, Lo/sanitizeAttribute;->childRemovedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object p4

    .line 125
    invoke-virtual {p5, p4}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    .line 127
    invoke-static {p2, p3}, Lo/sanitizeAttribute;->childAddedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object p4

    invoke-virtual {p5, p4}, Lo/Utils$1;->trackChildChange(Lo/sanitizeAttribute;)V

    .line 130
    :cond_e
    invoke-virtual {p1, p2, p3}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    .line 131
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p2

    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    :cond_f
    return-object p1
.end method


# virtual methods
.method public final filtersNodes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getIndex()Lo/setLogFile;
    .locals 1

    .line 200
    iget-object v0, p0, Lo/Utils$2;->index:Lo/setLogFile;

    return-object v0
.end method

.method public final getIndexedFilter()Lo/Utils$3;
    .locals 1

    .line 195
    iget-object v0, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    invoke-virtual {v0}, Lo/Utils$$Lambda$1;->getIndexedFilter()Lo/Utils$3;

    move-result-object v0

    return-object v0
.end method

.method public final updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;
    .locals 7

    .line 56
    iget-object v0, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    new-instance v1, Lo/QueueFile;

    invoke-direct {v1, p2, p3}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    invoke-virtual {v0, v1}, Lo/Utils$$Lambda$1;->matches(Lo/QueueFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 59
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-interface {p3, p2}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p1

    .line 62
    :cond_1
    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->getChildCount()I

    move-result p3

    iget v0, p0, Lo/Utils$2;->limit:I

    if-ge p3, v0, :cond_2

    .line 63
    iget-object p3, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    .line 64
    invoke-virtual {p3}, Lo/Utils$$Lambda$1;->getIndexedFilter()Lo/Utils$3;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 65
    invoke-interface/range {v0 .. v6}, Lo/Utils$3;->updateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/ExecutorUtils$2;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    .line 67
    invoke-direct/range {v0 .. v5}, Lo/Utils$2;->fullLimitUpdateChild(Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/Utils$3$onPostMessage;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object p1

    return-object p1
.end method

.method public final updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;
    .locals 10

    .line 144
    invoke-virtual {p2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 150
    :cond_0
    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/discardOldLogFiles;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v0

    .line 155
    iget-boolean v1, p0, Lo/Utils$2;->reverse:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p2}, Lo/discardOldLogFiles;->reverseIterator()Ljava/util/Iterator;

    move-result-object p2

    .line 157
    iget-object v1, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    invoke-virtual {v1}, Lo/Utils$$Lambda$1;->getEndPost()Lo/QueueFile;

    move-result-object v1

    .line 158
    iget-object v3, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    invoke-virtual {v3}, Lo/Utils$$Lambda$1;->getStartPost()Lo/QueueFile;

    move-result-object v3

    const/4 v4, -0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p2}, Lo/discardOldLogFiles;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 162
    iget-object v1, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    invoke-virtual {v1}, Lo/Utils$$Lambda$1;->getStartPost()Lo/QueueFile;

    move-result-object v1

    .line 163
    iget-object v3, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    invoke-virtual {v3}, Lo/Utils$$Lambda$1;->getEndPost()Lo/QueueFile;

    move-result-object v3

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 169
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 170
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/QueueFile;

    if-nez v6, :cond_2

    .line 171
    iget-object v9, p0, Lo/Utils$2;->index:Lo/setLogFile;

    invoke-virtual {v9, v1, v8}, Lo/setLogFile;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int v9, v9, v4

    if-gtz v9, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    .line 175
    iget v9, p0, Lo/Utils$2;->limit:I

    if-ge v7, v9, :cond_3

    iget-object v9, p0, Lo/Utils$2;->index:Lo/setLogFile;

    .line 176
    invoke-virtual {v9, v8, v3}, Lo/setLogFile;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int v9, v9, v4

    if-gtz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v8}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v8

    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lo/discardOldLogFiles;->updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_5
    :goto_3
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p2

    iget-object v0, p0, Lo/Utils$2;->index:Lo/setLogFile;

    invoke-static {p2, v0}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object v0

    .line 184
    :cond_6
    iget-object p2, p0, Lo/Utils$2;->rangedFilter:Lo/Utils$$Lambda$1;

    invoke-virtual {p2}, Lo/Utils$$Lambda$1;->getIndexedFilter()Lo/Utils$3;

    move-result-object p2

    invoke-interface {p2, p1, v0, p3}, Lo/Utils$3;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object p1

    return-object p1
.end method

.method public final updatePriority(Lo/discardOldLogFiles;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;
    .locals 0

    return-object p1
.end method
