.class public Lo/LogFileManager$1;
.super Lo/setCurrentSession;
.source ""


# static fields
.field private static final empty:Lo/LogFileManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/LogFileManager$1;

    invoke-direct {v0}, Lo/LogFileManager$1;-><init>()V

    sput-object v0, Lo/LogFileManager$1;->empty:Lo/LogFileManager$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/setCurrentSession;-><init>()V

    return-void
.end method

.method public static Empty()Lo/LogFileManager$1;
    .locals 1

    .line 30
    sget-object v0, Lo/LogFileManager$1;->empty:Lo/LogFileManager$1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {p0, p1}, Lo/setCurrentSession;->compareTo(Lo/LogFileManager$DirectoryProvider;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/LogFileManager$DirectoryProvider;)I
    .locals 0

    .line 139
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 144
    instance-of v0, p1, Lo/LogFileManager$1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 149
    :cond_0
    instance-of v0, p1, Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_1

    check-cast p1, Lo/LogFileManager$DirectoryProvider;

    .line 150
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lo/setCurrentSession;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    return-object p0
.end method

.method public getPredecessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority()Lo/LogFileManager$DirectoryProvider;
    .locals 0

    return-object p0
.end method

.method public getSuccessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasChild(Lo/LogFileManager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Empty Node>"

    return-object v0
.end method

.method public updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 67
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 70
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lo/setCurrentSession;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 72
    invoke-virtual {p0, v0, p1}, Lo/setCurrentSession;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 55
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 61
    :cond_1
    new-instance v0, Lo/setCurrentSession;

    invoke-direct {v0}, Lo/setCurrentSession;-><init>()V

    invoke-virtual {v0, p1, p2}, Lo/setCurrentSession;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$1;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/LogFileManager$1;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$1;

    move-result-object p1

    return-object p1
.end method
