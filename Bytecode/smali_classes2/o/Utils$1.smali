.class public Lo/Utils$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final changeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/LogFileManager;",
            "Lo/sanitizeAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getChanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sanitizeAttribute;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public trackChildChange(Lo/sanitizeAttribute;)V
    .locals 5

    .line 36
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v1

    .line 38
    sget-object v2, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    sget-object v2, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    if-eq v0, v2, :cond_1

    sget-object v2, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v4, "Only child changes supported for tracking"

    invoke-static {v2, v4}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v2

    invoke-virtual {v2}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 44
    iget-object v2, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 45
    iget-object v2, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sanitizeAttribute;

    .line 46
    invoke-virtual {v2}, Lo/sanitizeAttribute;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object v3

    .line 47
    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    if-ne v0, v4, :cond_2

    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    if-ne v3, v4, :cond_2

    .line 48
    iget-object v0, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    .line 49
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p1

    invoke-virtual {v2}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v2

    .line 50
    invoke-static {v1, p1, v2}, Lo/sanitizeAttribute;->childChangedChange(Lo/LogFileManager;Lo/discardOldLogFiles;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object p1

    .line 48
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 52
    :cond_2
    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    if-ne v0, v4, :cond_3

    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    if-ne v3, v4, :cond_3

    .line 53
    iget-object p1, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 54
    :cond_3
    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    if-ne v0, v4, :cond_4

    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    if-ne v3, v4, :cond_4

    .line 56
    iget-object p1, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    invoke-virtual {v2}, Lo/sanitizeAttribute;->getOldIndexedNode()Lo/discardOldLogFiles;

    move-result-object v0

    invoke-static {v1, v0}, Lo/sanitizeAttribute;->childRemovedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 57
    :cond_4
    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    if-ne v0, v4, :cond_5

    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    if-ne v3, v4, :cond_5

    .line 58
    iget-object v0, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p1

    invoke-static {v1, p1}, Lo/sanitizeAttribute;->childAddedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 59
    :cond_5
    sget-object v4, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    if-ne v0, v4, :cond_6

    sget-object v0, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    if-ne v3, v0, :cond_6

    .line 61
    iget-object v0, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    .line 64
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p1

    invoke-virtual {v2}, Lo/sanitizeAttribute;->getOldIndexedNode()Lo/discardOldLogFiles;

    move-result-object v2

    .line 63
    invoke-static {v1, p1, v2}, Lo/sanitizeAttribute;->childChangedChange(Lo/LogFileManager;Lo/discardOldLogFiles;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object p1

    .line 61
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 66
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Illegal combination of changes: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " occurred after "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_7
    iget-object v0, p0, Lo/Utils$1;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
