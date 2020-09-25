.class public Lo/sanitizeAttribute;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final childKey:Lo/LogFileManager;

.field private final eventType:Lo/Utils$onNavigationEvent;

.field private final indexedNode:Lo/discardOldLogFiles;

.field private final oldIndexedNode:Lo/discardOldLogFiles;

.field private final prevName:Lo/LogFileManager;


# direct methods
.method private constructor <init>(Lo/Utils$onNavigationEvent;Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager;Lo/discardOldLogFiles;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/sanitizeAttribute;->eventType:Lo/Utils$onNavigationEvent;

    .line 36
    iput-object p2, p0, Lo/sanitizeAttribute;->indexedNode:Lo/discardOldLogFiles;

    .line 37
    iput-object p3, p0, Lo/sanitizeAttribute;->childKey:Lo/LogFileManager;

    .line 38
    iput-object p4, p0, Lo/sanitizeAttribute;->prevName:Lo/LogFileManager;

    .line 39
    iput-object p5, p0, Lo/sanitizeAttribute;->oldIndexedNode:Lo/discardOldLogFiles;

    return-void
.end method

.method public static childAddedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;
    .locals 0

    .line 47
    invoke-static {p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    invoke-static {p0, p1}, Lo/sanitizeAttribute;->childAddedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static childAddedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;
    .locals 7

    .line 51
    new-instance v6, Lo/sanitizeAttribute;

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lo/sanitizeAttribute;-><init>(Lo/Utils$onNavigationEvent;Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager;Lo/discardOldLogFiles;)V

    return-object v6
.end method

.method public static childChangedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;
    .locals 0

    .line 64
    invoke-static {p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    invoke-static {p2}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p2

    .line 63
    invoke-static {p0, p1, p2}, Lo/sanitizeAttribute;->childChangedChange(Lo/LogFileManager;Lo/discardOldLogFiles;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static childChangedChange(Lo/LogFileManager;Lo/discardOldLogFiles;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;
    .locals 7

    .line 69
    new-instance v6, Lo/sanitizeAttribute;

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_CHANGED:Lo/Utils$onNavigationEvent;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/sanitizeAttribute;-><init>(Lo/Utils$onNavigationEvent;Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager;Lo/discardOldLogFiles;)V

    return-object v6
.end method

.method public static childMovedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;
    .locals 0

    .line 73
    invoke-static {p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    invoke-static {p0, p1}, Lo/sanitizeAttribute;->childMovedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static childMovedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;
    .locals 7

    .line 77
    new-instance v6, Lo/sanitizeAttribute;

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_MOVED:Lo/Utils$onNavigationEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lo/sanitizeAttribute;-><init>(Lo/Utils$onNavigationEvent;Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager;Lo/discardOldLogFiles;)V

    return-object v6
.end method

.method public static childRemovedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;
    .locals 0

    .line 55
    invoke-static {p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    invoke-static {p0, p1}, Lo/sanitizeAttribute;->childRemovedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static childRemovedChange(Lo/LogFileManager;Lo/discardOldLogFiles;)Lo/sanitizeAttribute;
    .locals 7

    .line 59
    new-instance v6, Lo/sanitizeAttribute;

    sget-object v1, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lo/sanitizeAttribute;-><init>(Lo/Utils$onNavigationEvent;Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager;Lo/discardOldLogFiles;)V

    return-object v6
.end method

.method public static valueChange(Lo/discardOldLogFiles;)Lo/sanitizeAttribute;
    .locals 7

    .line 43
    new-instance v6, Lo/sanitizeAttribute;

    sget-object v1, Lo/Utils$onNavigationEvent;->VALUE:Lo/Utils$onNavigationEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lo/sanitizeAttribute;-><init>(Lo/Utils$onNavigationEvent;Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager;Lo/discardOldLogFiles;)V

    return-object v6
.end method


# virtual methods
.method public changeWithPrevName(Lo/LogFileManager;)Lo/sanitizeAttribute;
    .locals 7

    .line 81
    new-instance v6, Lo/sanitizeAttribute;

    iget-object v1, p0, Lo/sanitizeAttribute;->eventType:Lo/Utils$onNavigationEvent;

    iget-object v2, p0, Lo/sanitizeAttribute;->indexedNode:Lo/discardOldLogFiles;

    iget-object v3, p0, Lo/sanitizeAttribute;->childKey:Lo/LogFileManager;

    iget-object v5, p0, Lo/sanitizeAttribute;->oldIndexedNode:Lo/discardOldLogFiles;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lo/sanitizeAttribute;-><init>(Lo/Utils$onNavigationEvent;Lo/discardOldLogFiles;Lo/LogFileManager;Lo/LogFileManager;Lo/discardOldLogFiles;)V

    return-object v6
.end method

.method public getChildKey()Lo/LogFileManager;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/sanitizeAttribute;->childKey:Lo/LogFileManager;

    return-object v0
.end method

.method public getEventType()Lo/Utils$onNavigationEvent;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/sanitizeAttribute;->eventType:Lo/Utils$onNavigationEvent;

    return-object v0
.end method

.method public getIndexedNode()Lo/discardOldLogFiles;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/sanitizeAttribute;->indexedNode:Lo/discardOldLogFiles;

    return-object v0
.end method

.method public getOldIndexedNode()Lo/discardOldLogFiles;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/sanitizeAttribute;->oldIndexedNode:Lo/discardOldLogFiles;

    return-object v0
.end method

.method public getPrevName()Lo/LogFileManager;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/sanitizeAttribute;->prevName:Lo/LogFileManager;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Change: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/sanitizeAttribute;->eventType:Lo/Utils$onNavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/sanitizeAttribute;->childKey:Lo/LogFileManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
