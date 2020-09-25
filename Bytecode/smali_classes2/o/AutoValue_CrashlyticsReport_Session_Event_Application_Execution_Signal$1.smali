.class public final Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSize;


# instance fields
.field private final db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

.field private final serializer:Lo/setDiskSpace;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Lo/setDiskSpace;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    .line 47
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->serializer:Lo/setDiskSpace;

    return-void
.end method

.method private decodeMaybeDocument([B)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 2

    .line 211
    :try_start_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->serializer:Lo/setDiskSpace;

    .line 212
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Builder;->parseFrom([B)Lo/CrashlyticsReport$Session$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {v0, p1}, Lo/setDiskSpace;->decodeMaybeDocument(Lo/CrashlyticsReport$Session$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MaybeDocument failed to parse: %s"

    .line 214
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method static synthetic lambda$get$0(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;Landroid/database/Cursor;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->decodeMaybeDocument([B)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getAll$1(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->decodeMaybeDocument([B)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$getAllDocumentsMatchingQuery$2(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;[BLo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)V
    .locals 2

    .line 185
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->decodeMaybeDocument([B)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p1

    .line 187
    instance-of v0, p1, Lo/setDiskUsed;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/setDiskUsed;

    invoke-virtual {p2, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matches(Lo/setDiskUsed;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 188
    monitor-enter p0

    const/4 p2, 0x0

    .line 189
    :try_start_0
    aget-object v0, p3, p2

    .line 190
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    check-cast p1, Lo/setDiskUsed;

    invoke-virtual {v0, v1, p1}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    aput-object p1, p3, p2

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    return-void
.end method

.method static synthetic lambda$getAllDocumentsMatchingQuery$3(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;ILo/toArray;Lo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/toStringMap$ICustomTabsCallback;->decodeResourcePath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lo/setRamUsed;->length()I

    move-result v0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 178
    invoke-interface {p5, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    .line 182
    invoke-interface {p5}, Landroid/database/Cursor;->isLast()Z

    move-result p5

    if-eqz p5, :cond_1

    sget-object p2, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 183
    :cond_1
    invoke-static {p0, p1, p3, p4}, Lo/newBuilder;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;[BLo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pathForKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final add(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/withNdkPayload;)V
    .locals 8

    .line 52
    sget-object v0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    .line 52
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->pathForKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p2}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object p2

    .line 58
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->serializer:Lo/setDiskSpace;

    invoke-virtual {v3, p1}, Lo/setDiskSpace;->encodeMaybeDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/CrashlyticsReport$Session$Builder;

    move-result-object v3

    .line 60
    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 65
    invoke-virtual {p2}, Lo/getStream;->getSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    .line 66
    invoke-virtual {p2}, Lo/getStream;->getNanoseconds()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    const/4 p2, 0x3

    .line 67
    invoke-interface {v3}, Lo/WireFormat$FieldType$2;->toByteArray()[B

    move-result-object v0

    aput-object v0, v5, p2

    const-string p2, "INSERT OR REPLACE INTO remote_documents (path, read_time_seconds, read_time_nanos, contents) VALUES (?, ?, ?, ?)"

    .line 60
    invoke-virtual {v4, p2, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getIndexManager()Lo/setArch;

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
    .locals 3

    .line 82
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->pathForKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v1, "SELECT contents FROM remote_documents WHERE path = ?"

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 85
    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p1

    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;)Lo/listIterator;

    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->firstValue(Lo/listIterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    return-object p1
.end method

.method public final getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 5
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

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 93
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v2

    invoke-static {v2}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    const/4 v3, 0x0

    .line 100
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    :cond_1
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v3, "SELECT contents FROM remote_documents WHERE path IN ("

    const-string v4, ") ORDER BY path"

    invoke-direct {p1, v2, v3, v0, v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 110
    :goto_2
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->hasMoreSubqueries()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->performNextSubquery()Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {p0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;Ljava/util/Map;)Lo/from;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public final getAllDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;
    .locals 12
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

    .line 127
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isCollectionGroupQuery()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CollectionGroup queries should be handled in LocalDocumentsView"

    .line 126
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lo/setRamUsed;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 134
    invoke-static {v0}, Lo/toStringMap$ICustomTabsCallback;->encode(Lo/setRamUsed;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lo/toStringMap$ICustomTabsCallback;->prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {p2}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object v5

    .line 138
    new-instance v6, Lo/toArray;

    invoke-direct {v6}, Lo/toArray;-><init>()V

    new-array v7, v1, [Lo/populateFramesList;

    .line 142
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->emptyDocumentMap()Lo/populateFramesList;

    move-result-object v8

    aput-object v8, v7, v2

    .line 145
    sget-object v8, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v8, 0x2

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v5, "SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?"

    .line 147
    invoke-virtual {p2, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p2

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v4, v5, v1

    .line 148
    invoke-virtual {p2, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p2

    goto :goto_0

    .line 153
    :cond_0
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const-string v9, "SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?AND (read_time_seconds > ? OR (read_time_seconds = ? AND read_time_nanos > ?))"

    .line 154
    invoke-virtual {p2, v9}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p2

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    aput-object v4, v9, v1

    .line 160
    invoke-virtual {v5}, Lo/getStream;->getSeconds()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v8

    const/4 v0, 0x3

    .line 161
    invoke-virtual {v5}, Lo/getStream;->getSeconds()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v0

    const/4 v0, 0x4

    .line 162
    invoke-virtual {v5}, Lo/getStream;->getNanoseconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v0

    .line 157
    invoke-virtual {p2, v9}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object p2

    .line 164
    :goto_0
    invoke-static {p0, v3, v6, p1, v7}, Lo/getPc;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;ILo/toArray;Lo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)Lo/from;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->forEach(Lo/from;)I

    .line 197
    :try_start_0
    invoke-virtual {v6}, Lo/toArray;->drain()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Interrupted while deserializing documents"

    .line 199
    invoke-static {p1, p2}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 202
    :goto_1
    aget-object p1, v7, v2

    return-object p1
.end method

.method public final remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 3

    .line 74
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->pathForKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DELETE FROM remote_documents WHERE path = ?"

    invoke-virtual {v0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
