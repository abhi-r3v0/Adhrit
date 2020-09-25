.class public final Lo/ExecutorUtils$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lo/ExecutorUtils$2;",
        "Lo/LogFileManager$DirectoryProvider;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lo/ExecutorUtils$1$1;


# instance fields
.field private final writeTree:Lo/persistFatalEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistFatalEvent<",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lo/ExecutorUtils$1$1;

    new-instance v1, Lo/persistFatalEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    sput-object v0, Lo/ExecutorUtils$1$1;->EMPTY:Lo/ExecutorUtils$1$1;

    return-void
.end method

.method private constructor <init>(Lo/persistFatalEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistFatalEvent<",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    return-void
.end method

.method private applySubtreeWrite(Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/persistFatalEvent<",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;",
            "Lo/LogFileManager$DirectoryProvider;",
            ")",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    .line 221
    invoke-virtual {p2}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p2}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/LogFileManager$DirectoryProvider;

    invoke-interface {p3, p1, p2}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p2}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object p2

    invoke-virtual {p2}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/persistFatalEvent;

    .line 228
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager;

    .line 229
    invoke-virtual {v1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-virtual {v2}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Priority writes must always be leaf nodes"

    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 233
    invoke-virtual {v2}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LogFileManager$DirectoryProvider;

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p1, v1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-direct {p0, v1, v2, p3}, Lo/ExecutorUtils$1$1;->applySubtreeWrite(Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    goto :goto_0

    .line 239
    :cond_3
    invoke-interface {p3, p1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz v0, :cond_4

    .line 240
    invoke-static {}, Lo/LogFileManager;->getPriorityKey()Lo/LogFileManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    :cond_4
    return-object p3
.end method

.method public static emptyWrite()Lo/ExecutorUtils$1$1;
    .locals 1

    .line 46
    sget-object v0, Lo/ExecutorUtils$1$1;->EMPTY:Lo/ExecutorUtils$1$1;

    return-object v0
.end method

.method public static fromChildMerge(Ljava/util/Map;)Lo/ExecutorUtils$1$1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/LogFileManager;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;)",
            "Lo/ExecutorUtils$1$1;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v0

    .line 61
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    new-instance v2, Lo/persistFatalEvent;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LogFileManager$DirectoryProvider;

    invoke-direct {v2, v3}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    .line 63
    new-instance v3, Lo/ExecutorUtils$2;

    const/4 v4, 0x1

    new-array v4, v4, [Lo/LogFileManager;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager;

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    invoke-virtual {v0, v3, v2}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p0, Lo/ExecutorUtils$1$1;

    invoke-direct {p0, v0}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object p0
.end method

.method public static fromPathMerge(Ljava/util/Map;)Lo/ExecutorUtils$1$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;)",
            "Lo/ExecutorUtils$1$1;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v0

    .line 70
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    new-instance v2, Lo/persistFatalEvent;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LogFileManager$DirectoryProvider;

    invoke-direct {v2, v3}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1, v2}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Lo/ExecutorUtils$1$1;

    invoke-direct {p0, v0}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object p0
.end method

.method public static fromValue(Ljava/util/Map;)Lo/ExecutorUtils$1$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/ExecutorUtils$1$1;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v0

    .line 51
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    new-instance v2, Lo/persistFatalEvent;

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    .line 54
    new-instance v3, Lo/ExecutorUtils$2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Lo/ExecutorUtils$1$1;

    invoke-direct {p0, v0}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object p0
.end method


# virtual methods
.method public final addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;
    .locals 3

    .line 78
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance p1, Lo/ExecutorUtils$1$1;

    new-instance v0, Lo/persistFatalEvent;

    invoke-direct {v0, p2}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object p1

    .line 81
    :cond_0
    iget-object v0, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->findRootMostPathWithValue(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {v0, p1}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p1

    .line 84
    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v1, v0}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager$DirectoryProvider;

    .line 85
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v2}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getParent()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-interface {v2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    .line 92
    :cond_1
    invoke-interface {v1, p1, p2}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 93
    new-instance p2, Lo/ExecutorUtils$1$1;

    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v1, v0, p1}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object p2

    .line 96
    :cond_2
    new-instance v0, Lo/persistFatalEvent;

    invoke-direct {v0, p2}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    .line 97
    iget-object p2, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {p2, p1, v0}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object p1

    .line 98
    new-instance p2, Lo/ExecutorUtils$1$1;

    invoke-direct {p2, p1}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object p2
