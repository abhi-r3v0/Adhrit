.class public Lo/persistEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/persistEvent$onMessageChannelReady;,
        Lo/persistEvent$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private name:Lo/LogFileManager;

.field private node:Lo/SessionReportingCoordinator$$Lambda$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SessionReportingCoordinator$$Lambda$1<",
            "TT;>;"
        }
    .end annotation
.end field

.field private parent:Lo/persistEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistEvent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    new-instance v0, Lo/SessionReportingCoordinator$$Lambda$1;

    invoke-direct {v0}, Lo/SessionReportingCoordinator$$Lambda$1;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lo/persistEvent;-><init>(Lo/LogFileManager;Lo/persistEvent;Lo/SessionReportingCoordinator$$Lambda$1;)V

    return-void
.end method

.method public constructor <init>(Lo/LogFileManager;Lo/persistEvent;Lo/SessionReportingCoordinator$$Lambda$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager;",
            "Lo/persistEvent<",
            "TT;>;",
            "Lo/SessionReportingCoordinator$$Lambda$1<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/persistEvent;->name:Lo/LogFileManager;

    .line 40
    iput-object p2, p0, Lo/persistEvent;->parent:Lo/persistEvent;

    .line 41
    iput-object p3, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    return-void
.end method

.method private updateChild(Lo/LogFileManager;Lo/persistEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager;",
            "Lo/persistEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 171
    invoke-virtual {p2}, Lo/persistEvent;->isEmpty()Z

    move-result v0

    .line 172
    iget-object v1, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v1, v1, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 174
    iget-object p2, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object p2, p2, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-direct {p0}, Lo/persistEvent;->updateParents()V

    return-void

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 177
    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v0, v0, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    iget-object p2, p2, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {p0}, Lo/persistEvent;->updateParents()V

    :cond_1
    return-void
.end method

.method private updateParents()V
    .locals 2

    .line 165
    iget-object v0, p0, Lo/persistEvent;->parent:Lo/persistEvent;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lo/persistEvent;->name:Lo/LogFileManager;

    invoke-direct {v0, v1, p0}, Lo/persistEvent;->updateChild(Lo/LogFileManager;Lo/persistEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forEachAncestor(Lo/persistEvent$onMessageChannelReady;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent$onMessageChannelReady<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lo/persistEvent;->forEachAncestor(Lo/persistEvent$onMessageChannelReady;Z)Z

    move-result p1

    return p1
.end method

.method public forEachAncestor(Lo/persistEvent$onMessageChannelReady;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent$onMessageChannelReady<",
            "TT;>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    .line 143
    :cond_0
    iget-object p2, p0, Lo/persistEvent;->parent:Lo/persistEvent;

    :goto_0
    if-eqz p2, :cond_2

    .line 145
    invoke-interface {p1, p2}, Lo/persistEvent$onMessageChannelReady;->filterTreeNode(Lo/persistEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_1
    iget-object p2, p2, Lo/persistEvent;->parent:Lo/persistEvent;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public forEachChild(Lo/persistEvent$onNavigationEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent$onNavigationEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v0, v0, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 158
    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    new-instance v3, Lo/persistEvent;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/LogFileManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SessionReportingCoordinator$$Lambda$1;

    invoke-direct {v3, v4, p0, v2}, Lo/persistEvent;-><init>(Lo/LogFileManager;Lo/persistEvent;Lo/SessionReportingCoordinator$$Lambda$1;)V

    .line 160
    invoke-interface {p1, v3}, Lo/persistEvent$onNavigationEvent;->visitTree(Lo/persistEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachDescendant(Lo/persistEvent$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent$onNavigationEvent<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0, v0}, Lo/persistEvent;->forEachDescendant(Lo/persistEvent$onNavigationEvent;ZZ)V

    return-void
.end method

.method public forEachDescendant(Lo/persistEvent$onNavigationEvent;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent$onNavigationEvent<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, p2, v0}, Lo/persistEvent;->forEachDescendant(Lo/persistEvent$onNavigationEvent;ZZ)V

    return-void
.end method

.method public forEachDescendant(Lo/persistEvent$onNavigationEvent;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent$onNavigationEvent<",
            "TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 122
    invoke-interface {p1, p0}, Lo/persistEvent$onNavigationEvent;->visitTree(Lo/persistEvent;)V

    .line 125
    :cond_0
    new-instance v0, Lo/persistEvent$1;

    invoke-direct {v0, p0, p1, p3}, Lo/persistEvent$1;-><init>(Lo/persistEvent;Lo/persistEvent$onNavigationEvent;Z)V

    invoke-virtual {p0, v0}, Lo/persistEvent;->forEachChild(Lo/persistEvent$onNavigationEvent;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 134
    invoke-interface {p1, p0}, Lo/persistEvent$onNavigationEvent;->visitTree(Lo/persistEvent;)V

    :cond_1
    return-void
.end method

.method public getName()Lo/LogFileManager;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/persistEvent;->name:Lo/LogFileManager;

    return-object v0
.end method

.method public getParent()Lo/persistEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/persistEvent<",
            "TT;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lo/persistEvent;->parent:Lo/persistEvent;

    return-object v0
.end method

.method public getPath()Lo/ExecutorUtils$2;
    .locals 4

    .line 95
    iget-object v0, p0, Lo/persistEvent;->parent:Lo/persistEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lo/persistEvent;->name:Lo/LogFileManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 97
    iget-object v0, p0, Lo/persistEvent;->parent:Lo/persistEvent;

    invoke-virtual {v0}, Lo/persistEvent;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    iget-object v1, p0, Lo/persistEvent;->name:Lo/LogFileManager;

    invoke-virtual {v0, v1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    iget-object v0, p0, Lo/persistEvent;->name:Lo/LogFileManager;

    if-eqz v0, :cond_2

    new-instance v0, Lo/ExecutorUtils$2;

    new-array v2, v2, [Lo/LogFileManager;

    iget-object v3, p0, Lo/persistEvent;->name:Lo/LogFileManager;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    return-object v0

    :cond_2
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v0, v0, Lo/SessionReportingCoordinator$$Lambda$1;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v0, v0, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v0, v0, Lo/SessionReportingCoordinator$$Lambda$1;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v0, v0, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lastNodeOnPath(Lo/ExecutorUtils$2;)Lo/SessionReportingCoordinator$$Lambda$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")",
            "Lo/SessionReportingCoordinator$$Lambda$1<",
            "TT;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    .line 50
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 53
    iget-object v2, v0, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SessionReportingCoordinator$$Lambda$1;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iput-object p1, v0, Lo/SessionReportingCoordinator$$Lambda$1;->value:Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lo/persistEvent;->updateParents()V

    return-void
.end method

.method public subTree(Lo/ExecutorUtils$2;)Lo/persistEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")",
            "Lo/persistEvent<",
            "TT;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 69
    iget-object v2, v1, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v2, v2, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    iget-object v2, v2, Lo/SessionReportingCoordinator$$Lambda$1;->children:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SessionReportingCoordinator$$Lambda$1;

    goto :goto_1

    :cond_0
    new-instance v2, Lo/SessionReportingCoordinator$$Lambda$1;

    invoke-direct {v2}, Lo/SessionReportingCoordinator$$Lambda$1;-><init>()V

    .line 70
    :goto_1
    new-instance v3, Lo/persistEvent;

    invoke-direct {v3, v0, v1, v2}, Lo/persistEvent;-><init>(Lo/LogFileManager;Lo/persistEvent;Lo/SessionReportingCoordinator$$Lambda$1;)V

    .line 71
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 184
    invoke-virtual {p0, v0}, Lo/persistEvent;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 188
    iget-object v0, p0, Lo/persistEvent;->name:Lo/LogFileManager;

    if-nez v0, :cond_0

    const-string v0, "<anon>"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/persistEvent;->node:Lo/SessionReportingCoordinator$$Lambda$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/SessionReportingCoordinator$$Lambda$1;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
