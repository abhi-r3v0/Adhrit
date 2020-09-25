.class public final Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final serverTimestampBehavior:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

.field private final timestampsInSnapshots:Z


# direct methods
.method constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;ZLo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 61
    iput-boolean p2, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->timestampsInSnapshots:Z

    .line 62
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->serverTimestampBehavior:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    return-void
.end method

.method private convertArray(Lo/toByteString;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toByteString;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .line 10054
    iget-object v1, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    .line 130
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    invoke-virtual {p1}, Lo/toByteString;->onPostMessage()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    .line 132
    invoke-virtual {p0, v1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertValue(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertReference(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;
    .locals 5

    .line 10510
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const-string v1, ""

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 10511
    iget-object v0, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 138
    :goto_0
    invoke-static {v0}, Lo/setProximityOn;->fromName(Ljava/lang/String;)Lo/setProximityOn;

    move-result-object v0

    .line 11510
    iget v3, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v3, v2, :cond_1

    .line 11511
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 139
    :cond_1
    invoke-static {v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromName(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    .line 140
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getDatabaseId()Lo/setProximityOn;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 149
    invoke-virtual {v0}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 150
    invoke-virtual {v0}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 151
    invoke-virtual {v1}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 152
    invoke-virtual {v1}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "DocumentSnapshot"

    const-string v1, "Document %s contains a document reference within a different database (%s/%s) which is not supported. It will be treated as a reference in the current database (%s/%s) instead."

    .line 143
    invoke-static {v0, v1, v2}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_2
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method private convertServerTimestamp(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;
    .locals 3

    .line 106
    sget-object v0, Lo/writeToParcel;->$SwitchMap$com$google$firebase$firestore$DocumentSnapshot$ServerTimestampBehavior:[I

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->serverTimestampBehavior:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object v2

    .line 114
    :cond_0
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->getLocalWriteTime(Lo/writeRawMessageSetExtension;)Lo/getCustomHeaders;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertTimestamp(Lo/getCustomHeaders;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 108
    :cond_1
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->getPreviousValue(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    .line 112
    :cond_2
    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertValue(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private convertTimestamp(Lo/getCustomHeaders;)Ljava/lang/Object;
    .locals 3

    .line 121
    new-instance v0, Lo/getStream;

    .line 9094
    iget-wide v1, p1, Lo/getCustomHeaders;->seconds_:J

    .line 9139
    iget p1, p1, Lo/getCustomHeaders;->nanos_:I

    .line 121
    invoke-direct {v0, v1, v2, p1}, Lo/getStream;-><init>(JI)V

    .line 122
    iget-boolean p1, p0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->timestampsInSnapshots:Z

    if-eqz p1, :cond_0

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {v0}, Lo/getStream;->toDate()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final convertObject(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/writeRawMessageSetExtension;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    invoke-virtual {p0, v1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertValue(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method final convertValue(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;
    .locals 5

    .line 66
    invoke-static {p1}, Lo/withSessionEndFields;->typeOrder(Lo/writeRawMessageSetExtension;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown value type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9072
    iget p1, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p1}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 1749
    :pswitch_0
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1750
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/writeBytes;

    goto :goto_0

    .line 1752
    :cond_0
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p1

    .line 3036
    :goto_0
    iget-object p1, p1, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 2090
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertObject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 3673
    :pswitch_1
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 3674
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_1

    .line 3676
    :cond_1
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 70
    :goto_1
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertArray(Lo/toByteString;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_2
    new-instance v0, Lo/toBuilder;

    .line 6599
    iget v1, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 6600
    iget-object v1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v1, Lo/mergeStrings;

    goto :goto_2

    .line 6602
    :cond_2
    invoke-static {}, Lo/mergeStrings;->onNavigationEvent()Lo/mergeStrings;

    move-result-object v1

    .line 7036
    :goto_2
    iget-wide v3, v1, Lo/mergeStrings;->latitude_:D

    .line 7599
    iget v1, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v1, v2, :cond_3

    .line 7600
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/mergeStrings;

    goto :goto_3

    .line 7602
    :cond_3
    invoke-static {}, Lo/mergeStrings;->onNavigationEvent()Lo/mergeStrings;

    move-result-object p1

    .line 8074
    :goto_3
    iget-wide v1, p1, Lo/mergeStrings;->longitude_:D

    .line 91
    invoke-direct {v0, v3, v4, v1, v2}, Lo/toBuilder;-><init>(DD)V

    return-object v0

    .line 72
    :pswitch_3
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertReference(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6461
    :pswitch_4
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    .line 6462
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/SessionProtobufHelper;

    goto :goto_4

    .line 6464
    :cond_4
    sget-object p1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    .line 88
    :goto_4
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->fromByteString(Lo/SessionProtobufHelper;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    move-result-object p1

    return-object p1

    .line 6372
    :pswitch_5
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_5

    .line 6373
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string p1, ""

    :goto_5
    return-object p1

    .line 76
    :pswitch_6
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertServerTimestamp(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4302
    :pswitch_7
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 4303
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/getCustomHeaders;

    goto :goto_6

    .line 4305
    :cond_6
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p1

    .line 74
    :goto_6
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertTimestamp(Lo/getCustomHeaders;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6072
    :pswitch_8
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 82
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onPostMessage:Lo/writeRawMessageSetExtension$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6204
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 6205
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_7

    :cond_7
    const-wide/16 v0, 0x0

    .line 83
    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 6246
    :cond_8
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 6247
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_8

    :cond_9
    const-wide/16 v0, 0x0

    .line 84
    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 5162
    :pswitch_9
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 5163
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 80
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_a
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
