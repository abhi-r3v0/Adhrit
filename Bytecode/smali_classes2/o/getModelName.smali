.class public Lo/getModelName;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final persistenceManager:Lo/NativeSessionFileGzipper;

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/recursiveDelete;",
            "Lo/callTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/NativeSessionFileGzipper;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getModelName;->views:Ljava/util/Map;

    .line 69
    iput-object p1, p0, Lo/getModelName;->persistenceManager:Lo/NativeSessionFileGzipper;

    return-void
.end method

.method private applyOperationToView(Lo/callTask;Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/callTask;",
            "Lo/getKeysFileForSession;",
            "Lo/MetaDataStore;",
            "Lo/LogFileManager$DirectoryProvider;",
            ")",
            "Ljava/util/List<",
            "Lo/getCustomKeys;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-virtual {p1, p2, p3, p4}, Lo/callTask;->applyOperation(Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Lo/callTask$onMessageChannelReady;

    move-result-object p2

    .line 80
    invoke-virtual {p1}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p3

    invoke-virtual {p3}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result p3

    if-nez p3, :cond_4

    .line 81
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 82
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 83
    iget-object v0, p2, Lo/callTask$onMessageChannelReady;->changes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sanitizeAttribute;

    .line 84
    invoke-virtual {v1}, Lo/sanitizeAttribute;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object v2

    .line 85
    sget-object v3, Lo/Utils$onNavigationEvent;->CHILD_ADDED:Lo/Utils$onNavigationEvent;

    if-ne v2, v3, :cond_1

    .line 86
    invoke-virtual {v1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    sget-object v3, Lo/Utils$onNavigationEvent;->CHILD_REMOVED:Lo/Utils$onNavigationEvent;

    if-ne v2, v3, :cond_0

    .line 88
    invoke-virtual {v1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    :cond_3
    iget-object v0, p0, Lo/getModelName;->persistenceManager:Lo/NativeSessionFileGzipper;

    invoke-virtual {p1}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    invoke-interface {v0, p1, p4, p3}, Lo/NativeSessionFileGzipper;->updateTrackedQueryKeys(Lo/lambda$awaitEvenIfOnMainThread$0;Ljava/util/Set;Ljava/util/Set;)V

    .line 95
    :cond_4
    iget-object p1, p2, Lo/callTask$onMessageChannelReady;->events:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public addEventRegistration(Lo/addDelayedShutdownHook;Lo/MetaDataStore;Lo/lambda$getSortedCustomAttributes$0;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addDelayedShutdownHook;",
            "Lo/MetaDataStore;",
            "Lo/lambda$getSortedCustomAttributes$0;",
            ")",
            "Ljava/util/List<",
            "Lo/getCustomKeys;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/callTask;

    if-nez v1, :cond_4

    .line 126
    invoke-virtual {p3}, Lo/lambda$getSortedCustomAttributes$0;->isFullyInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-virtual {p2, v1}, Lo/MetaDataStore;->calcCompleteEventCache(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p3}, Lo/lambda$getSortedCustomAttributes$0;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-virtual {p2, v1}, Lo/MetaDataStore;->calcCompleteEventChildren(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    const/4 p2, 0x0

    .line 134
    :goto_1
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getIndex()Lo/setLogFile;

    move-result-object v3

    invoke-static {v1, v3}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;Lo/setLogFile;)Lo/discardOldLogFiles;

    move-result-object v1

    .line 135
    new-instance v3, Lo/race;

    new-instance v4, Lo/lambda$getSortedCustomAttributes$0;

    invoke-direct {v4, v1, p2, v2}, Lo/lambda$getSortedCustomAttributes$0;-><init>(Lo/discardOldLogFiles;ZZ)V

    invoke-direct {v3, v4, p3}, Lo/race;-><init>(Lo/lambda$getSortedCustomAttributes$0;Lo/lambda$getSortedCustomAttributes$0;)V

    .line 137
    new-instance v1, Lo/callTask;

    invoke-direct {v1, v0, v3}, Lo/callTask;-><init>(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/race;)V

    .line 139
    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result p2

    if-nez p2, :cond_3

    .line 140
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 141
    invoke-virtual {v1}, Lo/callTask;->getEventCache()Lo/LogFileManager$DirectoryProvider;

    move-result-object p3

    invoke-interface {p3}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/QueueFile;

    .line 142
    invoke-virtual {v2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    :cond_2
    iget-object p3, p0, Lo/getModelName;->persistenceManager:Lo/NativeSessionFileGzipper;

    invoke-interface {p3, v0, p2}, Lo/NativeSessionFileGzipper;->setTrackedQueryKeys(Lo/lambda$awaitEvenIfOnMainThread$0;Ljava/util/Set;)V

    .line 146
    :cond_3
    iget-object p2, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-virtual {v0}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object p3

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_4
    invoke-virtual {v1, p1}, Lo/callTask;->addEventRegistration(Lo/addDelayedShutdownHook;)V

    .line 151
    invoke-virtual {v1, p1}, Lo/callTask;->getInitialEvents(Lo/addDelayedShutdownHook;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public applyOperation(Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getKeysFileForSession;",
            "Lo/MetaDataStore;",
            "Lo/LogFileManager$DirectoryProvider;",
            ")",
            "Ljava/util/List<",
            "Lo/getCustomKeys;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lo/getKeysFileForSession;->getSource()Lo/valueOrNull;

    move-result-object v0

    invoke-virtual {v0}, Lo/valueOrNull;->getQueryParams()Lo/recursiveDelete;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/callTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 103
    :goto_0
    invoke-static {v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 104
    invoke-direct {p0, v0, p1, p2, p3}, Lo/getModelName;->applyOperationToView(Lo/callTask;Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 106
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/callTask;

    .line 109
    invoke-direct {p0, v2, p1, p2, p3}, Lo/getModelName;->applyOperationToView(Lo/callTask;Lo/getKeysFileForSession;Lo/MetaDataStore;Lo/LogFileManager$DirectoryProvider;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 3

    .line 225
    iget-object v0, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/callTask;

    .line 226
    invoke-virtual {v1, p1}, Lo/callTask;->getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v1, p1}, Lo/callTask;->getCompleteServerCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCompleteView()Lo/callTask;
    .locals 3

    .line 252
    iget-object v0, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/callTask;

    .line 254
    invoke-virtual {v1}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v2

    invoke-virtual {v2}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/callTask;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    iget-object v1, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/callTask;

    .line 217
    invoke-virtual {v2}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v3

    invoke-virtual {v3}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getViews()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lo/recursiveDelete;",
            "Lo/callTask;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lo/getModelName;->views:Ljava/util/Map;

    return-object v0
.end method

.method public hasCompleteView()Z
    .locals 1

    .line 248
    invoke-virtual {p0}, Lo/getModelName;->getCompleteView()Lo/callTask;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lo/lambda$awaitEvenIfOnMainThread$0;Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Lo/getSortedCustomAttributes;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            "Lo/addDelayedShutdownHook;",
            "Lo/getMarkerFile;",
            ")",
            "Lo/getSortedCustomAttributes<",
            "Ljava/util/List<",
            "Lo/lambda$awaitEvenIfOnMainThread$0;",
            ">;",
            "Ljava/util/List<",
            "Lo/Utils;",
            ">;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {p0}, Lo/getModelName;->hasCompleteView()Z

    move-result v2

    .line 174
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 177
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/callTask;

    .line 180
    invoke-virtual {v4, p2, p3}, Lo/callTask;->removeEventRegistration(Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-virtual {v4}, Lo/callTask;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 185
    invoke-virtual {v4}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v5

    invoke-virtual {v5}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    invoke-virtual {v4}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/callTask;

    if-eqz v3, :cond_2

    .line 194
    invoke-virtual {v3, p2, p3}, Lo/callTask;->removeEventRegistration(Lo/addDelayedShutdownHook;Lo/getMarkerFile;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-virtual {v3}, Lo/callTask;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 196
    iget-object p2, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v3}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p2

    invoke-virtual {p2}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result p2

    if-nez p2, :cond_2

    .line 200
    invoke-virtual {v3}, Lo/callTask;->getQuery()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 206
    invoke-virtual {p0}, Lo/getModelName;->hasCompleteView()Z

    move-result p2

    if-nez p2, :cond_3

    .line 208
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-static {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_3
    new-instance p1, Lo/getSortedCustomAttributes;

    invoke-direct {p1, v0, v1}, Lo/getSortedCustomAttributes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public viewExistsForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Z
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lo/getModelName;->viewForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/callTask;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public viewForQuery(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/callTask;
    .locals 1

    .line 236
    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lo/getModelName;->getCompleteView()Lo/callTask;

    move-result-object p1

    return-object p1

    .line 239
    :cond_0
    iget-object v0, p0, Lo/getModelName;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/callTask;

    return-object p1
.end method
