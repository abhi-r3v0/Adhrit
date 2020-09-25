.class public final Lo/keysDataToJson;
.super Lo/getKeysFileForSession;
.source ""


# instance fields
.field private final snapshot:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method public constructor <init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 1

    .line 26
    sget-object v0, Lo/getKeysFileForSession$ICustomTabsCallback;->Overwrite:Lo/getKeysFileForSession$ICustomTabsCallback;

    invoke-direct {p0, v0, p1, p2}, Lo/getKeysFileForSession;-><init>(Lo/getKeysFileForSession$ICustomTabsCallback;Lo/valueOrNull;Lo/ExecutorUtils$2;)V

    .line 27
    iput-object p3, p0, Lo/keysDataToJson;->snapshot:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method


# virtual methods
.method public final getSnapshot()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/keysDataToJson;->snapshot:Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method

.method public final operationForChild(Lo/LogFileManager;)Lo/getKeysFileForSession;
    .locals 4

    .line 36
    iget-object v0, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lo/keysDataToJson;

    iget-object v1, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    .line 38
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    iget-object v3, p0, Lo/keysDataToJson;->snapshot:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v3, p1}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lo/keysDataToJson;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 40
    :cond_0
    new-instance p1, Lo/keysDataToJson;

    iget-object v0, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    iget-object v1, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object v1

    iget-object v2, p0, Lo/keysDataToJson;->snapshot:Lo/LogFileManager$DirectoryProvider;

    invoke-direct {p1, v0, v1, v2}, Lo/keysDataToJson;-><init>(Lo/valueOrNull;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lo/getKeysFileForSession;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/keysDataToJson;->snapshot:Lo/LogFileManager$DirectoryProvider;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Overwrite { path=%s, source=%s, snapshot=%s }"

    .line 46
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
