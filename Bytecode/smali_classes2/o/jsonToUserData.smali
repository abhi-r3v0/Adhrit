.class public final Lo/jsonToUserData;
.super Lo/getKeysFileForSession;
.source ""


# direct methods
.method public constructor <init>(Lo/valueOrNull;Lo/ExecutorUtils$2;)V
    .locals 1

    .line 25
    sget-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->ListenComplete:Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-direct {p0, v0, p1, p2}, Lo/getKeysFileForSession;-><init>(Lo/getKeysFileForSession$ICustomTabsCallback;Lo/valueOrNull;Lo/ExecutorUtils$2;)V

    .line 26
    invoke-virtual {p1}, Lo/valueOrNull;->isFromUser()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "Can\'t have a listen complete from a user source"

    invoke-static {p1, p2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final operationForChild(Lo/LogFileManager;)Lo/getKeysFileForSession;
    .locals 2

    .line 31
    iget-object p1, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    new-instance p1, Lo/jsonToUserData;

    iget-object v0, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo/jsonToUserData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;)V

    return-object p1

    .line 34
    :cond_0
    new-instance p1, Lo/jsonToUserData;

    iget-object v0, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    iget-object v1, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo/jsonToUserData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ListenComplete { path=%s, source=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
