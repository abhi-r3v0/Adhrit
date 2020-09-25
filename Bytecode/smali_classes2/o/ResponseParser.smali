.class public Lo/ResponseParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEEP_PREDICATE:Lo/onReportSendComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onReportSendComplete<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_TREE:Lo/persistFatalEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_PREDICATE:Lo/onReportSendComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onReportSendComplete<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_TREE:Lo/persistFatalEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pruneForest:Lo/persistFatalEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lo/ResponseParser$1;

    invoke-direct {v0}, Lo/ResponseParser$1;-><init>()V

    sput-object v0, Lo/ResponseParser;->KEEP_PREDICATE:Lo/onReportSendComplete;

    .line 46
    new-instance v0, Lo/ResponseParser$5;

    invoke-direct {v0}, Lo/ResponseParser$5;-><init>()V

    sput-object v0, Lo/ResponseParser;->PRUNE_PREDICATE:Lo/onReportSendComplete;

    .line 54
    new-instance v0, Lo/persistFatalEvent;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/ResponseParser;->PRUNE_TREE:Lo/persistFatalEvent;

    .line 55
    new-instance v0, Lo/persistFatalEvent;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/ResponseParser;->KEEP_TREE:Lo/persistFatalEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v0

    iput-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    return-void
.end method

.method private constructor <init>(Lo/persistFatalEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    return-void
.end method

.method private doAll(Lo/ExecutorUtils$2;Ljava/util/Set;Lo/persistFatalEvent;)Lo/ResponseParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;",
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lo/ResponseParser;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object v1

    .line 175
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    .line 176
    invoke-virtual {v1, v2, p3}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_0
    new-instance p2, Lo/ResponseParser;

    iget-object p3, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    new-instance v2, Lo/persistFatalEvent;

    .line 180
    invoke-virtual {v0}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {v2, v0, v1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;Lo/populateFramesList;)V

    .line 179
    invoke-virtual {p3, p1, v2}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/ResponseParser;-><init>(Lo/persistFatalEvent;)V

    return-object p2
.end method


# virtual methods
.method public affectsPath(Lo/ExecutorUtils$2;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->rootMostValue(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    .line 88
    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/persistFatalEvent;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public child(Lo/ExecutorUtils$2;)Lo/ResponseParser;
    .locals 1

    .line 104
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 107
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ResponseParser;->child(Lo/LogFileManager;)Lo/ResponseParser;

    move-result-object v0

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ResponseParser;->child(Lo/ExecutorUtils$2;)Lo/ResponseParser;

    move-result-object p1

    return-object p1
.end method

.method public child(Lo/LogFileManager;)Lo/ResponseParser;
    .locals 2

    .line 92
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->getChild(Lo/LogFileManager;)Lo/persistFatalEvent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Lo/persistFatalEvent;

    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v0}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v0}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v0

    iget-object v1, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v1}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object p1

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Lo/ResponseParser;

    invoke-direct {v0, p1}, Lo/ResponseParser;-><init>(Lo/persistFatalEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 188
    :cond_0
    instance-of v1, p1, Lo/ResponseParser;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 192
    :cond_1
    check-cast p1, Lo/ResponseParser;

    .line 194
    iget-object v1, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    iget-object p1, p1, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public foldKeptNodes(Ljava/lang/Object;Lo/persistFatalEvent$onNavigationEvent;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/persistFatalEvent$onNavigationEvent<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    new-instance v1, Lo/ResponseParser$2;

    invoke-direct {v1, p0, p2}, Lo/ResponseParser$2;-><init>(Lo/ResponseParser;Lo/persistFatalEvent$onNavigationEvent;)V

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->fold(Ljava/lang/Object;Lo/persistFatalEvent$onNavigationEvent;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 203
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keep(Lo/ExecutorUtils$2;)Lo/ResponseParser;
    .locals 2

    .line 140
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->KEEP_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    .line 144
    :cond_0
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->KEEP_TREE:Lo/persistFatalEvent;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object p1

    .line 145
    new-instance v0, Lo/ResponseParser;

    invoke-direct {v0, p1}, Lo/ResponseParser;-><init>(Lo/persistFatalEvent;)V

    return-object v0
.end method

.method public keepAll(Lo/ExecutorUtils$2;Ljava/util/Set;)Lo/ResponseParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)",
            "Lo/ResponseParser;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->KEEP_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    .line 154
    :cond_0
    sget-object v0, Lo/ResponseParser;->KEEP_TREE:Lo/persistFatalEvent;

    invoke-direct {p0, p1, p2, v0}, Lo/ResponseParser;->doAll(Lo/ExecutorUtils$2;Ljava/util/Set;Lo/persistFatalEvent;)Lo/ResponseParser;

    move-result-object p1

    return-object p1
.end method

.method public prune(Lo/ExecutorUtils$2;)Lo/ResponseParser;
    .locals 2

    .line 127
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->KEEP_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->PRUNE_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    .line 134
    :cond_0
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->PRUNE_TREE:Lo/persistFatalEvent;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object p1

    .line 135
    new-instance v0, Lo/ResponseParser;

    invoke-direct {v0, p1}, Lo/ResponseParser;-><init>(Lo/persistFatalEvent;)V

    return-object v0

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t prune path that was kept previously!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pruneAll(Lo/ExecutorUtils$2;Ljava/util/Set;)Lo/ResponseParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)",
            "Lo/ResponseParser;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->KEEP_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->PRUNE_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    .line 167
    :cond_0
    sget-object v0, Lo/ResponseParser;->PRUNE_TREE:Lo/persistFatalEvent;

    invoke-direct {p0, p1, p2, v0}, Lo/ResponseParser;->doAll(Lo/ExecutorUtils$2;Ljava/util/Set;Lo/persistFatalEvent;)Lo/ResponseParser;

    move-result-object p1

    return-object p1

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t prune path that was kept previously!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prunesAnything()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    sget-object v1, Lo/ResponseParser;->PRUNE_PREDICATE:Lo/onReportSendComplete;

    invoke-virtual {v0, v1}, Lo/persistFatalEvent;->containsMatchingValue(Lo/onReportSendComplete;)Z

    move-result v0

    return v0
.end method

.method public shouldKeep(Lo/ExecutorUtils$2;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->leafMostValue(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldPruneUnkeptDescendants(Lo/ExecutorUtils$2;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->leafMostValue(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{PruneForest:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ResponseParser;->pruneForest:Lo/persistFatalEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
