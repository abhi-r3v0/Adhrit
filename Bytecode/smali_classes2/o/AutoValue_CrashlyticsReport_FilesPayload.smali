.class public final Lo/AutoValue_CrashlyticsReport_FilesPayload;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final databaseId:Lo/setProximityOn;


# direct methods
.method public constructor <init>(Lo/setProximityOn;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload;->databaseId:Lo/setProximityOn;

    return-void
.end method

.method private convertAndParseDocumentData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 3

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, "Invalid data. Data must be a Map<String, Object> or a suitable POJO object, but it was "

    if-nez v0, :cond_1

    .line 231
    invoke-static {p1}, Lo/ImmutableList;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    invoke-direct {p0, v0, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object p2

    .line 1072
    iget v0, p2, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 233
    sget-object v2, Lo/writeRawMessageSetExtension$onPostMessage;->ICustomTabsService:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v0, v2, :cond_0

    .line 236
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-direct {p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_User$1;-><init>(Lo/writeRawMessageSetExtension;)V

    return-object p1

    .line 234
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/eventFromJson;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "an array"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private convertAndParseFieldData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;
    .locals 0

    .line 212
    invoke-static {p1}, Lo/ImmutableList;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 213
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1
.end method

.method private parseArrayTransformElements(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Argument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;)V

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 468
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 469
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 473
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->rootContext()Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v4

    .line 474
    invoke-virtual {v4, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->childContext(I)Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->convertAndParseFieldData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private parseData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;
    .locals 2

    .line 250
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 251
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseMap(Ljava/util/Map;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;

    if-eqz v0, :cond_1

    .line 258
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;

    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseSentinelFieldValue(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)V

    const/4 p1, 0x0

    return-object p1

    .line 264
    :cond_1
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    .line 268
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 273
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->isArrayElement()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getDataSource()Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    move-result-object v0

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->ArrayArgument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Nested arrays are not supported"

    .line 274
    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 276
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseList(Ljava/util/List;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1

    .line 278
    :cond_5
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseScalarValue(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1
.end method

.method private parseList(Ljava/util/List;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;",
            ")",
            "Lo/writeRawMessageSetExtension;"
        }
    .end annotation

    .line 307
    invoke-static {}, Lo/toByteString;->onNavigationEvent()Lo/toByteString$onMessageChannelReady;

    move-result-object v0

    .line 309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 310
    invoke-virtual {p2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->childContext(I)Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object v2

    if-nez v2, :cond_0

    .line 313
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v2

    sget-object v3, Lo/deleteReports;->onMessageChannelReady:Lo/deleteReports;

    invoke-virtual {v2, v3}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(Lo/deleteReports;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v2

    invoke-virtual {v2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v2

    check-cast v2, Lo/writeRawMessageSetExtension;

    .line 315
    :cond_0
    invoke-virtual {v0, v2}, Lo/toByteString$onMessageChannelReady;->onPostMessage(Lo/writeRawMessageSetExtension;)Lo/toByteString$onMessageChannelReady;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/toByteString$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1
.end method

.method private parseMap(Ljava/util/Map;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;",
            ")",
            "Lo/writeRawMessageSetExtension;"
        }
    .end annotation

    .line 284
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRamUsed;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 286
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    .line 288
    :cond_0
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/writeBytes;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 290
    :cond_1
    invoke-static {}, Lo/writeBytes;->onNavigationEvent()Lo/writeBytes$ICustomTabsCallback;

    move-result-object v0

    .line 291
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 297
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->childContext(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 299
    invoke-virtual {v0, v2, v1}, Lo/writeBytes$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Lo/writeRawMessageSetExtension;)Lo/writeBytes$ICustomTabsCallback;

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Non-String Map key (%s) is not allowed"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 302
    :cond_4
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/writeBytes$ICustomTabsCallback;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1
.end method

.method private parseScalarValue(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;
    .locals 6

    if-nez p1, :cond_0

    .line 391
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    sget-object p2, Lo/deleteReports;->onMessageChannelReady:Lo/deleteReports;

    invoke-virtual {p1, p2}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(Lo/deleteReports;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 392
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 393
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(J)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 394
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 395
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(J)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 396
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 397
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(D)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 398
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 399
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(D)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 400
    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 401
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/writeRawMessageSetExtension$extraCallback;->onMessageChannelReady(Z)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 402
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 403
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lo/writeRawMessageSetExtension$extraCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 404
    :cond_6
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_7

    .line 405
    new-instance p2, Lo/getStream;

    check-cast p1, Ljava/util/Date;

    invoke-direct {p2, p1}, Lo/getStream;-><init>(Ljava/util/Date;)V

    .line 406
    invoke-direct {p0, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseTimestamp(Lo/getStream;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1

    .line 407
    :cond_7
    instance-of v0, p1, Lo/getStream;

    if-eqz v0, :cond_8

    .line 408
    check-cast p1, Lo/getStream;

    .line 409
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseTimestamp(Lo/getStream;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1

    .line 410
    :cond_8
    instance-of v0, p1, Lo/toBuilder;

    if-eqz v0, :cond_9

    .line 411
    check-cast p1, Lo/toBuilder;

    .line 412
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    .line 414
    invoke-static {}, Lo/mergeStrings;->ICustomTabsCallback()Lo/mergeStrings$onMessageChannelReady;

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Lo/toBuilder;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/mergeStrings$onMessageChannelReady;->ICustomTabsCallback(D)Lo/mergeStrings$onMessageChannelReady;

    move-result-object v0

    .line 416
    invoke-virtual {p1}, Lo/toBuilder;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/mergeStrings$onMessageChannelReady;->extraCallback(D)Lo/mergeStrings$onMessageChannelReady;

    move-result-object p1

    .line 413
    invoke-virtual {p2, p1}, Lo/writeRawMessageSetExtension$extraCallback;->ICustomTabsCallback(Lo/mergeStrings$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 418
    :cond_9
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    if-eqz v0, :cond_a

    .line 419
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->toByteString()Lo/SessionProtobufHelper;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/writeRawMessageSetExtension$extraCallback;->onNavigationEvent(Lo/SessionProtobufHelper;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 420
    :cond_a
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    if-eqz v0, :cond_d

    .line 421
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    .line 423
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getFirestore()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_c

    .line 424
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getFirestore()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getDatabaseId()Lo/setProximityOn;

    move-result-object v0

    .line 425
    iget-object v5, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload;->databaseId:Lo/setProximityOn;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_0

    :cond_b
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 429
    invoke-virtual {v0}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    .line 430
    invoke-virtual {v0}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload;->databaseId:Lo/setProximityOn;

    .line 431
    invoke-virtual {v0}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload;->databaseId:Lo/setProximityOn;

    .line 432
    invoke-virtual {v0}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "Document reference is for database %s/%s but should be for database %s/%s"

    .line 427
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 435
    :cond_c
    :goto_0
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload;->databaseId:Lo/setProximityOn;

    .line 439
    invoke-virtual {v4}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload;->databaseId:Lo/setProximityOn;

    .line 440
    invoke-virtual {v3}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 441
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "projects/%s/databases/%s/documents/%s"

    .line 437
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p2, p1}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Ljava/lang/String;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 443
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "Arrays are not supported; use a List instead"

    .line 444
    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 446
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/eventFromJson;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private parseSentinelFieldValue(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)V
    .locals 3

    .line 327
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->isWrite()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 331
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 336
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;

    if-eqz v0, :cond_3

    .line 337
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getDataSource()Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    move-result-object p1

    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->MergeSet:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    if-ne p1, v0, :cond_0

    .line 340
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    return-void

    .line 341
    :cond_0
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getDataSource()Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    move-result-object p1

    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Update:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    if-ne p1, v0, :cond_2

    .line 343
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "FieldValue.delete() at the top level should have already been handled."

    .line 342
    invoke-static {v1, v0, p1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "FieldValue.delete() can only appear at the top level of your update data"

    .line 345
    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "FieldValue.delete() can only be used with update() and set() with SetOptions.merge()"

    .line 349
    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 353
    :cond_3
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onPostMessage;

    if-eqz v0, :cond_4

    .line 354
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-static {}, Lo/CrashlyticsReport$Session;->getInstance()Lo/CrashlyticsReport$Session;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldTransforms(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-void

    .line 356
    :cond_4
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;

    if-eqz v0, :cond_5

    .line 357
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;

    .line 358
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseArrayTransformElements(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 359
    new-instance v0, Lo/withOrganizationId$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/withOrganizationId$onMessageChannelReady;-><init>(Ljava/util/List;)V

    .line 360
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldTransforms(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-void

    .line 362
    :cond_5
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$extraCallback;

    if-eqz v0, :cond_6

    .line 363
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$extraCallback;

    .line 364
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$extraCallback;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseArrayTransformElements(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 365
    new-instance v0, Lo/withOrganizationId$extraCallback;

    invoke-direct {v0, p1}, Lo/withOrganizationId$extraCallback;-><init>(Ljava/util/List;)V

    .line 366
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldTransforms(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-void

    .line 368
    :cond_6
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;

    if-eqz v0, :cond_7

    .line 371
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;

    .line 373
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;->getOperand()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseQueryValue(Ljava/lang/Object;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    .line 374
    new-instance v0, Lo/getIdentifierUtf8Bytes;

    invoke-direct {v0, p1}, Lo/getIdentifierUtf8Bytes;-><init>(Lo/writeRawMessageSetExtension;)V

    .line 376
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldTransforms(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-void

    :cond_7
    new-array p2, v1, [Ljava/lang/Object;

    .line 379
    invoke-static {p1}, Lo/eventFromJson;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "Unknown FieldValue type: %s"

    invoke-static {p1, p2}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :cond_8
    new-array v0, v1, [Ljava/lang/Object;

    .line 333
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;->getMethodName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s() is not currently supported inside arrays"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    new-array v0, v1, [Ljava/lang/Object;

    .line 329
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;->getMethodName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s() can only be used with set() and update()"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-virtual {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private parseTimestamp(Lo/getStream;)Lo/writeRawMessageSetExtension;
    .locals 5

    .line 454
    invoke-virtual {p1}, Lo/getStream;->getNanoseconds()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    .line 456
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v1

    .line 458
    invoke-static {}, Lo/getCustomHeaders;->onNavigationEvent()Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v2

    .line 459
    invoke-virtual {p1}, Lo/getStream;->getSeconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/getCustomHeaders$onMessageChannelReady;->extraCallback(J)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object p1

    .line 460
    invoke-virtual {p1, v0}, Lo/getCustomHeaders$onMessageChannelReady;->ICustomTabsCallback(I)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object p1

    .line 457
    invoke-virtual {v1, p1}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(Lo/getCustomHeaders$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1
.end method


# virtual methods
.method public final parseMergeData(Ljava/lang/Object;Lo/CrashlyticsReport$CustomAttribute;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;
    .locals 4

    .line 86
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->MergeSet:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;)V

    .line 87
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->rootContext()Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->convertAndParseDocumentData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 91
    invoke-virtual {p2}, Lo/CrashlyticsReport$CustomAttribute;->getMask()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 92
    invoke-virtual {v0, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->contains(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Field \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is specified in your field mask but not in your input data."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    invoke-virtual {v0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->toMergeData(Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p1

    return-object p1

    .line 102
    :cond_2
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->toMergeData(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final parseQueryValue(Ljava/lang/Object;)Lo/writeRawMessageSetExtension;
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, v0}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseQueryValue(Ljava/lang/Object;Z)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1
.end method

.method public final parseQueryValue(Ljava/lang/Object;Z)Lo/writeRawMessageSetExtension;
    .locals 4

    .line 198
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    if-eqz p2, :cond_0

    .line 200
    sget-object p2, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->ArrayArgument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    goto :goto_0

    :cond_0
    sget-object p2, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Argument:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    :goto_0
    invoke-direct {v0, p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;)V

    .line 202
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->rootContext()Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->convertAndParseFieldData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-array v2, p2, [Ljava/lang/Object;

    const-string v3, "Parsed data should not be null."

    .line 203
    invoke-static {v1, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->getFieldTransforms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "Field transforms should have been disallowed."

    .line 204
    invoke-static {v0, v1, p2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public final parseSetData(Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;
    .locals 2

    .line 74
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Set:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;)V

    .line 75
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->rootContext()Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->convertAndParseDocumentData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->toSetData(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final parseUpdateData(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Expected fieldAndValues to contain an even number of elements"

    .line 143
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    sget-object v3, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Update:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    invoke-direct {v0, v3}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;)V

    .line 148
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->rootContext()Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v3

    .line 149
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->newBuilder()Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    move-result-object v4

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 152
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 154
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 156
    instance-of v7, v5, Ljava/lang/String;

    if-nez v7, :cond_3

    instance-of v8, v5, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    :goto_3
    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "Expected argument to be String or FieldPath."

    invoke-static {v8, v10, v9}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_4

    .line 164
    check-cast v5, Ljava/lang/String;

    .line 165
    invoke-static {v5}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object v5

    .line 166
    invoke-virtual {v5}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v5

    goto :goto_4

    .line 168
    :cond_4
    check-cast v5, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    invoke-virtual {v5}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v5

    .line 171
    :goto_4
    instance-of v7, v6, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;

    if-eqz v7, :cond_5

    .line 173
    invoke-virtual {v3, v5}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    goto :goto_1

    .line 175
    :cond_5
    invoke-virtual {v3, v5}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->childContext(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->convertAndParseFieldData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 177
    invoke-virtual {v3, v5}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    .line 178
    invoke-virtual {v4, v5, v6}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->set(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    goto :goto_1

    .line 183
    :cond_6
    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->build()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->toUpdateData(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public final parseUpdateData(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;"
        }
    .end annotation

    const-string v0, "Provided update data must not be null."

    .line 108
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;->Update:Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;)V

    .line 111
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->rootContext()Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v1

    .line 112
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->newBuilder()Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    move-result-object v2

    .line 114
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v4

    .line 118
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 120
    instance-of v5, v3, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;

    if-eqz v5, :cond_1

    .line 122
    invoke-virtual {v1, v4}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v1, v4}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->childContext(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->convertAndParseFieldData(Ljava/lang/Object;Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;)Lo/writeRawMessageSetExtension;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v1, v4}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    .line 128
    invoke-virtual {v2, v4, v3}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->set(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->build()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->toUpdateData(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method
