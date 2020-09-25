.class public final Lo/readKeyData;
.super Lo/getKeysFileForSession;
.source ""


# instance fields
.field private final children:Lo/ExecutorUtils$1$1;


# direct methods
.method public constructor <init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
    .locals 1

    .line 26
    sget-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->Merge:Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-direct {p0, v0, p1, p2}, Lo/getKeysFileForSession;-><init>(Lo/getKeysFileForSession$ICustomTabsCallback;Lo/valueOrNull;Lo/ExecutorUtils$2;)V

    .line 27
    iput-object p3, p0, Lo/readKeyData;->children:Lo/ExecutorUtils$1$1;

    return-void
.end method


# virtual methods
.method public final getChildren()Lo/ExecutorUtils$1$1;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/readKeyData;->children:Lo/ExecutorUtils$1$1;

    return-object v0
.end method

.method public final operationForChild(Lo/LogFileManager;)Lo/getKeysFileForSession;
    .locals 5

    .line 36
    iget-object v0, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lo/readKeyData;->children:Lo/ExecutorUtils$1$1;

    new-instance v2, Lo/ExecutorUtils$2;

    const/4 v3, 0x1

    new-array v3, v3, [Lo/LogFileManager;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    invoke-virtual {v0, v2}, Lo/ExecutorUtils$1$1;->childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lo/ExecutorUtils$1$1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$1$1;->rootWrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lo/keysDataToJson;

    iget-object v1, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {p1}, Lo/ExecutorUtils$1$1;->rootWrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lo/keysDataToJson;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lo/readKeyData;

    iget-object v1, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/readKeyData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    return-object v0

    .line 47
    :cond_2
    iget-object v0, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 48
    new-instance p1, Lo/readKeyData;

    iget-object v0, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    iget-object v1, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v1

    iget-object v2, p0, Lo/readKeyData;->children:Lo/ExecutorUtils$1$1;

    invoke-direct {p1, v0, v1, v2}, Lo/readKeyData;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/readKeyData;->children:Lo/ExecutorUtils$1$1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Merge { path=%s, source=%s, children=%s }"

    .line 57
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
