.class public Lo/wrapPosition;
.super Lo/setLogFile;
.source ""


# static fields
.field private static final INSTANCE:Lo/wrapPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/wrapPosition;

    invoke-direct {v0}, Lo/wrapPosition;-><init>()V

    sput-object v0, Lo/wrapPosition;->INSTANCE:Lo/wrapPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/setLogFile;-><init>()V

    return-void
.end method

.method public static getInstance()Lo/wrapPosition;
    .locals 1

    .line 26
    sget-object v0, Lo/wrapPosition;->INSTANCE:Lo/wrapPosition;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lo/QueueFile;

    check-cast p2, Lo/QueueFile;

    invoke-virtual {p0, p1, p2}, Lo/wrapPosition;->compare(Lo/QueueFile;Lo/QueueFile;)I

    move-result p1

    return p1
.end method

.method public compare(Lo/QueueFile;Lo/QueueFile;)I
    .locals 2

    .line 51
    invoke-virtual {p1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-virtual {p2}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/LogFileManager$DirectoryProvider;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 53
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

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 67
    instance-of p1, p1, Lo/wrapPosition;

    return p1
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 1

    const-string v0, ".value"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isDefinedOn(Lo/LogFileManager$DirectoryProvider;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public makePost(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/QueueFile;
    .locals 1

    .line 36
    new-instance v0, Lo/QueueFile;

    invoke-direct {v0, p1, p2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method

.method public maxPost()Lo/QueueFile;
    .locals 3

    .line 41
    new-instance v0, Lo/QueueFile;

    invoke-static {}, Lo/LogFileManager;->getMaxName()Lo/LogFileManager;

    move-result-object v1

    sget-object v2, Lo/LogFileManager$DirectoryProvider;->MAX_NODE:Lo/setCurrentSession;

    invoke-direct {v0, v1, v2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueIndex"

    return-object v0
.end method
