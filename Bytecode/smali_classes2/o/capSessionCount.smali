.class public Lo/capSessionCount;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final index:Lo/setLogFile;

.field private final query:Lo/lambda$awaitEvenIfOnMainThread$0;


# direct methods
.method public constructor <init>(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/capSessionCount;->query:Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 36
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object p1

    iput-object p1, p0, Lo/capSessionCount;->index:Lo/setLogFile;

    return-void
.end method

.method static synthetic access$000(Lo/capSessionCount;)Lo/setLogFile;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/capSessionCount;->index:Lo/setLogFile;

    return-object p0
.end method

.method private changeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lo/sanitizeAttribute;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lo/capSessionCount$2;

    invoke-direct {v0, p0}, Lo/capSessionCount$2;-><init>(Lo/capSessionCount;)V

    return-object v0
.end method

.method private generateEvent(Lo/sanitizeAttribute;Lo/addDelayedShutdownHook;Lo/discardOldLogFiles;)Lo/getCustomKeys;
    .locals 3

    .line 64
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/Utils$onNavigationEvent;->VALUE:Lo/Utils$onNavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {p1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v1

    invoke-virtual {v1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    iget-object v2, p0, Lo/capSessionCount;->index:Lo/setLogFile;

    .line 69
    invoke-virtual {p3, v0, v1, v2}, Lo/discardOldLogFiles;->getPredecessorChildName(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/LogFileManager;

    move-result-object p3

    .line 71
    invoke-virtual {p1, p3}, Lo/sanitizeAttribute;->changeWithPrevName(Lo/LogFileManager;)Lo/sanitizeAttribute;

    move-result-object p1

    .line 73
    :cond_1
    :goto_0
    iget-object p3, p0, Lo/capSessionCount;->query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {p2, p1, p3}, Lo/addDelayedShutdownHook;->createEvent(Lo/sanitizeAttribute;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/getCustomKeys;

    move-result-object p1

    return-object p1
.end method

.method private generateEventsForType(Ljava/util/List;Lo/Utils$onNavigationEvent;Ljava/util/List;Ljava/util/List;Lo/discardOldLogFiles;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getCustomKeys;",
            ">;",
            "Lo/Utils$onNavigationEvent;",
            "Ljava/util/List<",
            "Lo/sanitizeAttribute;",
            ">;",
            "Ljava/util/List<",
            "Lo/addDelayedShutdownHook;",
            ">;",
            "Lo/discardOldLogFiles;",
            ")V"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sanitizeAttribute;

    .line 47
    invoke-virtual {v1}, Lo/sanitizeAttribute;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    invoke-direct {p0}, Lo/capSessionCount;->changeComparator()Ljava/util/Comparator;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sanitizeAttribute;

    .line 53
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/addDelayedShutdownHook;

    .line 54
    invoke-virtual {v2, p2}, Lo/addDelayedShutdownHook;->respondsTo(Lo/Utils$onNavigationEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    invoke-direct {p0, v0, v2, p5}, Lo/capSessionCount;->generateEvent(Lo/sanitizeAttribute;Lo/addDelayedShutdownHook;Lo/discardOldLogFiles;)Lo/getCustomKeys;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public generateEventsForChanges(Ljava/util/List;Lo/discardOldLogFiles;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sanitizeAttribute;",
            ">;",
            "Lo/discardOldLogFiles;",
            "Ljava/util/List<",
            "Lo/addDelayedShutdownHook;",
            ">;)",
            "Ljava/util/List<",
            "Lo/getCustomKeys;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sanitizeAttribute;

    .line 82
    invoke-virtual {v1}, Lo/sanitizeAttribute;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object v2

    sget-object v3, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/capSessionCount;->index:Lo/setLogFile;

    .line 84
    invoke-virtual {v1}, Lo/sanitizeAttribute;->getOldIndexedNode()Lo/discardOldLogFiles;

    move-result-object v3

    invoke-virtual {v3}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-virtual {v1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v4

    invoke-virtual {v4}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    .line 83
    invoke-virtual {v2, v3, v4}, Lo/setLogFile;->indexedValueChanged(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v2

    invoke-virtual {v1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v1

    invoke-static {v2, v1}, Lo/sanitizeAttribute;->childMovedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    sget-object v2, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    move-object v0, p0

    move-object v1, v6

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/capSessionCount;->generateEventsForType(Ljava/util/List;Lo/Utils$onNavigationEvent;Ljava/util/List;Ljava/util/List;Lo/discardOldLogFiles;)V

    .line 91
    sget-object v2, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    invoke-direct/range {v0 .. v5}, Lo/capSessionCount;->generateEventsForType(Ljava/util/List;Lo/Utils$onNavigationEvent;Ljava/util/List;Ljava/util/List;Lo/discardOldLogFiles;)V

    .line 93
    sget-object v2, Lo/Utils$onNavigationEvent;->CHILD_MOVED:Lo/Utils$onNavigationEvent;

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lo/capSessionCount;->generateEventsForType(Ljava/util/List;Lo/Utils$onNavigationEvent;Ljava/util/List;Ljava/util/List;Lo/discardOldLogFiles;)V

    .line 95
    sget-object v2, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lo/capSessionCount;->generateEventsForType(Ljava/util/List;Lo/Utils$onNavigationEvent;Ljava/util/List;Ljava/util/List;Lo/discardOldLogFiles;)V

    .line 97
    sget-object v2, Lo/Utils$onNavigationEvent;->VALUE:Lo/Utils$onNavigationEvent;

    invoke-direct/range {v0 .. v5}, Lo/capSessionCount;->generateEventsForType(Ljava/util/List;Lo/Utils$onNavigationEvent;Ljava/util/List;Ljava/util/List;Lo/discardOldLogFiles;)V

    return-object v6
.end method
