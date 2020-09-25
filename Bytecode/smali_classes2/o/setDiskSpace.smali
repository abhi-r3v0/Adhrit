.class public final Lo/setDiskSpace;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;


# direct methods
.method public constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    return-void
.end method

.method private decodeDocument(Lo/writeDouble;Z)Lo/setDiskUsed;
    .locals 3

    .line 102
    iget-object v0, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 1035
    iget-object v1, p1, Lo/writeDouble;->name_:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 1406
    iget-object v2, p1, Lo/writeDouble;->updateTime_:Lo/getCustomHeaders;

    if-nez v2, :cond_0

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lo/writeDouble;->updateTime_:Lo/getCustomHeaders;

    .line 103
    :goto_0
    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object v1

    .line 104
    new-instance v2, Lo/setDiskUsed;

    .line 3110
    iget-object p1, p1, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    .line 2192
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->fromMap(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 109
    sget-object p2, Lo/setDiskUsed$onMessageChannelReady;->COMMITTED_MUTATIONS:Lo/setDiskUsed$onMessageChannelReady;

    goto :goto_1

    .line 110
    :cond_1
    sget-object p2, Lo/setDiskUsed$onMessageChannelReady;->SYNCED:Lo/setDiskUsed$onMessageChannelReady;

    :goto_1
    invoke-direct {v2, v0, v1, p1, p2}, Lo/setDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V

    return-object v2
.end method

.method private decodeNoDocument(Lo/setIdentifierFromUtf8Bytes;Z)Lo/AutoValue_CrashlyticsReport_Session_User;
    .locals 2

    .line 125
    iget-object v0, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/setIdentifierFromUtf8Bytes;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/setIdentifierFromUtf8Bytes;->getReadTime()Lo/getCustomHeaders;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object p1

    .line 127
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_User;

    invoke-direct {v1, v0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    return-object v1
.end method

.method private decodeUnknownDocument(Lo/CrashlyticsReport$Session$Device;)Lo/CrashlyticsReport;
    .locals 2

    .line 143
    iget-object v0, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Device;->getVersion()Lo/getCustomHeaders;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object p1

    .line 145
    new-instance v1, Lo/CrashlyticsReport;

    invoke-direct {v1, v0, p1}, Lo/CrashlyticsReport;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;)V

    return-object v1
.end method

.method private encodeDocument(Lo/setDiskUsed;)Lo/writeDouble;
    .locals 3

    .line 91
    invoke-static {}, Lo/writeDouble;->ICustomTabsCallback()Lo/writeDouble$onPostMessage;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeDouble$onPostMessage;->onPostMessage(Ljava/lang/String;)Lo/writeDouble$onPostMessage;

    .line 93
    invoke-virtual {p1}, Lo/setDiskUsed;->getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v1

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeDouble$onPostMessage;->onNavigationEvent(Ljava/util/Map;)Lo/writeDouble$onPostMessage;

    .line 94
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p1

    invoke-virtual {p1}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeTimestamp(Lo/getStream;)Lo/getCustomHeaders;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeDouble$onPostMessage;->onNavigationEvent(Lo/getCustomHeaders;)Lo/writeDouble$onPostMessage;

    .line 96
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeDouble;

    return-object p1
.end method

.method private encodeNoDocument(Lo/AutoValue_CrashlyticsReport_Session_User;)Lo/setIdentifierFromUtf8Bytes;
    .locals 3

    .line 116
    invoke-static {}, Lo/setIdentifierFromUtf8Bytes;->newBuilder()Lo/setIdentifierFromUtf8Bytes$extraCallback;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->setName(Ljava/lang/String;)Lo/setIdentifierFromUtf8Bytes$extraCallback;

    .line 118
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p1

    invoke-virtual {p1}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeTimestamp(Lo/getStream;)Lo/getCustomHeaders;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->setReadTime(Lo/getCustomHeaders;)Lo/setIdentifierFromUtf8Bytes$extraCallback;

    .line 119
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/setIdentifierFromUtf8Bytes;

    return-object p1
.end method

.method private encodeUnknownDocument(Lo/CrashlyticsReport;)Lo/CrashlyticsReport$Session$Device;
    .locals 3

    .line 134
    invoke-static {}, Lo/CrashlyticsReport$Session$Device;->newBuilder()Lo/CrashlyticsReport$Session$Device$onNavigationEvent;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->setName(Ljava/lang/String;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;

    .line 136
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p1

    invoke-virtual {p1}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeTimestamp(Lo/getStream;)Lo/getCustomHeaders;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->setVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;

    .line 137
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Session$Device;

    return-object p1
.end method


# virtual methods
.method final decodeMaybeDocument(Lo/CrashlyticsReport$Session$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 3

    .line 70
    sget-object v0, Lo/MediaBrowserCompat$MediaItem$Flags;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Builder;->getDocumentTypeCase()Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 78
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Builder;->getUnknownDocument()Lo/CrashlyticsReport$Session$Device;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/setDiskSpace;->decodeUnknownDocument(Lo/CrashlyticsReport$Session$Device;)Lo/CrashlyticsReport;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unknown MaybeDocument %s"

    .line 81
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 75
    :cond_1
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Builder;->getNoDocument()Lo/setIdentifierFromUtf8Bytes;

    move-result-object v0

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Builder;->getHasCommittedMutations()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lo/setDiskSpace;->decodeNoDocument(Lo/setIdentifierFromUtf8Bytes;Z)Lo/AutoValue_CrashlyticsReport_Session_User;

    move-result-object p1

    return-object p1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Builder;->getDocument()Lo/writeDouble;

    move-result-object v0

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Builder;->getHasCommittedMutations()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lo/setDiskSpace;->decodeDocument(Lo/writeDouble;Z)Lo/setDiskUsed;

    move-result-object p1

    return-object p1
.end method

.method final decodeMutationBatch(Lo/CrashlyticsReport$Session$Device$Builder;)Lo/CrashlyticsReport$Builder;
    .locals 8

    .line 166
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Device$Builder;->getBatchId()I

    move-result v0

    .line 167
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Device$Builder;->getLocalWriteTime()Lo/getCustomHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeTimestamp(Lo/getCustomHeaders;)Lo/getStream;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Device$Builder;->getBaseWritesCount()I

    move-result v2

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 172
    iget-object v6, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1, v5}, Lo/CrashlyticsReport$Session$Device$Builder;->getBaseWrites(I)Lo/writeSInt32;

    move-result-object v7

    invoke-virtual {v6, v7}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeMutation(Lo/writeSInt32;)Lo/CrashlyticsReport$FilesPayload;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Device$Builder;->getWritesCount()I

    move-result v2

    .line 175
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v4, v2, :cond_1

    .line 177
    iget-object v6, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1, v4}, Lo/CrashlyticsReport$Session$Device$Builder;->getWrites(I)Lo/writeSInt32;

    move-result-object v7

    invoke-virtual {v6, v7}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeMutation(Lo/writeSInt32;)Lo/CrashlyticsReport$FilesPayload;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 179
    :cond_1
    new-instance p1, Lo/CrashlyticsReport$Builder;

    invoke-direct {p1, v0, v1, v3, v5}, Lo/CrashlyticsReport$Builder;-><init>(ILo/getStream;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method final decodeTargetData(Lo/CrashlyticsReport$Session$Event;)Lo/setBatteryVelocity;
    .locals 9

    .line 211
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getTargetId()I

    move-result v2

    .line 212
    iget-object v0, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getSnapshotVersion()Lo/getCustomHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object v6

    .line 213
    iget-object v0, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 214
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getLastLimboFreeSnapshotVersion()Lo/getCustomHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object v7

    .line 215
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v8

    .line 216
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getLastListenSequenceNumber()J

    move-result-wide v3

    .line 219
    sget-object v0, Lo/MediaBrowserCompat$MediaItem$Flags;->$SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getTargetTypeCase()Lo/CrashlyticsReport$Session$Event$extraCallback;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 225
    iget-object v0, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getQuery()Lo/writeString$extraCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeQueryTarget(Lo/writeString$extraCallback;)Lo/setClsId;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getTargetTypeCase()Lo/CrashlyticsReport$Session$Event$extraCallback;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unknown targetType %d"

    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 221
    :cond_1
    iget-object v0, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event;->getDocuments()Lo/writeString$onNavigationEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeDocumentsTarget(Lo/writeString$onNavigationEvent;)Lo/setClsId;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 232
    new-instance p1, Lo/setBatteryVelocity;

    sget-object v5, Lo/getBinaries;->LISTEN:Lo/getBinaries;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lo/setBatteryVelocity;-><init>(Lo/setClsId;IJLo/getBinaries;Lo/withNdkPayload;Lo/withNdkPayload;Lo/SessionProtobufHelper;)V

    return-object p1
.end method

.method final encodeMaybeDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/CrashlyticsReport$Session$Builder;
    .locals 3

    .line 48
    invoke-static {}, Lo/CrashlyticsReport$Session$Builder;->newBuilder()Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    move-result-object v0

    .line 50
    instance-of v1, p1, Lo/AutoValue_CrashlyticsReport_Session_User;

    if-eqz v1, :cond_0

    .line 51
    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_User;

    .line 52
    invoke-direct {p0, p1}, Lo/setDiskSpace;->encodeNoDocument(Lo/AutoValue_CrashlyticsReport_Session_User;)Lo/setIdentifierFromUtf8Bytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->setNoDocument(Lo/setIdentifierFromUtf8Bytes;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    .line 53
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User;->hasCommittedMutations()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->setHasCommittedMutations(Z)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    goto :goto_0

    .line 54
    :cond_0
    instance-of v1, p1, Lo/setDiskUsed;

    if-eqz v1, :cond_1

    .line 55
    check-cast p1, Lo/setDiskUsed;

    .line 56
    invoke-direct {p0, p1}, Lo/setDiskSpace;->encodeDocument(Lo/setDiskUsed;)Lo/writeDouble;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->setDocument(Lo/writeDouble;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    .line 57
    invoke-virtual {p1}, Lo/setDiskUsed;->hasCommittedMutations()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->setHasCommittedMutations(Z)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    goto :goto_0

    .line 58
    :cond_1
    instance-of v1, p1, Lo/CrashlyticsReport;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 59
    check-cast p1, Lo/CrashlyticsReport;

    invoke-direct {p0, p1}, Lo/setDiskSpace;->encodeUnknownDocument(Lo/CrashlyticsReport;)Lo/CrashlyticsReport$Session$Device;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->setUnknownDocument(Lo/CrashlyticsReport$Session$Device;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    .line 60
    invoke-virtual {v0, v2}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->setHasCommittedMutations(Z)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;

    .line 65
    :goto_0
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Session$Builder;

    return-object p1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unknown document type %s"

    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method final encodeMutationBatch(Lo/CrashlyticsReport$Builder;)Lo/CrashlyticsReport$Session$Device$Builder;
    .locals 4

    .line 151
    invoke-static {}, Lo/CrashlyticsReport$Session$Device$Builder;->newBuilder()Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->setBatchId(I)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;

    .line 154
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getLocalWriteTime()Lo/getStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeTimestamp(Lo/getStream;)Lo/getCustomHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->setLocalWriteTime(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;

    .line 155
    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getBaseMutations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$FilesPayload;

    .line 156
    iget-object v3, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v3, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeMutation(Lo/CrashlyticsReport$FilesPayload;)Lo/writeSInt32;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->addBaseWrites(Lo/writeSInt32;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$FilesPayload;

    .line 159
    iget-object v2, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeMutation(Lo/CrashlyticsReport$FilesPayload;)Lo/writeSInt32;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->addWrites(Lo/writeSInt32;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Session$Device$Builder;

    return-object p1
.end method

.method final encodeTargetData(Lo/setBatteryVelocity;)Lo/CrashlyticsReport$Session$Event;
    .locals 4

    .line 183
    sget-object v0, Lo/getBinaries;->LISTEN:Lo/getBinaries;

    .line 184
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getPurpose()Lo/getBinaries;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lo/getBinaries;->LISTEN:Lo/getBinaries;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 187
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getPurpose()Lo/getBinaries;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Only queries with purpose %s may be stored, got %s"

    .line 183
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Lo/CrashlyticsReport$Session$Event;->newBuilder()Lo/CrashlyticsReport$Session$Event$onPostMessage;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->setTargetId(I)Lo/CrashlyticsReport$Session$Event$onPostMessage;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->setLastListenSequenceNumber(J)Lo/CrashlyticsReport$Session$Event$onPostMessage;

    move-result-object v1

    iget-object v2, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 196
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getLastLimboFreeSnapshotVersion()Lo/withNdkPayload;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeVersion(Lo/withNdkPayload;)Lo/getCustomHeaders;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->setLastLimboFreeSnapshotVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Event$onPostMessage;

    move-result-object v1

    iget-object v2, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 197
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeVersion(Lo/withNdkPayload;)Lo/getCustomHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->setSnapshotVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Event$onPostMessage;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->setResumeToken(Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Session$Event$onPostMessage;

    .line 200
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lo/setClsId;->isDocumentQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeDocumentsTarget(Lo/setClsId;)Lo/writeString$onNavigationEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->setDocuments(Lo/writeString$onNavigationEvent;)Lo/CrashlyticsReport$Session$Event$onPostMessage;

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lo/setDiskSpace;->rpcSerializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeQueryTarget(Lo/setClsId;)Lo/writeString$extraCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->setQuery(Lo/writeString$extraCallback;)Lo/CrashlyticsReport$Session$Event$onPostMessage;

    .line 207
    :goto_0
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Session$Event;

    return-object p1
.end method
