.class public Lo/discardOldLogFiles;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/QueueFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:Lo/setLogFile;

.field private indexed:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method private constructor <init>(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    .line 50
    iput-object p1, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method private constructor <init>(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;Lo/CrashlyticsReportWithSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager$DirectoryProvider;",
            "Lo/setLogFile;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/QueueFile;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    .line 57
    iput-object p1, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    .line 58
    iput-object p3, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method private ensureIndexed()V
    .locals 7

    .line 62
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    if-nez v0, :cond_4

    .line 64
    iget-object v0, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    invoke-static {}, Lo/getSessionIdForFile;->getInstance()Lo/getSessionIdForFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v1, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v1}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/QueueFile;

    if-nez v3, :cond_1

    .line 70
    iget-object v3, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    invoke-virtual {v4}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    invoke-virtual {v3, v5}, Lo/setLogFile;->isDefinedOn(Lo/LogFileManager$DirectoryProvider;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 71
    :goto_2
    new-instance v5, Lo/QueueFile;

    invoke-virtual {v4}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v6

    invoke-virtual {v4}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    .line 72
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 75
    new-instance v1, Lo/CrashlyticsReportWithSessionId;

    iget-object v2, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    invoke-direct {v1, v0, v2}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v1, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    return-void

    .line 77
    :cond_3
    sget-object v0, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    iput-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    :cond_4
    return-void
.end method

.method public static from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;
    .locals 2

    .line 84
    new-instance v0, Lo/discardOldLogFiles;

    invoke-static {}, Lo/writeHeader;->getInstance()Lo/writeHeader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/discardOldLogFiles;-><init>(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)V

    return-object v0
.end method

.method public static from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;
    .locals 1

    .line 88
    new-instance v0, Lo/discardOldLogFiles;

    invoke-direct {v0, p0, p1}, Lo/discardOldLogFiles;-><init>(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)V

    return-object v0
.end method


# virtual methods
.method public getFirstChild()Lo/QueueFile;
    .locals 3

    .line 141
    iget-object v0, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    instance-of v0, v0, Lo/setCurrentSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    invoke-direct {p0}, Lo/discardOldLogFiles;->ensureIndexed()V

    .line 145
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    sget-object v1, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 5001
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    check-cast v0, Lo/setCurrentSession;

    invoke-virtual {v0}, Lo/setCurrentSession;->getFirstChildKey()Lo/LogFileManager;

    move-result-object v0

    .line 147
    new-instance v1, Lo/QueueFile;

    iget-object v2, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v2, v0}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-object v1

    .line 149
    :cond_3
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->getMinEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QueueFile;

    return-object v0
.end method

.method public getLastChild()Lo/QueueFile;
    .locals 3

    .line 155
    iget-object v0, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    instance-of v0, v0, Lo/setCurrentSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    invoke-direct {p0}, Lo/discardOldLogFiles;->ensureIndexed()V

    .line 159
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    sget-object v1, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 6001
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    check-cast v0, Lo/setCurrentSession;

    invoke-virtual {v0}, Lo/setCurrentSession;->getLastChildKey()Lo/LogFileManager;

    move-result-object v0

    .line 161
    new-instance v1, Lo/QueueFile;

    iget-object v2, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v2, v0}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-object v1

    .line 163
    :cond_3
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->getMaxEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QueueFile;

    return-object v0
.end method

.method public getNode()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method

.method public getPredecessorChildName(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/LogFileManager;
    .locals 2

    .line 169
    iget-object v0, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    invoke-static {}, Lo/getSessionIdForFile;->getInstance()Lo/getSessionIdForFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Index not available in IndexedNode!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/discardOldLogFiles;->ensureIndexed()V

    .line 173
    iget-object p3, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    sget-object v0, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    if-eq p3, v0, :cond_3

    if-eqz p3, :cond_2

    .line 7001
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p3, 0x1

    :goto_2
    if-eqz p3, :cond_4

    .line 174
    iget-object p2, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {p2, p1}, Lo/LogFileManager$DirectoryProvider;->getPredecessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;

    move-result-object p1

    return-object p1

    .line 176
    :cond_4
    iget-object p3, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    new-instance v0, Lo/QueueFile;

    invoke-direct {v0, p1, p2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    invoke-virtual {p3, v0}, Lo/CrashlyticsReportWithSessionId;->getPredecessorEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/QueueFile;

    if-eqz p1, :cond_5

    .line 177
    invoke-virtual {p1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasIndex(Lo/setLogFile;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lo/discardOldLogFiles;->ensureIndexed()V

    .line 102
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    sget-object v1, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 105
    :cond_2
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lo/discardOldLogFiles;->ensureIndexed()V

    .line 111
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    sget-object v1, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->reverseIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 114
    :cond_2
    iget-object v0, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->reverseIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;
    .locals 5

    .line 119
    iget-object v0, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0, p1, p2}, Lo/LogFileManager$DirectoryProvider;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    sget-object v2, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 3001
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    invoke-virtual {v1, p2}, Lo/setLogFile;->isDefinedOn(Lo/LogFileManager$DirectoryProvider;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    new-instance p1, Lo/discardOldLogFiles;

    iget-object p2, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    sget-object v1, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    invoke-direct {p1, v0, p2, v1}, Lo/discardOldLogFiles;-><init>(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;Lo/CrashlyticsReportWithSessionId;)V

    return-object p1

    .line 123
    :cond_2
    iget-object v1, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    if-eqz v1, :cond_7

    sget-object v2, Lo/discardOldLogFiles;->FALLBACK_INDEX:Lo/CrashlyticsReportWithSessionId;

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_4

    .line 4001
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_2

    .line 127
    :cond_5
    iget-object v1, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v1, p1}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    new-instance v3, Lo/QueueFile;

    invoke-direct {v3, p1, v1}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    invoke-virtual {v2, v3}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    .line 129
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 130
    new-instance v2, Lo/QueueFile;

    invoke-direct {v2, p1, p2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    invoke-virtual {v1, v2}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    .line 132
    :cond_6
    new-instance p1, Lo/discardOldLogFiles;

    iget-object p2, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    invoke-direct {p1, v0, p2, v1}, Lo/discardOldLogFiles;-><init>(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;Lo/CrashlyticsReportWithSessionId;)V

    return-object p1

    .line 125
    :cond_7
    :goto_2
    new-instance p1, Lo/discardOldLogFiles;

    iget-object p2, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lo/discardOldLogFiles;-><init>(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;Lo/CrashlyticsReportWithSessionId;)V

    return-object p1
.end method

.method public updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;
    .locals 3

    .line 137
    new-instance v0, Lo/discardOldLogFiles;

    iget-object v1, p0, Lo/discardOldLogFiles;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v1, p1}, Lo/LogFileManager$DirectoryProvider;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    iget-object v1, p0, Lo/discardOldLogFiles;->index:Lo/setLogFile;

    iget-object v2, p0, Lo/discardOldLogFiles;->indexed:Lo/CrashlyticsReportWithSessionId;

    invoke-direct {v0, p1, v1, v2}, Lo/discardOldLogFiles;-><init>(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;Lo/CrashlyticsReportWithSessionId;)V

    return-object v0
.end method
