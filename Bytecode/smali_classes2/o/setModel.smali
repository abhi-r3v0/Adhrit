.class Lo/setModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final indexManager:Lo/setArch;

.field private final mutationQueue:Lo/setCustomAttributes;

.field private final remoteDocumentCache:Lo/getSize;


# direct methods
.method constructor <init>(Lo/getSize;Lo/setCustomAttributes;Lo/setArch;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/setModel;->remoteDocumentCache:Lo/getSize;

    .line 55
    iput-object p2, p0, Lo/setModel;->mutationQueue:Lo/setCustomAttributes;

    .line 56
    iput-object p3, p0, Lo/setModel;->indexManager:Lo/setArch;

    return-void
.end method

.method private addMissingBaseDocuments(Ljava/util/List;Lo/populateFramesList;)Lo/populateFramesList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;)",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$Builder;

    .line 254
    invoke-virtual {v1}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$FilesPayload;

    .line 255
    instance-of v3, v2, Lo/CrashlyticsReport$FilesPayload$File$Builder;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {p2, v3}, Lo/populateFramesList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_2
    iget-object p1, p0, Lo/setModel;->remoteDocumentCache:Lo/getSize;

    invoke-interface {p1, v0}, Lo/getSize;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 263
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lo/setDiskUsed;

    if-eqz v1, :cond_3

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDiskUsed;

    invoke-virtual {p2, v1, v0}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p2

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method private applyLocalMutationsToDocuments(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;)",
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CrashlyticsReport$Builder;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v4, v5, v2}, Lo/CrashlyticsReport$Builder;->applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v2

    goto :goto_1

    .line 105
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lo/setModel;->remoteDocumentCache:Lo/getSize;

    invoke-interface {v0, p1}, Lo/getSize;->get(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v0

    .line 89
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$Builder;

    .line 90
    invoke-virtual {v1, p1, v0}, Lo/CrashlyticsReport$Builder;->applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getDocumentsMatchingCollectionGroupQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/withNdkPayload;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-virtual {v0}, Lo/setRamUsed;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Currently we only support collection group queries at the root."

    .line 183
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getCollectionGroup()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->emptyDocumentMap()Lo/populateFramesList;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lo/setModel;->indexManager:Lo/setArch;

    invoke-interface {v2, v0}, Lo/setArch;->getCollectionParents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 192
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setJailbroken;

    .line 193
    invoke-virtual {v3, v0}, Lo/setRamUsed;->append(Ljava/lang/String;)Lo/setRamUsed;

    move-result-object v3

    check-cast v3, Lo/setJailbroken;

    invoke-virtual {p1, v3}, Lo/AutoValue_CrashlyticsReport_Session_Application;->asCollectionQueryAtPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v3

    .line 195
    invoke-direct {p0, v3, p2}, Lo/setModel;->getDocumentsMatchingCollectionQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setDiskUsed;

    invoke-virtual {v1, v5, v4}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getDocumentsMatchingCollectionQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/withNdkPayload;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lo/setModel;->remoteDocumentCache:Lo/getSize;

    .line 207
    invoke-interface {v0, p1, p2}, Lo/getSize;->getAllDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;

    move-result-object p2

    .line 209
    iget-object v0, p0, Lo/setModel;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0, p1}, Lo/setCustomAttributes;->getAllMutationBatchesAffectingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;)Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-direct {p0, v0, p2}, Lo/setModel;->addMissingBaseDocuments(Ljava/util/List;Lo/populateFramesList;)Lo/populateFramesList;

    move-result-object p2

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$Builder;

    .line 214
    invoke-virtual {v1}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$FilesPayload;

    .line 216
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v4

    invoke-virtual {v3}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/setRamUsed;->isImmediateParentOf(Lo/setRamUsed;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v3}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v4

    .line 221
    invoke-virtual {p2, v4}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 223
    invoke-virtual {v1}, Lo/CrashlyticsReport$Builder;->getLocalWriteTime()Lo/getStream;

    move-result-object v6

    invoke-virtual {v3, v5, v5, v6}, Lo/CrashlyticsReport$FilesPayload;->applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v3

    .line 224
    instance-of v5, v3, Lo/setDiskUsed;

    if-eqz v5, :cond_2

    .line 225
    check-cast v3, Lo/setDiskUsed;

    invoke-virtual {p2, v4, v3}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p2

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p2, v4}, Lo/populateFramesList;->remove(Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p2

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p2}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setDiskUsed;

    invoke-virtual {p1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matches(Lo/setDiskUsed;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {p2, v1}, Lo/populateFramesList;->remove(Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p2

    goto :goto_1

    :cond_5
    return-object p2
.end method

.method private getDocumentsMatchingDocumentQuery(Lo/setJailbroken;)Lo/populateFramesList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setJailbroken;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->emptyDocumentMap()Lo/populateFramesList;

    move-result-object v0

    .line 174
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setModel;->getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p1

    .line 175
    instance-of v1, p1, Lo/setDiskUsed;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    check-cast p1, Lo/setDiskUsed;

    invoke-virtual {v0, v1, p1}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/setModel;->mutationQueue:Lo/setCustomAttributes;

    invoke-interface {v0, p1}, Lo/setCustomAttributes;->getAllMutationBatchesAffectingDocumentKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-direct {p0, p1, v0}, Lo/setModel;->getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p1

    return-object p1
.end method

.method getDocuments(Ljava/lang/Iterable;)Lo/populateFramesList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lo/setModel;->remoteDocumentCache:Lo/getSize;

    invoke-interface {v0, p1}, Lo/getSize;->getAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lo/setModel;->getLocalViewOfDocuments(Ljava/util/Map;)Lo/populateFramesList;

    move-result-object p1

    return-object p1
.end method

.method getDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/withNdkPayload;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isDocumentQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-direct {p0, v0}, Lo/setModel;->getDocumentsMatchingDocumentQuery(Lo/setJailbroken;)Lo/populateFramesList;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isCollectionGroupQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, p1, p2}, Lo/setModel;->getDocumentsMatchingCollectionGroupQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;

    move-result-object p1

    return-object p1

    .line 165
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/setModel;->getDocumentsMatchingCollectionQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;

    move-result-object p1

    return-object p1
.end method

.method getIndexManager()Lo/setArch;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/setModel;->indexManager:Lo/setArch;

    return-object v0
.end method

.method getLocalViewOfDocuments(Ljava/util/Map;)Lo/populateFramesList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;)",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->emptyMaybeDocumentMap()Lo/populateFramesList;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lo/setModel;->mutationQueue:Lo/setCustomAttributes;

    .line 131
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/setCustomAttributes;->getAllMutationBatchesAffectingDocumentKeys(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-direct {p0, p1, v1}, Lo/setModel;->applyLocalMutationsToDocuments(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_User;

    sget-object v3, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    .line 140
    :cond_0
    invoke-virtual {v0, v2, v1}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getMutationQueue()Lo/setCustomAttributes;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/setModel;->mutationQueue:Lo/setCustomAttributes;

    return-object v0
.end method

.method getRemoteDocumentCache()Lo/getSize;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/setModel;->remoteDocumentCache:Lo/getSize;

    return-object v0
.end method
