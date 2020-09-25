.class public Lo/writeHeader;
.super Lo/setLogFile;
.source ""


# static fields
.field private static final INSTANCE:Lo/writeHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/writeHeader;

    invoke-direct {v0}, Lo/writeHeader;-><init>()V

    sput-object v0, Lo/writeHeader;->INSTANCE:Lo/writeHeader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/setLogFile;-><init>()V

    return-void
.end method

.method public static getInstance()Lo/writeHeader;
    .locals 1

    .line 22
    sget-object v0, Lo/writeHeader;->INSTANCE:Lo/writeHeader;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lo/QueueFile;

    check-cast p2, Lo/QueueFile;

    invoke-virtual {p0, p1, p2}, Lo/writeHeader;->compare(Lo/QueueFile;Lo/QueueFile;)I

    move-result p1

    return p1
.end method

.method public compare(Lo/QueueFile;Lo/QueueFile;)I
    .locals 2

    .line 31
    invoke-virtual {p1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-interface {v1}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p1

    invoke-virtual {p2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p2

    invoke-static {p1, v0, p2, v1}, Lo/LogFileManager$NoopLogStore;->nameAndPriorityCompare(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    instance-of p1, p1, Lo/writeHeader;

    return p1
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get query definition on priority index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x302679

    return v0
.end method

.method public isDefinedOn(Lo/LogFileManager$DirectoryProvider;)Z
    .locals 0

    .line 38
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

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

.method public makePost(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/QueueFile;
    .locals 3

    .line 43
    new-instance v0, Lo/QueueFile;

    new-instance v1, Lo/open;

    const-string v2, "[PRIORITY-POST]"

    invoke-direct {v1, v2, p2}, Lo/open;-><init>(Ljava/lang/String;Lo/LogFileManager$DirectoryProvider;)V

    invoke-direct {v0, p1, v1}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method

.method public maxPost()Lo/QueueFile;
    .locals 2

    .line 48
    invoke-static {}, Lo/LogFileManager;->getMaxName()Lo/LogFileManager;

    move-result-object v0

    sget-object v1, Lo/LogFileManager$DirectoryProvider;->MAX_NODE:Lo/setCurrentSession;

    invoke-virtual {p0, v0, v1}, Lo/setLogFile;->makePost(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/QueueFile;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PriorityIndex"

    return-object v0
.end method
