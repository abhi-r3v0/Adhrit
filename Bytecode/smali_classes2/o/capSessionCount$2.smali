.class final Lo/capSessionCount$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/capSessionCount;->changeComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/sanitizeAttribute;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/capSessionCount;


# direct methods
.method constructor <init>(Lo/capSessionCount;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/capSessionCount$2;->this$0:Lo/capSessionCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 103
    check-cast p1, Lo/sanitizeAttribute;

    check-cast p2, Lo/sanitizeAttribute;

    invoke-virtual {p0, p1, p2}, Lo/capSessionCount$2;->compare(Lo/sanitizeAttribute;Lo/sanitizeAttribute;)I

    move-result p1

    return p1
.end method

.method public final compare(Lo/sanitizeAttribute;Lo/sanitizeAttribute;)I
    .locals 2

    .line 107
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 108
    new-instance v0, Lo/QueueFile;

    invoke-virtual {p1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {p1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p1

    invoke-virtual {p1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    .line 109
    new-instance p1, Lo/QueueFile;

    invoke-virtual {p2}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {p2}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p2

    invoke-virtual {p2}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    .line 110
    iget-object p2, p0, Lo/capSessionCount$2;->this$0:Lo/capSessionCount;

    invoke-static {p2}, Lo/capSessionCount;->access$000(Lo/capSessionCount;)Lo/setLogFile;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lo/setLogFile;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
