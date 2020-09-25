.class public Lo/populateSessionData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final holder:Lo/getAppIdentifier;

.field private final prefixPath:Lo/ExecutorUtils$2;


# direct methods
.method public constructor <init>(Lo/LogFileManager$DirectoryProvider;)V
    .locals 2

    .line 48
    new-instance v0, Lo/getAppIdentifier;

    invoke-direct {v0, p1}, Lo/getAppIdentifier;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    new-instance p1, Lo/ExecutorUtils$2;

    const-string v1, ""

    invoke-direct {p1, v1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lo/populateSessionData;-><init>(Lo/getAppIdentifier;Lo/ExecutorUtils$2;)V

    return-void
.end method

.method private constructor <init>(Lo/getAppIdentifier;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    .line 53
    iput-object p2, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    .line 54
    invoke-virtual {p0}, Lo/populateSessionData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lo/getRightDecorationWidth$onPostMessage;->validateWithObject(Lo/ExecutorUtils$2;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getAppIdentifier;Lo/ExecutorUtils$2;Lo/populateSessionData$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lo/populateSessionData;-><init>(Lo/getAppIdentifier;Lo/ExecutorUtils$2;)V

    return-void
.end method

.method static synthetic access$000(Lo/populateSessionData;)Lo/getAppIdentifier;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    return-object p0
.end method

.method static synthetic access$100(Lo/populateSessionData;)Lo/ExecutorUtils$2;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lo/populateSessionData;
    .locals 4

    .line 84
    invoke-static {p1}, Lo/UserMetadata;->validatePathString(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lo/populateSessionData;

    iget-object v1, p0, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    iget-object v2, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    new-instance v3, Lo/ExecutorUtils$2;

    invoke-direct {v3, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/populateSessionData;-><init>(Lo/getAppIdentifier;Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 336
    instance-of v0, p1, Lo/populateSessionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    check-cast p1, Lo/populateSessionData;

    iget-object v1, p1, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    iget-object p1, p1, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lo/populateSessionData;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v0}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object v0

    invoke-virtual {v0}, Lo/discardOldLogFiles;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    new-instance v1, Lo/populateSessionData$4;

    invoke-direct {v1, p0, v0}, Lo/populateSessionData$4;-><init>(Lo/populateSessionData;Ljava/util/Iterator;)V

    return-object v1

    .line 106
    :cond_1
    :goto_0
    new-instance v0, Lo/populateSessionData$1;

    invoke-direct {v0, p0}, Lo/populateSessionData$1;-><init>(Lo/populateSessionData;)V

    return-object v0
.end method

.method public getChildrenCount()J
    .locals 2

    .line 90
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getNode()Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 58
    iget-object v0, p0, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    iget-object v1, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1}, Lo/getAppIdentifier;->getNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 233
    invoke-static {v0, p1}, Lo/SystemCurrentTimeProvider;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lo/onLog;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onLog<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 260
    invoke-static {v0, p1}, Lo/SystemCurrentTimeProvider;->convertToCustomClass(Ljava/lang/Object;Lo/onLog;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    .line 72
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    new-instance v1, Lo/ExecutorUtils$2;

    invoke-direct {v1, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasChildren()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPriority(Ljava/lang/Object;)V
    .locals 4

    .line 309
    iget-object v0, p0, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    iget-object v1, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    .line 311
    invoke-virtual {p0}, Lo/populateSessionData;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    iget-object v3, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    invoke-static {v3, p1}, Lo/toStringMap;->parsePriority(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-interface {v2, p1}, Lo/LogFileManager$DirectoryProvider;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 309
    invoke-virtual {v0, v1, p1}, Lo/getAppIdentifier;->update(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    invoke-static {v0, p1}, Lo/getRightDecorationWidth$onPostMessage;->validateWithObject(Lo/ExecutorUtils$2;Ljava/lang/Object;)V

    .line 298
    invoke-static {p1}, Lo/SystemCurrentTimeProvider;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 299
    invoke-static {p1}, Lo/UserMetadata;->validateWritableObject(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    iget-object v1, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    invoke-static {p1}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/getAppIdentifier;->update(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 343
    iget-object v0, p0, Lo/populateSessionData;->prefixPath:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MutableData { key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<none>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/populateSessionData;->holder:Lo/getAppIdentifier;

    .line 347
    invoke-virtual {v0}, Lo/getAppIdentifier;->getRootNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
