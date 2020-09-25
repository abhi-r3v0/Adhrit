.class public final Lo/getUserDataFileForSession;
.super Lo/getKeysFileForSession;
.source ""


# instance fields
.field private final affectedTree:Lo/persistFatalEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final revert:Z


# direct methods
.method public constructor <init>(Lo/ExecutorUtils$2;Lo/persistFatalEvent;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 30
    sget-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->AckUserWrite:Lo/getKeysFileForSession$ICustomTabsCallback;

    sget-object v1, Lo/valueOrNull;->USER:Lo/valueOrNull;

    invoke-direct {p0, v0, v1, p1}, Lo/getKeysFileForSession;-><init>(Lo/getKeysFileForSession$ICustomTabsCallback;Lo/valueOrNull;Lo/ExecutorUtils$2;)V

    .line 31
    iput-object p2, p0, Lo/getUserDataFileForSession;->affectedTree:Lo/persistFatalEvent;

    .line 32
    iput-boolean p3, p0, Lo/getUserDataFileForSession;->revert:Z

    return-void
.end method


# virtual methods
.method public final getAffectedTree()Lo/persistFatalEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/persistFatalEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lo/getUserDataFileForSession;->affectedTree:Lo/persistFatalEvent;

    return-object v0
.end method

.method public final isRevert()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/getUserDataFileForSession;->revert:Z

    return v0
.end method

.method public final operationForChild(Lo/LogFileManager;)Lo/getKeysFileForSession;
    .locals 4

    .line 45
    iget-object v0, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    .line 47
    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "operationForChild called for unrelated child."

    .line 46
    invoke-static {p1, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 48
    new-instance p1, Lo/getUserDataFileForSession;

    iget-object v0, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v0

    iget-object v1, p0, Lo/getUserDataFileForSession;->affectedTree:Lo/persistFatalEvent;

    iget-boolean v2, p0, Lo/getUserDataFileForSession;->revert:Z

    invoke-direct {p1, v0, v1, v2}, Lo/getUserDataFileForSession;-><init>(Lo/ExecutorUtils$2;Lo/persistFatalEvent;Z)V

    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lo/getUserDataFileForSession;->affectedTree:Lo/persistFatalEvent;

    invoke-virtual {v0}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object p1, p0, Lo/getUserDataFileForSession;->affectedTree:Lo/persistFatalEvent;

    .line 51
    invoke-virtual {p1}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object p1

    invoke-virtual {p1}, Lo/populateFramesList;->isEmpty()Z

    move-result p1

    const-string v0, "affectedTree should not have overlapping affected paths."

    .line 50
    invoke-static {p1, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-object p0

    .line 56
    :cond_1
    iget-object v0, p0, Lo/getUserDataFileForSession;->affectedTree:Lo/persistFatalEvent;

    new-instance v1, Lo/ExecutorUtils$2;

    const/4 v2, 0x1

    new-array v2, v2, [Lo/LogFileManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    invoke-virtual {v0, v1}, Lo/persistFatalEvent;->subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object p1

    .line 57
    new-instance v0, Lo/getUserDataFileForSession;

    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v1

    iget-boolean v2, p0, Lo/getUserDataFileForSession;->revert:Z

    invoke-direct {v0, v1, p1, v2}, Lo/getUserDataFileForSession;-><init>(Lo/ExecutorUtils$2;Lo/persistFatalEvent;Z)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/getUserDataFileForSession;->revert:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getUserDataFileForSession;->affectedTree:Lo/persistFatalEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "AckUserWrite { path=%s, revert=%s, affectedTree=%s }"

    .line 63
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
