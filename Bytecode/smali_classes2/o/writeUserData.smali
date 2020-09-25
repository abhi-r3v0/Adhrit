.class public Lo/writeUserData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_FILTER:Lo/onReportSendComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onReportSendComplete<",
            "Lo/loadInstallerPackageName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allWrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/loadInstallerPackageName;",
            ">;"
        }
    .end annotation
.end field

.field private lastWriteId:Ljava/lang/Long;

.field private visibleWrites:Lo/ExecutorUtils$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 412
    new-instance v0, Lo/writeUserData$5;

    invoke-direct {v0}, Lo/writeUserData$5;-><init>()V

    sput-object v0, Lo/writeUserData;->DEFAULT_FILTER:Lo/onReportSendComplete;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lo/ExecutorUtils$1$1;->emptyWrite()Lo/ExecutorUtils$1$1;

    move-result-object v0

    iput-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/writeUserData;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method private static layerTree(Ljava/util/List;Lo/onReportSendComplete;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/loadInstallerPackageName;",
            ">;",
            "Lo/onReportSendComplete<",
            "Lo/loadInstallerPackageName;",
            ">;",
            "Lo/ExecutorUtils$2;",
            ")",
            "Lo/ExecutorUtils$1$1;"
        }
    .end annotation

    .line 426
    invoke-static {}, Lo/ExecutorUtils$1$1;->emptyWrite()Lo/ExecutorUtils$1$1;

    move-result-object v0

    .line 427
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/loadInstallerPackageName;

    .line 433
    invoke-interface {p1, v1}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v1}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    .line 435
    invoke-virtual {v1}, Lo/loadInstallerPackageName;->isOverwrite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    invoke-virtual {p2, v2}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    invoke-static {p2, v2}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v2

    .line 438
    invoke-virtual {v1}, Lo/loadInstallerPackageName;->getOverwrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lo/ExecutorUtils$1$1;->addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {v2, p2}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v3

    .line 443
    invoke-virtual {v1}, Lo/loadInstallerPackageName;->getOverwrite()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-static {v2, p2}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v3, v1}, Lo/ExecutorUtils$1$1;->addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p2, v2}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    invoke-static {p2, v2}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v2

    .line 450
    invoke-virtual {v1}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lo/ExecutorUtils$1$1;->addWrites(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {v2, p2}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-static {v2, p2}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 454
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v1}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lo/ExecutorUtils$1$1;->addWrites(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_4
    invoke-virtual {v1}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 458
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/ExecutorUtils$1$1;->addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private recordContainsPath(Lo/loadInstallerPackageName;Lo/ExecutorUtils$2;)Z
    .locals 3

    .line 388
    invoke-virtual {p1}, Lo/loadInstallerPackageName;->isOverwrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p1}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result p1

    return p1

    .line 391
    :cond_0
    invoke-virtual {p1}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 392
    invoke-virtual {p1}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ExecutorUtils$2;

    invoke-virtual {v2, v1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private resetTree()V
    .locals 3

    .line 402
    iget-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    sget-object v1, Lo/writeUserData;->DEFAULT_FILTER:Lo/onReportSendComplete;

    .line 403
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/writeUserData;->layerTree(Ljava/util/List;Lo/onReportSendComplete;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    iput-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    .line 404
    iget-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    iget-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/loadInstallerPackageName;

    invoke-virtual {v0}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/writeUserData;->lastWriteId:Ljava/lang/Long;

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 407
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/writeUserData;->lastWriteId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public addMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;Ljava/lang/Long;)V
    .locals 5

    .line 82
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lo/writeUserData;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 83
    iget-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    new-instance v1, Lo/loadInstallerPackageName;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lo/loadInstallerPackageName;-><init>(JLo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v0, p1, p2}, Lo/ExecutorUtils$1$1;->addWrites(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    iput-object p1, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    .line 85
    iput-object p3, p0, Lo/writeUserData;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method public addOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/lang/Long;Z)V
    .locals 8

    .line 72
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lo/writeUserData;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 73
    iget-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    new-instance v7, Lo/loadInstallerPackageName;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lo/loadInstallerPackageName;-><init>(JLo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_1

    .line 75
    iget-object p4, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {p4, p1, p2}, Lo/ExecutorUtils$1$1;->addWrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    iput-object p1, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    .line 77
    :cond_1
    iput-object p3, p0, Lo/writeUserData;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method public calcCompleteChild(Lo/ExecutorUtils$2;Lo/LogFileManager;Lo/lambda$getSortedCustomAttributes$0;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 337
    invoke-virtual {p1, p2}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p3, p2}, Lo/lambda$getSortedCustomAttributes$0;->isCompleteForChild(Lo/LogFileManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$1$1;->childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    .line 344
    invoke-virtual {p3}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-interface {p3, p2}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ExecutorUtils$1$1;->apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public calcCompleteEventCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lo/writeUserData;->calcCompleteEventCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/writeUserData;->calcCompleteEventCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/util/List;Z)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Ljava/util/List;Z)Lo/LogFileManager$DirectoryProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lo/LogFileManager$DirectoryProvider;"
        }
    .end annotation

    .line 200
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 201
    iget-object p3, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {p3, p1}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    .line 205
    :cond_0
    iget-object p3, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {p3, p1}, Lo/ExecutorUtils$1$1;->childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lo/ExecutorUtils$1$1;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p2

    :cond_1
    if-nez p2, :cond_2

    .line 208
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/ExecutorUtils$1$1;->hasCompleteWrite(Lo/ExecutorUtils$2;)Z

    move-result p3

    if-nez p3, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p2

    .line 219
    :goto_0
    invoke-virtual {p1, p2}, Lo/ExecutorUtils$1$1;->apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    .line 223
    :cond_4
    iget-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$1$1;->childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    if-nez p4, :cond_5

    .line 224
    invoke-virtual {v0}, Lo/ExecutorUtils$1$1;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return-object p2

    :cond_5
    if-nez p4, :cond_6

    if-nez p2, :cond_6

    .line 230
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/ExecutorUtils$1$1;->hasCompleteWrite(Lo/ExecutorUtils$2;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    .line 233
    :cond_6
    new-instance v0, Lo/writeUserData$4;

    invoke-direct {v0, p0, p4, p3, p1}, Lo/writeUserData$4;-><init>(Lo/writeUserData;ZLjava/util/List;Lo/ExecutorUtils$2;)V

    .line 243
    iget-object p3, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-static {p3, v0, p1}, Lo/writeUserData;->layerTree(Ljava/util/List;Lo/onReportSendComplete;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    if-eqz p2, :cond_7

    goto :goto_1

    .line 244
    :cond_7
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p2

    .line 245
    :goto_1
    invoke-virtual {p1, p2}, Lo/ExecutorUtils$1$1;->apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventChildren(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 6

    .line 257
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v1, p1}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v1}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 262
    invoke-interface {v1}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/QueueFile;

    .line 264
    invoke-virtual {p2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {p2}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lo/LogFileManager$DirectoryProvider;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    .line 272
    :cond_1
    iget-object v1, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v1, p1}, Lo/ExecutorUtils$1$1;->childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    .line 273
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/QueueFile;

    .line 274
    new-instance v2, Lo/ExecutorUtils$2;

    const/4 v3, 0x1

    new-array v3, v3, [Lo/LogFileManager;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    invoke-virtual {p1, v2}, Lo/ExecutorUtils$1$1;->childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object v2

    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/ExecutorUtils$1$1;->apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    .line 275
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lo/LogFileManager$DirectoryProvider;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {p1}, Lo/ExecutorUtils$1$1;->getCompleteChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/QueueFile;

    .line 279
    invoke-virtual {p2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {p2}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lo/LogFileManager$DirectoryProvider;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public calcEventCacheAfterServerOverwrite(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    const-string v0, "Either existingEventSnap or existingServerSnap must exist"

    .line 305
    invoke-static {p3, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 308
    invoke-virtual {p1, p2}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p1

    .line 309
    iget-object p3, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {p3, p1}, Lo/ExecutorUtils$1$1;->hasCompleteWrite(Lo/ExecutorUtils$2;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 315
    :cond_2
    iget-object p3, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {p3, p1}, Lo/ExecutorUtils$1$1;->childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lo/ExecutorUtils$1$1;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 318
    invoke-interface {p4, p2}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    .line 327
    :cond_3
    invoke-interface {p4, p2}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ExecutorUtils$1$1;->apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public calcNextNodeAfterPost(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/QueueFile;ZLo/setLogFile;)Lo/QueueFile;
    .locals 2

    .line 367
    iget-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$1$1;->childCompoundWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object p1

    .line 368
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 372
    invoke-virtual {p1, p2}, Lo/ExecutorUtils$1$1;->apply(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 378
    :goto_0
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/QueueFile;

    .line 379
    invoke-virtual {p5, p2, p3, p4}, Lo/setLogFile;->compare(Lo/QueueFile;Lo/QueueFile;Z)I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p5, p2, v1, p4}, Lo/setLogFile;->compare(Lo/QueueFile;Lo/QueueFile;Z)I

    move-result v0

    if-gez v0, :cond_1

    :cond_2
    move-object v1, p2

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public childWrites(Lo/ExecutorUtils$2;)Lo/MetaDataStore;
    .locals 1

    .line 67
    new-instance v0, Lo/MetaDataStore;

    invoke-direct {v0, p1, p0}, Lo/MetaDataStore;-><init>(Lo/ExecutorUtils$2;Lo/writeUserData;)V

    return-object v0
.end method

.method public getCompleteWriteData(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 179
    iget-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public getWrite(J)Lo/loadInstallerPackageName;
    .locals 5

    .line 89
    iget-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/loadInstallerPackageName;

    .line 90
    invoke-virtual {v1}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public purgeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/loadInstallerPackageName;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-static {}, Lo/ExecutorUtils$1$1;->emptyWrite()Lo/ExecutorUtils$1$1;

    move-result-object v1

    iput-object v1, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    return-object v0
.end method

.method public removeWrite(J)Z
    .locals 7

    .line 124
    iget-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/loadInstallerPackageName;

    .line 125
    invoke-virtual {v3}, Lo/loadInstallerPackageName;->getWriteId()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 p1, 0x1

    if-eqz v3, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    const-string v0, "removeWrite called with nonexistent writeId"

    .line 131
    invoke-static {p2, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 133
    iget-object p2, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v3}, Lo/loadInstallerPackageName;->isVisible()Z

    move-result p2

    .line 137
    iget-object v0, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v4, 0x0

    :goto_3
    if-eqz p2, :cond_5

    if-ltz v0, :cond_5

    .line 140
    iget-object v5, p0, Lo/writeUserData;->allWrites:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/loadInstallerPackageName;

    .line 141
    invoke-virtual {v5}, Lo/loadInstallerPackageName;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    if-lt v0, v2, :cond_3

    .line 142
    invoke-virtual {v3}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lo/writeUserData;->recordContainsPath(Lo/loadInstallerPackageName;Lo/ExecutorUtils$2;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 p2, 0x0

    goto :goto_4

    .line 145
    :cond_3
    invoke-virtual {v3}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v6

    invoke-virtual {v5}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v5

    invoke-virtual {v6, v5}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    return v1

    :cond_6
    if-eqz v4, :cond_7

    .line 158
    invoke-direct {p0}, Lo/writeUserData;->resetTree()V

    return p1

    .line 162
    :cond_7
    invoke-virtual {v3}, Lo/loadInstallerPackageName;->isOverwrite()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 163
    iget-object p2, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v3}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/ExecutorUtils$1$1;->removeWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object p2

    iput-object p2, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    goto :goto_6

    .line 165
    :cond_8
    invoke-virtual {v3}, Lo/loadInstallerPackageName;->getMerge()Lo/ExecutorUtils$1$1;

    move-result-object p2

    invoke-virtual {p2}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ExecutorUtils$2;

    .line 167
    iget-object v1, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v3}, Lo/loadInstallerPackageName;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/ExecutorUtils$1$1;->removeWrite(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$1$1;

    move-result-object v0

    iput-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    goto :goto_5

    :cond_9
    :goto_6
    return p1
.end method

.method public shadowingWrite(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 357
    iget-object v0, p0, Lo/writeUserData;->visibleWrites:Lo/ExecutorUtils$1$1;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$1$1;->getCompleteNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method
