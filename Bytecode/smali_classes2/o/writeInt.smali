.class public final Lo/writeInt;
.super Lo/setLogFile;
.source ""


# instance fields
.field private final indexPath:Lo/ExecutorUtils$2;


# direct methods
.method public constructor <init>(Lo/ExecutorUtils$2;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lo/setLogFile;-><init>()V

    .line 24
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t create PathIndex with \'.priority\' as key. Please use PriorityIndex instead!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lo/QueueFile;

    check-cast p2, Lo/QueueFile;

    invoke-virtual {p0, p1, p2}, Lo/writeInt;->compare(Lo/QueueFile;Lo/QueueFile;)I

    move-result p1

    return p1
.end method

.method public final compare(Lo/QueueFile;Lo/QueueFile;)I
    .locals 3

    .line 38
    invoke-virtual {p1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    iget-object v1, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    invoke-interface {v0, v1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 39
    invoke-virtual {p2}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    iget-object v2, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    invoke-interface {v1, v2}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Lo/LogFileManager$DirectoryProvider;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p1

    invoke-virtual {p2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/LogFileManager;->compareTo(Lo/LogFileManager;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    check-cast p1, Lo/writeInt;

    .line 76
    iget-object v2, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    iget-object p1, p1, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getQueryDefinition()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->wireFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 85
    iget-object v0, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isDefinedOn(Lo/LogFileManager$DirectoryProvider;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    invoke-interface {p1, v0}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

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

.method public final makePost(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/QueueFile;
    .locals 2

    .line 50
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    iget-object v1, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1, p2}, Lo/setCurrentSession;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    .line 51
    new-instance v0, Lo/QueueFile;

    invoke-direct {v0, p1, p2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method

.method public final maxPost()Lo/QueueFile;
    .locals 3

    .line 56
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    iget-object v1, p0, Lo/writeInt;->indexPath:Lo/ExecutorUtils$2;

    sget-object v2, Lo/LogFileManager$DirectoryProvider;->MAX_NODE:Lo/setCurrentSession;

    invoke-virtual {v0, v1, v2}, Lo/setCurrentSession;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 57
    new-instance v1, Lo/QueueFile;

    invoke-static {}, Lo/LogFileManager;->getMaxName()Lo/LogFileManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-object v1
.end method
