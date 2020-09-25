.class public Lo/callTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/callTask$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final eventGenerator:Lo/capSessionCount;

.field private final eventRegistrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/addDelayedShutdownHook;",
            ">;"
        }
    .end annotation
.end field

.field private final processor:Lo/awaitEvenIfOnMainThread;

.field private final query:Lo/lambda$awaitEvenIfOnMainThread$0;

.field private viewCache:Lo/race;


# direct methods
.method public constructor <init>(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/race;)V
    .locals 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/callTask;->query:Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 47
    new-instance v0, Lo/Utils$3$1;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/Utils$3$1;-><init>(Lo/setLogFile;)V

    .line 48
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v1

    invoke-virtual {v1}, Lo/recursiveDelete;->getNodeFilter()Lo/Utils$3;

    move-result-object v1

    .line 49
    new-instance v2, Lo/awaitEvenIfOnMainThread;

    invoke-direct {v2, v1}, Lo/awaitEvenIfOnMainThread;-><init>(Lo/Utils$3;)V

    iput-object v2, p0, Lo/callTask;->processor:Lo/awaitEvenIfOnMainThread;

    .line 50
    invoke-virtual {p2}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p2

    .line 54
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v3

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object v4

    invoke-static {v3, v4}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lo/Utils$3$1;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v4

    .line 58
    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v6

    invoke-interface {v1, v3, v6, v5}, Lo/Utils$3;->updateFullNode(Lo/discardOldLogFiles;Lo/discardOldLogFiles;Lo/Utils$1;)Lo/discardOldLogFiles;

    move-result-object v3

    .line 59
    new-instance v5, Lo/lambda$getSortedCustomAttributes$0;

    .line 61
    invoke-virtual {v2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v2

    invoke-virtual {v0}, Lo/Utils$3$1;->filtersNodes()Z

    move-result v0

    invoke-direct {v5, v4, v2, v0}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    .line 62
    new-instance v0, Lo/lambda$getSortedCustomAttributes$0;

    .line 63
    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p2

    invoke-interface {v1}, Lo/Utils$3;->filtersNodes()Z

    move-result v1

    invoke-direct {v0, v3, p2, v1}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    .line 65
    new-instance p2, Lo/race;

    invoke-direct {p2, v0, v5}, Lo/race;-><init>(Lo/lambda$getSortedCustomAttributes$0;Lo/lambda$getSortedCustomAttributes$0;)V

    iput-object p2, p0, Lo/callTask;->viewCache:Lo/race;

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    .line 69
    new-instance p2, Lo/capSessionCount;

    invoke-direct {p2, p1}, Lo/capSessionCount;-><init>(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    iput-object p2, p0, Lo/callTask;->eventGenerator:Lo/capSessionCount;

    return-void
.end method

.method private generateEventsForChanges(Ljava/util/List;Lo/discardOldLogFiles;Lo/addDelayedShutdownHook;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sanitizeAttribute;",
            ">;",
            "Lo/discardOldLogFiles;",
            "Lo/addDelayedShutdownHook;",
            ")",
            "Ljava/util/List<",
            "Lo/getCustomKeys;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 203
    iget-object p3, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lo/addDelayedShutdownHook;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 205
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 207
    :goto_0
    iget-object v0, p0, Lo/callTask;->eventGenerator:Lo/capSessionCount;

    invoke-virtual {v0, p1, p2, p3}, Lo/capSessionCount;->generateEventsForChanges(Ljava/util/List;Lo/discardOldLogFiles;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addEventRegistration(Lo/addDelayedShutdownHook;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyOperation(Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Lo/callTask$onMessageChannelReady;
    .locals 4

    .line 162
    invoke-virtual {p1}, Lo/getKeysFileForSession;->getType()Lo/getKeysFileForSession$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/getKeysFileForSession$ICustomTabsCallback;->Merge:Lo/getKeysFileForSession$ICustomTabsCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 163
    invoke-virtual {p1}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v0

    invoke-virtual {v0}, Lo/valueOrNull;->getQueryParams()Lo/recursiveDelete;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lo/callTask;->viewCache:Lo/race;

    .line 165
    invoke-virtual {v0}, Lo/race;->getCompleteServerSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "We should always have a full cache before handling merges"

    .line 164
    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 167
    iget-object v0, p0, Lo/callTask;->viewCache:Lo/race;

    .line 168
    invoke-virtual {v0}, Lo/race;->getCompleteEventSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Missing event cache, even though we have a server cache"

    .line 167
    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lo/callTask;->viewCache:Lo/race;

    .line 172
    iget-object v1, p0, Lo/callTask;->processor:Lo/awaitEvenIfOnMainThread;

    .line 173
    invoke-virtual {v1, v0, p1, p2, p3}, Lo/awaitEvenIfOnMainThread;->applyOperation(Lo/race;Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Lo/awaitEvenIfOnMainThread$onMessageChannelReady;

    move-result-object p1

    .line 175
    iget-object p2, p1, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;->viewCache:Lo/race;

    .line 176
    invoke-virtual {p2}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p2

    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p2

    if-nez p2, :cond_3

    .line 177
    invoke-virtual {v0}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p2

    invoke-virtual {p2}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    const-string p2, "Once a server snap is complete, it should never go back"

    .line 175
    invoke-static {v2, p2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 180
    iget-object p2, p1, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;->viewCache:Lo/race;

    iput-object p2, p0, Lo/callTask;->viewCache:Lo/race;

    .line 181
    iget-object p2, p1, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;->changes:Ljava/util/List;

    iget-object p3, p1, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;->viewCache:Lo/race;

    .line 183
    invoke-virtual {p3}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object p3

    invoke-virtual {p3}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p3

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p2, p3, v0}, Lo/callTask;->generateEventsForChanges(Ljava/util/List;Lo/discardOldLogFiles;Lo/addDelayedShutdownHook;)Ljava/util/List;

    move-result-object p2

    .line 184
    new-instance p3, Lo/callTask$onMessageChannelReady;

    iget-object p1, p1, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;->changes:Ljava/util/List;

    invoke-direct {p3, p2, p1}, Lo/callTask$onMessageChannelReady;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method public getCompleteNode()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/callTask;->viewCache:Lo/race;

    invoke-virtual {v0}, Lo/race;->getCompleteEventSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 100
    iget-object v0, p0, Lo/callTask;->viewCache:Lo/race;

    invoke-virtual {v0}, Lo/race;->getCompleteServerSnap()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lo/callTask;->query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-interface {v1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    invoke-interface {v0, p1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventCache()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/callTask;->viewCache:Lo/race;

    invoke-virtual {v0}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    return-object v0
.end method

.method getEventRegistrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/addDelayedShutdownHook;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    return-object v0
.end method

.method public getInitialEvents(Lo/addDelayedShutdownHook;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addDelayedShutdownHook;",
            ")",
            "Ljava/util/List<",
            "Lo/getCustomKeys;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lo/callTask;->viewCache:Lo/race;

    invoke-virtual {v0}, Lo/race;->getEventCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-interface {v2}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/QueueFile;

    .line 191
    invoke-virtual {v3}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v4

    invoke-virtual {v3}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-static {v4, v3}, Lo/sanitizeAttribute;->childAddedChange(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/sanitizeAttribute;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v2

    invoke-static {v2}, Lo/sanitizeAttribute;->valueChange(Lo/discardOldLogFiles;)Lo/sanitizeAttribute;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_1
    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lo/callTask;->generateEventsForChanges(Ljava/util/List;Lo/discardOldLogFiles;Lo/addDelayedShutdownHook;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/callTask;->query:Lo/lambda$awaitEvenIfOnMainThread$0;

    return-object v0
.end method

.method public getServerCache()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/callTask;->viewCache:Lo/race;

    invoke-virtual {v0}, Lo/race;->getServerCache()Lo/lambda$getSortedCustomAttributes$0;

    move-result-object v0

    invoke-virtual {v0}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addDelayedShutdownHook;",
            "Lo/getMarkerFile;",
            ")",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "A cancel should cancel all event registrations"

    .line 125
    invoke-static {v2, v3}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 126
    iget-object v2, p0, Lo/callTask;->query:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v2}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/addDelayedShutdownHook;

    .line 128
    new-instance v5, Lo/getMinimumWidth$ICustomTabsCallback;

    invoke-direct {v5, v4, p2, v2}, Lo/getMinimumWidth$ICustomTabsCallback;-><init>(Lo/addDelayedShutdownHook;Lo/getMarkerFile;Lo/ExecutorUtils$2;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_2
    if-eqz p1, :cond_6

    const/4 p2, -0x1

    const/4 v2, -0x1

    .line 137
    :goto_2
    iget-object v3, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 138
    iget-object v3, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/addDelayedShutdownHook;

    .line 139
    invoke-virtual {v3, p1}, Lo/addDelayedShutdownHook;->isSameListener(Lo/addDelayedShutdownHook;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    invoke-virtual {v3}, Lo/addDelayedShutdownHook;->isZombied()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    :cond_5
    if-eq v0, p2, :cond_8

    .line 147
    iget-object p1, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addDelayedShutdownHook;

    .line 148
    iget-object p2, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->zombify()V

    goto :goto_4

    .line 152
    :cond_6
    iget-object p1, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/addDelayedShutdownHook;

    .line 153
    invoke-virtual {p2}, Lo/addDelayedShutdownHook;->zombify()V

    goto :goto_3

    .line 155
    :cond_7
    iget-object p1, p0, Lo/callTask;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_8
    :goto_4
    return-object v1
.end method
