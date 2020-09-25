.class public Lo/getSessionIdForFile;
.super Lo/setLogFile;
.source ""


# static fields
.field private static final INSTANCE:Lo/getSessionIdForFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/getSessionIdForFile;

    invoke-direct {v0}, Lo/getSessionIdForFile;-><init>()V

    sput-object v0, Lo/getSessionIdForFile;->INSTANCE:Lo/getSessionIdForFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/setLogFile;-><init>()V

    return-void
.end method

.method public static getInstance()Lo/getSessionIdForFile;
    .locals 1

    .line 24
    sget-object v0, Lo/getSessionIdForFile;->INSTANCE:Lo/getSessionIdForFile;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lo/QueueFile;

    check-cast p2, Lo/QueueFile;

    invoke-virtual {p0, p1, p2}, Lo/getSessionIdForFile;->compare(Lo/QueueFile;Lo/QueueFile;)I

    move-result p1

    return p1
.end method

.method public compare(Lo/QueueFile;Lo/QueueFile;)I
    .locals 0

    .line 55
    invoke-virtual {p1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p1

    invoke-virtual {p2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/LogFileManager;->compareTo(Lo/LogFileManager;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 60
    instance-of p1, p1, Lo/getSessionIdForFile;

    return p1
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 1

    const-string v0, ".key"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public isDefinedOn(Lo/LogFileManager$DirectoryProvider;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public makePost(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/QueueFile;
    .locals 1

    .line 38
    instance-of p1, p2, Lo/open;

    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 40
    new-instance p1, Lo/QueueFile;

    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object p2

    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-object p1
.end method

.method public maxPost()Lo/QueueFile;
    .locals 1

    .line 45
    invoke-static {}, Lo/QueueFile;->getMaxNode()Lo/QueueFile;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyIndex"

    return-object v0
.end method
