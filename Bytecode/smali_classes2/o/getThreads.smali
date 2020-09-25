.class final Lo/getThreads;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getThreads$extraCallback;
    }
.end annotation


# instance fields
.field private docs:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Landroid/util/Pair<",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            "Lo/withNdkPayload;",
            ">;>;"
        }
    .end annotation
.end field

.field private final persistence:Lo/getSignal;


# direct methods
.method constructor <init>(Lo/getSignal;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lo/populateFramesList$onNavigationEvent;->emptyMap(Ljava/util/Comparator;)Lo/populateFramesList;

    move-result-object v0

    iput-object v0, p0, Lo/getThreads;->docs:Lo/populateFramesList;

    .line 44
    iput-object p1, p0, Lo/getThreads;->persistence:Lo/getSignal;

    return-void
.end method

.method static synthetic access$100(Lo/getThreads;)Lo/populateFramesList;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/getThreads;->docs:Lo/populateFramesList;

    return-object p0
.end method


# virtual methods
.method public final add(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/withNdkPayload;)V
    .locals 3

    .line 49
    sget-object v0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    .line 49
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lo/getThreads;->docs:Lo/populateFramesList;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p2

    iput-object p2, p0, Lo/getThreads;->docs:Lo/populateFramesList;

    .line 54
    iget-object p2, p0, Lo/getThreads;->persistence:Lo/getSignal;

    invoke-virtual {p2}, Lo/getSignal;->getIndexManager()Lo/setArch;

    move-result-object p2

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    invoke-interface {p2, p1}, Lo/setArch;->addToCollectionParentIndex(Lo/setJailbroken;)V

    return-void
.end method

.method public final get(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/getThreads;->docs:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)",
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 76
    invoke-virtual {p0, v1}, Lo/getThreads;->get(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getAllDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;
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

    .line 86
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isCollectionGroupQuery()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CollectionGroup queries should be handled in LocalDocumentsView"

    .line 85
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->emptyDocumentMap()Lo/populateFramesList;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v1

    const-string v2, ""

    .line 93
    invoke-virtual {v1, v2}, Lo/setRamUsed;->append(Ljava/lang/String;)Lo/setRamUsed;

    move-result-object v2

    check-cast v2, Lo/setJailbroken;

    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    .line 94
    iget-object v3, p0, Lo/getThreads;->docs:Lo/populateFramesList;

    .line 95
    invoke-virtual {v3, v2}, Lo/populateFramesList;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 97
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 101
    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/setRamUsed;->isPrefixOf(Lo/setRamUsed;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 106
    instance-of v5, v4, Lo/setDiskUsed;

    if-eqz v5, :cond_0

    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lo/withNdkPayload;

    .line 111
    invoke-virtual {v3, p2}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result v3

    if-lez v3, :cond_0

    .line 115
    check-cast v4, Lo/setDiskUsed;

    .line 116
    invoke-virtual {p1, v4}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matches(Lo/setDiskUsed;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method final getByteSize(Lo/setDiskSpace;)J
    .locals 5

    .line 130
    new-instance v0, Lo/getThreads$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getThreads$extraCallback;-><init>(Lo/getThreads;Lo/getThreads$4;)V

    invoke-virtual {v0}, Lo/getThreads$extraCallback;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 131
    invoke-virtual {p1, v3}, Lo/setDiskSpace;->encodeMaybeDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/CrashlyticsReport$Session$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lo/getEventAppExecutionSize;->getSerializedSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method final getDocuments()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Lo/getThreads$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getThreads$extraCallback;-><init>(Lo/getThreads;Lo/getThreads$4;)V

    return-object v0
.end method

.method public final remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/getThreads;->docs:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->remove(Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    iput-object p1, p0, Lo/getThreads;->docs:Lo/populateFramesList;

    return-void
.end method
