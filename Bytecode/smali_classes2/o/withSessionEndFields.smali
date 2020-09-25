.class public final Lo/withSessionEndFields;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# static fields
.field public static final NAN_VALUE:Lo/writeRawMessageSetExtension;

.field public static final NULL_VALUE:Lo/writeRawMessageSetExtension;

.field public static final TYPE_ORDER_ARRAY:I = 0x9

.field public static final TYPE_ORDER_BLOB:I = 0x6

.field public static final TYPE_ORDER_BOOLEAN:I = 0x1

.field public static final TYPE_ORDER_GEOPOINT:I = 0x8

.field public static final TYPE_ORDER_MAP:I = 0xa

.field public static final TYPE_ORDER_NULL:I = 0x0

.field public static final TYPE_ORDER_NUMBER:I = 0x2

.field public static final TYPE_ORDER_REFERENCE:I = 0x7

.field public static final TYPE_ORDER_SERVER_TIMESTAMP:I = 0x4

.field public static final TYPE_ORDER_STRING:I = 0x5

.field public static final TYPE_ORDER_TIMESTAMP:I = 0x3


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v0, v1, v2}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(D)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    sput-object v0, Lo/withSessionEndFields;->NAN_VALUE:Lo/writeRawMessageSetExtension;

    .line 41
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    sget-object v1, Lo/deleteReports;->onMessageChannelReady:Lo/deleteReports;

    invoke-virtual {v0, v1}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(Lo/deleteReports;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    sput-object v0, Lo/withSessionEndFields;->NULL_VALUE:Lo/writeRawMessageSetExtension;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/withSessionEndFields;->arg$1:Ljava/lang/String;

    return-void
.end method

.method private static arrayEquals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z
    .locals 4

    .line 7673
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 7674
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/toByteString;

    goto :goto_0

    .line 7676
    :cond_0
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p0

    .line 8673
    :goto_0
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v1, :cond_1

    .line 8674
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_1

    .line 8676
    :cond_1
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 9054
    :goto_1
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    .line 10054
    iget-object v1, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 11054
    :goto_2
    iget-object v1, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 11065
    iget-object v1, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1, v0}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    .line 12065
    iget-object v3, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v3, v0}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/writeRawMessageSetExtension;

    .line 142
    invoke-static {v1, v3}, Lo/withSessionEndFields;->equals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static canonicalId(Lo/writeRawMessageSetExtension;)Ljava/lang/String;
    .locals 1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-static {v0, p0}, Lo/withSessionEndFields;->canonifyValue(Ljava/lang/StringBuilder;Lo/writeRawMessageSetExtension;)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static canonifyArray(Ljava/lang/StringBuilder;Lo/toByteString;)V
    .locals 2

    const-string v0, "["

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 49054
    :goto_0
    iget-object v1, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 49065
    iget-object v1, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1, v0}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    .line 381
    invoke-static {p0, v1}, Lo/withSessionEndFields;->canonifyValue(Ljava/lang/StringBuilder;Lo/writeRawMessageSetExtension;)V

    .line 50054
    iget-object v1, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, ","

    .line 383
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "]"

    .line 386
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static canonifyGeoPoint(Ljava/lang/StringBuilder;Lo/mergeStrings;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 47036
    iget-wide v1, p1, Lo/mergeStrings;->latitude_:D

    .line 349
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47074
    iget-wide v1, p1, Lo/mergeStrings;->longitude_:D

    .line 349
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "geo(%s,%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static canonifyObject(Ljava/lang/StringBuilder;Lo/writeBytes;)V
    .locals 4

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    .line 49036
    iget-object v1, p1, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 48090
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 361
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, "{"

    .line 364
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v3, ","

    .line 368
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 372
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p1, v2}, Lo/writeBytes;->ICustomTabsCallback(Ljava/lang/String;)Lo/writeRawMessageSetExtension;

    move-result-object v2

    invoke-static {p0, v2}, Lo/withSessionEndFields;->canonifyValue(Ljava/lang/StringBuilder;Lo/writeRawMessageSetExtension;)V

    goto :goto_0

    :cond_1
    const-string p1, "}"

    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static canonifyReference(Ljava/lang/StringBuilder;Lo/writeRawMessageSetExtension;)V
    .locals 3

    .line 353
    invoke-static {p1}, Lo/withSessionEndFields;->isReferenceValue(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Value should be a ReferenceValue"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47510
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 47511
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 354
    :goto_0
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromName(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static canonifyTimestamp(Ljava/lang/StringBuilder;Lo/getCustomHeaders;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 46094
    iget-wide v1, p1, Lo/getCustomHeaders;->seconds_:J

    .line 345
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46139
    iget p1, p1, Lo/getCustomHeaders;->nanos_:I

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "time(%s,%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static canonifyValue(Ljava/lang/StringBuilder;Lo/writeRawMessageSetExtension;)V
    .locals 3

    .line 305
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    .line 45072
    iget v1, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v1}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 340
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid value type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46072
    iget p1, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p1}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p1

    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    .line 45749
    :pswitch_0
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 45750
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/writeBytes;

    goto :goto_0

    .line 45752
    :cond_0
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p1

    .line 337
    :goto_0
    invoke-static {p0, p1}, Lo/withSessionEndFields;->canonifyObject(Ljava/lang/StringBuilder;Lo/writeBytes;)V

    return-void

    .line 45673
    :pswitch_1
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 45674
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_1

    .line 45676
    :cond_1
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 334
    :goto_1
    invoke-static {p0, p1}, Lo/withSessionEndFields;->canonifyArray(Ljava/lang/StringBuilder;Lo/toByteString;)V

    return-void

    .line 45599
    :pswitch_2
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 45600
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/mergeStrings;

    goto :goto_2

    .line 45602
    :cond_2
    invoke-static {}, Lo/mergeStrings;->onNavigationEvent()Lo/mergeStrings;

    move-result-object p1

    .line 331
    :goto_2
    invoke-static {p0, p1}, Lo/withSessionEndFields;->canonifyGeoPoint(Ljava/lang/StringBuilder;Lo/mergeStrings;)V

    return-void

    .line 328
    :pswitch_3
    invoke-static {p0, p1}, Lo/withSessionEndFields;->canonifyReference(Ljava/lang/StringBuilder;Lo/writeRawMessageSetExtension;)V

    return-void

    .line 45461
    :pswitch_4
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 45462
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/SessionProtobufHelper;

    goto :goto_3

    .line 45464
    :cond_3
    sget-object p1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    .line 325
    :goto_3
    invoke-static {p1}, Lo/eventFromJson;->toDebugString(Lo/SessionProtobufHelper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 45372
    :pswitch_5
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_4

    .line 45373
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string p1, ""

    .line 322
    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 45302
    :pswitch_6
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 45303
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/getCustomHeaders;

    goto :goto_5

    .line 45305
    :cond_5
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p1

    .line 319
    :goto_5
    invoke-static {p0, p1}, Lo/withSessionEndFields;->canonifyTimestamp(Ljava/lang/StringBuilder;Lo/getCustomHeaders;)V

    return-void

    .line 45246
    :pswitch_7
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 45247
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_6

    :cond_6
    const-wide/16 v0, 0x0

    .line 316
    :goto_6
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-void

    .line 45204
    :pswitch_8
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 45205
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_7

    :cond_7
    const-wide/16 v0, 0x0

    .line 313
    :goto_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void

    .line 45162
    :pswitch_9
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 45163
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 310
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void

    :pswitch_a
    const-string p1, "null"

    .line 307
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static compare(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I
    .locals 3

    .line 179
    invoke-static {p0}, Lo/withSessionEndFields;->typeOrder(Lo/writeRawMessageSetExtension;)I

    move-result v0

    .line 180
    invoke-static {p1}, Lo/withSessionEndFields;->typeOrder(Lo/writeRawMessageSetExtension;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 183
    invoke-static {v0, v1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result p0

    return p0

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 210
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid value type: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    .line 25749
    :pswitch_0
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 25750
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/writeBytes;

    goto :goto_0

    .line 25752
    :cond_1
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p0

    .line 26749
    :goto_0
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v1, :cond_2

    .line 26750
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/writeBytes;

    goto :goto_1

    .line 26752
    :cond_2
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p1

    .line 208
    :goto_1
    invoke-static {p0, p1}, Lo/withSessionEndFields;->compareMaps(Lo/writeBytes;Lo/writeBytes;)I

    move-result p0

    return p0

    .line 24673
    :pswitch_1
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 24674
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/toByteString;

    goto :goto_2

    .line 24676
    :cond_3
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p0

    .line 25673
    :goto_2
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v1, :cond_4

    .line 25674
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_3

    .line 25676
    :cond_4
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 206
    :goto_3
    invoke-static {p0, p1}, Lo/withSessionEndFields;->compareArrays(Lo/toByteString;Lo/toByteString;)I

    move-result p0

    return p0

    .line 23599
    :pswitch_2
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 23600
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/mergeStrings;

    goto :goto_4

    .line 23602
    :cond_5
    invoke-static {}, Lo/mergeStrings;->onNavigationEvent()Lo/mergeStrings;

    move-result-object p0

    .line 24599
    :goto_4
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v1, :cond_6

    .line 24600
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/mergeStrings;

    goto :goto_5

    .line 24602
    :cond_6
    invoke-static {}, Lo/mergeStrings;->onNavigationEvent()Lo/mergeStrings;

    move-result-object p1

    .line 204
    :goto_5
    invoke-static {p0, p1}, Lo/withSessionEndFields;->compareGeoPoints(Lo/mergeStrings;Lo/mergeStrings;)I

    move-result p0

    return p0

    .line 22510
    :pswitch_3
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 22511
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object p0, v1

    .line 23510
    :goto_6
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v2, :cond_8

    .line 23511
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 202
    :cond_8
    invoke-static {p0, v1}, Lo/withSessionEndFields;->compareReferences(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 21461
    :pswitch_4
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_9

    .line 21462
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/SessionProtobufHelper;

    goto :goto_7

    .line 21464
    :cond_9
    sget-object p0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    .line 22461
    :goto_7
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v1, :cond_a

    .line 22462
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/SessionProtobufHelper;

    goto :goto_8

    .line 22464
    :cond_a
    sget-object p1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    .line 200
    :goto_8
    invoke-static {p0, p1}, Lo/eventFromJson;->compareByteStrings(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)I

    move-result p0

    return p0

    .line 20372
    :pswitch_5
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_b

    .line 20373
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_9

    :cond_b
    move-object p0, v1

    .line 21372
    :goto_9
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v2, :cond_c

    .line 21373
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 198
    :cond_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 196
    :pswitch_6
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->getLocalWriteTime(Lo/writeRawMessageSetExtension;)Lo/getCustomHeaders;

    move-result-object p0

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->getLocalWriteTime(Lo/writeRawMessageSetExtension;)Lo/getCustomHeaders;

    move-result-object p1

    invoke-static {p0, p1}, Lo/withSessionEndFields;->compareTimestamps(Lo/getCustomHeaders;Lo/getCustomHeaders;)I

    move-result p0

    return p0

    .line 19302
    :pswitch_7
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    .line 19303
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/getCustomHeaders;

    goto :goto_a

    .line 19305
    :cond_d
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p0

    .line 20302
    :goto_a
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v1, :cond_e

    .line 20303
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/getCustomHeaders;

    goto :goto_b

    .line 20305
    :cond_e
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p1

    .line 194
    :goto_b
    invoke-static {p0, p1}, Lo/withSessionEndFields;->compareTimestamps(Lo/getCustomHeaders;Lo/getCustomHeaders;)I

    move-result p0

    return p0

    .line 192
    :pswitch_8
    invoke-static {p0, p1}, Lo/withSessionEndFields;->compareNumbers(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I

    move-result p0

    return p0

    .line 18162
    :pswitch_9
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 18163
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_c

    :cond_f
    const/4 p0, 0x0

    .line 19162
    :goto_c
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v1, :cond_10

    .line 19163
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 190
    :cond_10
    invoke-static {p0, v2}, Lo/eventFromJson;->compareBooleans(ZZ)I

    move-result p0

    return p0

    :pswitch_a
    return v2

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

.method private static compareArrays(Lo/toByteString;Lo/toByteString;)I
    .locals 4

    .line 39054
    iget-object v0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    .line 40054
    iget-object v1, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    .line 265
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 40065
    iget-object v2, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v2, v1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/writeRawMessageSetExtension;

    .line 41065
    iget-object v3, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v3, v1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/writeRawMessageSetExtension;

    .line 267
    invoke-static {v2, v3}, Lo/withSessionEndFields;->compare(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42054
    :cond_1
    iget-object p0, p0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {p0}, Lo/getEventLogSize$asBinder;->size()I

    move-result p0

    .line 43054
    iget-object p1, p1, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {p1}, Lo/getEventLogSize$asBinder;->size()I

    move-result p1

    .line 272
    invoke-static {p0, p1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result p0

    return p0
.end method

.method private static compareGeoPoints(Lo/mergeStrings;Lo/mergeStrings;)I
    .locals 4

    .line 36036
    iget-wide v0, p0, Lo/mergeStrings;->latitude_:D

    .line 37036
    iget-wide v2, p1, Lo/mergeStrings;->latitude_:D

    .line 257
    invoke-static {v0, v1, v2, v3}, Lo/eventFromJson;->compareDoubles(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 37074
    iget-wide v0, p0, Lo/mergeStrings;->longitude_:D

    .line 38074
    iget-wide p0, p1, Lo/mergeStrings;->longitude_:D

    .line 259
    invoke-static {v0, v1, p0, p1}, Lo/eventFromJson;->compareDoubles(DD)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static compareMaps(Lo/writeBytes;Lo/writeBytes;)I
    .locals 4

    .line 276
    new-instance v0, Ljava/util/TreeMap;

    .line 44036
    iget-object p0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 43090
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 277
    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 278
    new-instance v0, Ljava/util/TreeMap;

    .line 45036
    iget-object p1, p1, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 44090
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 279
    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 280
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    .line 287
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    invoke-static {v0, v1}, Lo/withSessionEndFields;->compare(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 294
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    invoke-static {p0, p1}, Lo/eventFromJson;->compareBooleans(ZZ)I

    move-result p0

    return p0
.end method

.method private static compareNumbers(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I
    .locals 10

    .line 27072
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 215
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->extraCallback:Lo/writeRawMessageSetExtension$onPostMessage;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v0, v1, :cond_4

    .line 27246
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v6, :cond_0

    .line 27247
    iget-object v0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v4

    .line 28072
    :goto_0
    iget v8, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v8}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v8

    .line 217
    sget-object v9, Lo/writeRawMessageSetExtension$onPostMessage;->extraCallback:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v8, v9, :cond_2

    .line 28246
    iget p0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne p0, v6, :cond_1

    .line 28247
    iget-object p0, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 218
    :cond_1
    invoke-static {v0, v1, v4, v5}, Lo/eventFromJson;->compareDoubles(DD)I

    move-result p0

    return p0

    .line 29072
    :cond_2
    iget v4, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v4}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v4

    .line 219
    sget-object v5, Lo/writeRawMessageSetExtension$onPostMessage;->onPostMessage:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v4, v5, :cond_9

    .line 29204
    iget p0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne p0, v7, :cond_3

    .line 29205
    iget-object p0, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 220
    :cond_3
    invoke-static {v0, v1, v2, v3}, Lo/eventFromJson;->compareMixed(DJ)I

    move-result p0

    return p0

    .line 30072
    :cond_4
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 222
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onPostMessage:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v0, v1, :cond_9

    .line 30204
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v7, :cond_5

    .line 30205
    iget-object v0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_5
    move-wide v0, v2

    .line 31072
    :goto_1
    iget v8, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v8}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v8

    .line 224
    sget-object v9, Lo/writeRawMessageSetExtension$onPostMessage;->onPostMessage:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v8, v9, :cond_7

    .line 31204
    iget p0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne p0, v7, :cond_6

    .line 31205
    iget-object p0, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 225
    :cond_6
    invoke-static {v0, v1, v2, v3}, Lo/eventFromJson;->compareLongs(JJ)I

    move-result p0

    return p0

    .line 32072
    :cond_7
    iget v2, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v2}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v2

    .line 226
    sget-object v3, Lo/writeRawMessageSetExtension$onPostMessage;->extraCallback:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v2, v3, :cond_9

    .line 32246
    iget p0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne p0, v6, :cond_8

    .line 32247
    iget-object p0, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 227
    :cond_8
    invoke-static {v4, v5, v0, v1}, Lo/eventFromJson;->compareMixed(DJ)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0

    :cond_9
    new-array v0, v7, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "Unexpected values: %s vs %s"

    .line 231
    invoke-static {p0, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method private static compareReferences(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    const-string v1, "/"

    .line 243
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 246
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 248
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    array-length p0, p0

    array-length p1, p1

    invoke-static {p0, p1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result p0

    return p0
.end method

.method private static compareTimestamps(Lo/getCustomHeaders;Lo/getCustomHeaders;)I
    .locals 4

    .line 33094
    iget-wide v0, p0, Lo/getCustomHeaders;->seconds_:J

    .line 34094
    iget-wide v2, p1, Lo/getCustomHeaders;->seconds_:J

    .line 235
    invoke-static {v0, v1, v2, v3}, Lo/eventFromJson;->compareLongs(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 34139
    :cond_0
    iget p0, p0, Lo/getCustomHeaders;->nanos_:I

    .line 35139
    iget p1, p1, Lo/getCustomHeaders;->nanos_:I

    .line 239
    invoke-static {p0, p1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result p0

    return p0
.end method

.method public static contains(Lo/ByteString$CodedBuilder;Lo/writeRawMessageSetExtension;)Z
    .locals 1

    .line 170
    invoke-interface {p0}, Lo/ByteString$CodedBuilder;->onPostMessage()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    .line 171
    invoke-static {v0, p1}, Lo/withSessionEndFields;->equals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static equals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z
    .locals 3

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {p0}, Lo/withSessionEndFields;->typeOrder(Lo/writeRawMessageSetExtension;)I

    move-result v1

    .line 101
    invoke-static {p1}, Lo/withSessionEndFields;->typeOrder(Lo/writeRawMessageSetExtension;)I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x2

    if-eq v1, v0, :cond_6

    const/4 v0, 0x4

    if-eq v1, v0, :cond_5

    const/16 v0, 0x9

    if-eq v1, v0, :cond_4

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 112
    :cond_3
    invoke-static {p0, p1}, Lo/withSessionEndFields;->objectEquals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z

    move-result p0

    return p0

    .line 110
    :cond_4
    invoke-static {p0, p1}, Lo/withSessionEndFields;->arrayEquals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z

    move-result p0

    return p0

    .line 114
    :cond_5
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->getLocalWriteTime(Lo/writeRawMessageSetExtension;)Lo/getCustomHeaders;

    move-result-object p0

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->getLocalWriteTime(Lo/writeRawMessageSetExtension;)Lo/getCustomHeaders;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 108
    :cond_6
    invoke-static {p0, p1}, Lo/withSessionEndFields;->numberEquals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z

    move-result p0

    return p0

    :cond_7
    :goto_0
    return v0
.end method

.method public static isArray(Lo/writeRawMessageSetExtension;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 50057
    iget p0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p0

    .line 406
    sget-object v0, Lo/writeRawMessageSetExtension$onPostMessage;->ICustomTabsCallback$Stub:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDouble(Lo/writeRawMessageSetExtension;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 50056
    iget p0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p0

    .line 396
    sget-object v0, Lo/writeRawMessageSetExtension$onPostMessage;->extraCallback:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInteger(Lo/writeRawMessageSetExtension;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 50055
    iget p0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p0

    .line 391
    sget-object v0, Lo/writeRawMessageSetExtension$onPostMessage;->onPostMessage:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isMapValue(Lo/writeRawMessageSetExtension;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 50064
    iget p0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p0

    .line 422
    sget-object v0, Lo/writeRawMessageSetExtension$onPostMessage;->ICustomTabsService:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNanValue(Lo/writeRawMessageSetExtension;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 50060
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 50061
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 418
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isNullValue(Lo/writeRawMessageSetExtension;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 50059
    iget p0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p0

    .line 414
    sget-object v0, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNumber(Lo/writeRawMessageSetExtension;)Z
    .locals 1

    .line 401
    invoke-static {p0}, Lo/withSessionEndFields;->isInteger(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lo/withSessionEndFields;->isDouble(Lo/writeRawMessageSetExtension;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isReferenceValue(Lo/writeRawMessageSetExtension;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 50058
    iget p0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p0

    .line 410
    sget-object v0, Lo/writeRawMessageSetExtension$onPostMessage;->asBinder:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static numberEquals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z
    .locals 7

    .line 3072
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 121
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onPostMessage:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v0, v1, :cond_0

    .line 4072
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 122
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->onPostMessage:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5072
    :cond_0
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 124
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->extraCallback:Lo/writeRawMessageSetExtension$onPostMessage;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 6072
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 125
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->extraCallback:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v0, v1, :cond_3

    .line 6246
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const-wide/16 v3, 0x0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 6247
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 126
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 7246
    iget p0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne p0, v1, :cond_2

    .line 7247
    iget-object p0, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 127
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    cmp-long v0, v5, p0

    if-nez v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method private static objectEquals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z
    .locals 4

    .line 12749
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 12750
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/writeBytes;

    goto :goto_0

    .line 12752
    :cond_0
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p0

    .line 13749
    :goto_0
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v0, v1, :cond_1

    .line 13750
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/writeBytes;

    goto :goto_1

    .line 13752
    :cond_1
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p1

    .line 15036
    :goto_1
    iget-object v0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 14048
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    .line 16036
    iget-object v1, p1, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 15048
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    return v2

    .line 17036
    :cond_2
    iget-object p0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 16090
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 158
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 18036
    iget-object v1, p1, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 17090
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static refValue(Lo/setProximityOn;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/writeRawMessageSetExtension;
    .locals 4

    .line 427
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 431
    invoke-virtual {p0}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "projects/%s/databases/%s/documents/%s"

    .line 429
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 428
    invoke-virtual {v0, p0}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Ljava/lang/String;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/writeRawMessageSetExtension;

    return-object p0
.end method

.method public static typeOrder(Lo/writeRawMessageSetExtension;)I
    .locals 3

    .line 62
    sget-object v0, Lo/getIconBitmap;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    .line 1072
    iget v1, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v1}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2072
    iget p0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {p0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object p0

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    .line 84
    :pswitch_0
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->isServerTimestamp(Lo/writeRawMessageSetExtension;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    return v1

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
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


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 50066
    iget-object v0, p0, Lo/withSessionEndFields;->arg$1:Ljava/lang/String;

    check-cast p1, Lo/getOrCreateBodyBuilder;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->lambda$subscribeToTopic$1$FirebaseMessaging(Ljava/lang/String;Lo/getOrCreateBodyBuilder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