.end method

.method public final addWrite(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;
    .locals 3

    .line 104
    new-instance v0, Lo/ExecutorUtils$2;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/LogFileManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    invoke-virtual {p0, v0, p2}, Lo/ExecutorUtils$1$1;->addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    return-object p1
.end method

.method public final addWrites(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)Lo/ExecutorUtils$1$1;
    .locals 1

    .line 108
    iget-object p2, p2, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    new-instance v0, Lo/ExecutorUtils$1$1$4;

    invoke-direct {v0, p0, p1}, Lo/ExecutorUtils$1$1$4;-><init>(Lo/ExecutorUtils$1$1;Lo/ExecutorUtils$2;)V

    invoke-virtual {p2, p0, v0}, Lo/persistFatalEvent;->fold(Ljava/lang/Object;Lo/persistFatalEvent$onNavigationEvent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ExecutorUtils$1$1;

    return-object p1
.end method

.method public final apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 254
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v0

    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-direct {p0, v0, v1, p1}, Lo/ExecutorUtils$1$1;->applySubtreeWrite(Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public final childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;
    .locals 2

    .line 190
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    new-instance p1, Lo/ExecutorUtils$1$1;

    new-instance v1, Lo/persistFatalEvent;

    invoke-direct {v1, v0}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object p1

    .line 198
    :cond_1
    new-instance v0, Lo/ExecutorUtils$1$1;

    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v1, p1}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object v0
.end method

.method public final childCompoundWrites()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lo/LogFileManager;",
            "Lo/ExecutorUtils$1$1;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v1}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object v1

    invoke-virtual {v1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LogFileManager;

    new-instance v4, Lo/ExecutorUtils$1$1;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/persistFatalEvent;

    invoke-direct {v4, v2}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 290
    :cond_1
    check-cast p1, Lo/ExecutorUtils$1$1;

    invoke-virtual {p1, v0}, Lo/ExecutorUtils$1$1;->getValue(Z)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0}, Lo/ExecutorUtils$1$1;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getCompleteChildren()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v1}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v1}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v1}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/QueueFile;

    .line 176
    new-instance v3, Lo/QueueFile;

    invoke-virtual {v2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v4

    invoke-virtual {v2}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v1}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object v1

    invoke-virtual {v1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/persistFatalEvent;

    .line 181
    invoke-virtual {v3}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 182
    new-instance v4, Lo/QueueFile;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    invoke-virtual {v3}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LogFileManager$DirectoryProvider;

    invoke-direct {v4, v2, v3}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 159
    iget-object v0, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v0, p1}, Lo/persistFatalEvent;->findRootMostPathWithValue(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v1, v0}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager$DirectoryProvider;

    invoke-static {v0, p1}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getValue(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    iget-object v1, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    new-instance v2, Lo/ExecutorUtils$1$1$1;

    invoke-direct {v2, p0, v0, p1}, Lo/ExecutorUtils$1$1$1;-><init>(Lo/ExecutorUtils$1$1;Ljava/util/Map;Z)V

    invoke-virtual {v1, v2}, Lo/persistFatalEvent;->foreach(Lo/persistFatalEvent$onNavigationEvent;)V

    return-object v0
.end method

.method public final hasCompleteWrite(Lo/ExecutorUtils$2;)Z
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Lo/ExecutorUtils$1$1;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v0}, Lo/persistFatalEvent;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v0}, Lo/persistFatalEvent;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final removeWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;
    .locals 2

    .line 126
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object p1, Lo/ExecutorUtils$1$1;->EMPTY:Lo/ExecutorUtils$1$1;

    return-object p1

    .line 129
    :cond_0
    iget-object v0, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    .line 130
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object p1

    .line 131
    new-instance v0, Lo/ExecutorUtils$1$1;

    invoke-direct {v0, p1}, Lo/ExecutorUtils$1$1;-><init>(Lo/persistFatalEvent;)V

    return-object v0
.end method

.method public final rootWrite()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/ExecutorUtils$1$1;->writeTree:Lo/persistFatalEvent;

    invoke-virtual {v0}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompoundWrite{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lo/ExecutorUtils$1$1;->getValue(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
