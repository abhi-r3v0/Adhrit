.class Lo/clearLog$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final currentHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPath:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lo/LogFileManager;",
            ">;"
        }
    .end annotation
.end field

.field private currentPathDepth:I

.field private final currentPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ExecutorUtils$2;",
            ">;"
        }
    .end annotation
.end field

.field private lastLeafDepth:I

.field private needsComma:Z

.field private optHashValueBuilder:Ljava/lang/StringBuilder;

.field private final splitStrategy:Lo/clearLog$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/clearLog$onNavigationEvent;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lo/clearLog$onPostMessage;->currentPath:Ljava/util/Stack;

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lo/clearLog$onPostMessage;->lastLeafDepth:I

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lo/clearLog$onPostMessage;->needsComma:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/clearLog$onPostMessage;->currentPaths:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/clearLog$onPostMessage;->currentHashes:Ljava/util/List;

    .line 100
    iput-object p1, p0, Lo/clearLog$onPostMessage;->splitStrategy:Lo/clearLog$onNavigationEvent;

    return-void
.end method

.method static synthetic access$000(Lo/clearLog$onPostMessage;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lo/clearLog$onPostMessage;->finishHashing()V

    return-void
.end method

.method static synthetic access$100(Lo/clearLog$onPostMessage;)Ljava/util/List;
    .locals 0

    .line 77
    iget-object p0, p0, Lo/clearLog$onPostMessage;->currentPaths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lo/clearLog$onPostMessage;)Ljava/util/List;
    .locals 0

    .line 77
    iget-object p0, p0, Lo/clearLog$onPostMessage;->currentHashes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lo/clearLog$onPostMessage;Lo/getWorkingFileForSession;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lo/clearLog$onPostMessage;->processLeaf(Lo/getWorkingFileForSession;)V

    return-void
.end method

.method static synthetic access$400(Lo/clearLog$onPostMessage;Lo/LogFileManager;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lo/clearLog$onPostMessage;->startChild(Lo/LogFileManager;)V

    return-void
.end method

.method static synthetic access$600(Lo/clearLog$onPostMessage;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lo/clearLog$onPostMessage;->endChild()V

    return-void
.end method

.method private appendKey(Ljava/lang/StringBuilder;Lo/LogFileManager;)V
    .locals 0

    .line 136
    invoke-virtual {p2}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/SessionReportingCoordinator$$Lambda$2;->stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private currentPath(I)Lo/ExecutorUtils$2;
    .locals 3

    .line 116
    new-array v0, p1, [Lo/LogFileManager;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 118
    iget-object v2, p0, Lo/clearLog$onPostMessage;->currentPath:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_0
    new-instance p1, Lo/ExecutorUtils$2;

    invoke-direct {p1, v0}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    return-object p1
.end method

.method private endChild()V
    .locals 3

    .line 169
    iget v0, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    .line 170
    invoke-virtual {p0}, Lo/clearLog$onPostMessage;->buildingRange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    iput-boolean v1, p0, Lo/clearLog$onPostMessage;->needsComma:Z

    return-void
.end method

.method private endRange()V
    .locals 3

    .line 186
    invoke-virtual {p0}, Lo/clearLog$onPostMessage;->buildingRange()Z

    move-result v0

    const-string v1, "Can\'t end range without starting a range!"

    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 188
    :goto_0
    iget v1, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    const-string v2, ")"

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v0, p0, Lo/clearLog$onPostMessage;->lastLeafDepth:I

    invoke-direct {p0, v0}, Lo/clearLog$onPostMessage;->currentPath(I)Lo/ExecutorUtils$2;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/SessionReportingCoordinator$$Lambda$2;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lo/clearLog$onPostMessage;->currentHashes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lo/clearLog$onPostMessage;->currentPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private ensureRange()V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lo/clearLog$onPostMessage;->buildingRange()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v0, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    invoke-direct {p0, v0}, Lo/clearLog$onPostMessage;->currentPath(I)Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager;

    .line 128
    iget-object v2, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v1}, Lo/clearLog$onPostMessage;->appendKey(Ljava/lang/StringBuilder;Lo/LogFileManager;)V

    .line 129
    iget-object v1, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lo/clearLog$onPostMessage;->needsComma:Z

    :cond_1
    return-void
.end method

.method private finishHashing()V
    .locals 2

    .line 177
    iget v0, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lo/clearLog$onPostMessage;->buildingRange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-direct {p0}, Lo/clearLog$onPostMessage;->endRange()V

    .line 182
    :cond_1
    iget-object v0, p0, Lo/clearLog$onPostMessage;->currentHashes:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private processLeaf(Lo/getWorkingFileForSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getWorkingFileForSession<",
            "*>;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lo/clearLog$onPostMessage;->ensureRange()V

    .line 142
    iget v0, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    iput v0, p0, Lo/clearLog$onPostMessage;->lastLeafDepth:I

    .line 143
    iget-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    sget-object v1, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V2:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-virtual {p1, v1}, Lo/getWorkingFileForSession;->getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lo/clearLog$onPostMessage;->needsComma:Z

    .line 145
    iget-object p1, p0, Lo/clearLog$onPostMessage;->splitStrategy:Lo/clearLog$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/clearLog$onNavigationEvent;->shouldSplit(Lo/clearLog$onPostMessage;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0}, Lo/clearLog$onPostMessage;->endRange()V

    :cond_0
    return-void
.end method

.method private startChild(Lo/LogFileManager;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Lo/clearLog$onPostMessage;->ensureRange()V

    .line 153
    iget-boolean v0, p0, Lo/clearLog$onPostMessage;->needsComma:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    iget-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lo/clearLog$onPostMessage;->appendKey(Ljava/lang/StringBuilder;Lo/LogFileManager;)V

    .line 157
    iget-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v0, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    iget-object v1, p0, Lo/clearLog$onPostMessage;->currentPath:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lo/clearLog$onPostMessage;->currentPath:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lo/clearLog$onPostMessage;->currentPath:Ljava/util/Stack;

    iget v1, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_0
    iget p1, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lo/clearLog$onPostMessage;->needsComma:Z

    return-void
.end method


# virtual methods
.method public buildingRange()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public currentHashLength()I
    .locals 1

    .line 108
    iget-object v0, p0, Lo/clearLog$onPostMessage;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public currentPath()Lo/ExecutorUtils$2;
    .locals 1

    .line 112
    iget v0, p0, Lo/clearLog$onPostMessage;->currentPathDepth:I

    invoke-direct {p0, v0}, Lo/clearLog$onPostMessage;->currentPath(I)Lo/ExecutorUtils$2;

    move-result-object v0

    return-object v0
.end method
