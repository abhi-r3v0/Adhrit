.class public final Lo/onAddFocusables$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAddFocusables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$Companion;",
        "",
        "()V",
        "MAX_POLLS",
        "",
        "MIN_LOADER_SEEN_TIME",
        "",
        "POLL_DURATION",
        "RESULT_FAILED",
        "",
        "RESULT_SUCCESS",
        "START",
        "amountTag",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final optExclusiveStart:Lo/ExecutorUtils$2;

.field private final optInclusiveEnd:Lo/ExecutorUtils$2;

.field private final snap:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput-object p1, p0, Lo/onAddFocusables$onNavigationEvent;->optExclusiveStart:Lo/ExecutorUtils$2;

    .line 1041
    iput-object p2, p0, Lo/onAddFocusables$onNavigationEvent;->optInclusiveEnd:Lo/ExecutorUtils$2;

    .line 1042
    iput-object p3, p0, Lo/onAddFocusables$onNavigationEvent;->snap:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method

.method public constructor <init>(Lo/readCrashlyticsDataCollectionEnabledFromManifest;)V
    .locals 3

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    invoke-virtual {p1}, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->getOptExclusiveStart()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1047
    new-instance v2, Lo/ExecutorUtils$2;

    invoke-direct {v2, v0}, Lo/ExecutorUtils$2;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lo/onAddFocusables$onNavigationEvent;->optExclusiveStart:Lo/ExecutorUtils$2;

    .line 1048
    invoke-virtual {p1}, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->getOptInclusiveEnd()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1049
    new-instance v1, Lo/ExecutorUtils$2;

    invoke-direct {v1, v0}, Lo/ExecutorUtils$2;-><init>(Ljava/util/List;)V

    :cond_1
    iput-object v1, p0, Lo/onAddFocusables$onNavigationEvent;->optInclusiveEnd:Lo/ExecutorUtils$2;

    .line 1050
    invoke-virtual {p1}, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->getSnap()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    iput-object p1, p0, Lo/onAddFocusables$onNavigationEvent;->snap:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method

.method private updateRangeInNode(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 7

    .line 1067
    iget-object v0, p0, Lo/onAddFocusables$onNavigationEvent;->optExclusiveStart:Lo/ExecutorUtils$2;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lo/ExecutorUtils$2;->compareTo(Lo/ExecutorUtils$2;)I

    move-result v0

    .line 1068
    :goto_0
    iget-object v2, p0, Lo/onAddFocusables$onNavigationEvent;->optInclusiveEnd:Lo/ExecutorUtils$2;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lo/ExecutorUtils$2;->compareTo(Lo/ExecutorUtils$2;)I

    move-result v2

    .line 1069
    :goto_1
    iget-object v3, p0, Lo/onAddFocusables$onNavigationEvent;->optExclusiveStart:Lo/ExecutorUtils$2;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 1070
    :goto_2
    iget-object v5, p0, Lo/onAddFocusables$onNavigationEvent;->optInclusiveEnd:Lo/ExecutorUtils$2;

    if-eqz v5, :cond_3

    invoke-virtual {p1, v5}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-lez v0, :cond_4

    if-gez v2, :cond_4

    if-nez v5, :cond_4

    return-object p3

    :cond_4
    if-lez v0, :cond_5

    if-eqz v5, :cond_5

    .line 1074
    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v6

    if-eqz v6, :cond_5

    return-object p3

    :cond_5
    if-lez v0, :cond_7

    if-nez v2, :cond_7

    .line 1077
    invoke-static {v5}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 1078
    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 1079
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1081
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p2

    :cond_7
    if-nez v3, :cond_b

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    if-gtz v2, :cond_a

    if-gtz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 1118
    :cond_a
    :goto_4
    invoke-static {v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    return-object p2

    .line 1089
    :cond_b
    :goto_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1090
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/QueueFile;

    .line 1091
    invoke-virtual {v3}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1093
    :cond_c
    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/QueueFile;

    .line 1094
    invoke-virtual {v3}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1096
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1097
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1099
    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1100
    :cond_e
    invoke-static {}, Lo/LogFileManager;->getPriorityKey()Lo/LogFileManager;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p2

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    .line 1104
    invoke-interface {p2, v2}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    .line 1107
    invoke-virtual {p1, v2}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v4

    .line 1108
    invoke-interface {p2, v2}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    .line 1109
    invoke-interface {p3, v2}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    .line 1106
    invoke-direct {p0, v4, v5, v6}, Lo/onAddFocusables$onNavigationEvent;->updateRangeInNode(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    if-eq v4, v3, :cond_10

    .line 1112
    invoke-interface {v1, v2, v4}, Lo/LogFileManager$DirectoryProvider;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    goto :goto_8

    :cond_11
    return-object v1
.end method


# virtual methods
.method public final applyTo(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 1054
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v0

    iget-object v1, p0, Lo/onAddFocusables$onNavigationEvent;->snap:Lo/LogFileManager$DirectoryProvider;

    invoke-direct {p0, v0, p1, v1}, Lo/onAddFocusables$onNavigationEvent;->updateRangeInNode(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method final getEnd()Lo/ExecutorUtils$2;
    .locals 1

    .line 1062
    iget-object v0, p0, Lo/onAddFocusables$onNavigationEvent;->optInclusiveEnd:Lo/ExecutorUtils$2;

    return-object v0
.end method

.method final getStart()Lo/ExecutorUtils$2;
    .locals 1

    .line 1058
    iget-object v0, p0, Lo/onAddFocusables$onNavigationEvent;->optExclusiveStart:Lo/ExecutorUtils$2;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RangeMerge{optExclusiveStart="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/onAddFocusables$onNavigationEvent;->optExclusiveStart:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", optInclusiveEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onAddFocusables$onNavigationEvent;->optInclusiveEnd:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onAddFocusables$onNavigationEvent;->snap:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
