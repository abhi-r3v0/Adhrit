.class public Lo/BytesBackedNativeSessionFile;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALL_REQUIRED_KEYS:[Ljava/lang/String;

.field static final EXPERIMENT_ID_KEY:Ljava/lang/String; = "experimentId"

.field static final EXPERIMENT_START_TIME_KEY:Ljava/lang/String; = "experimentStartTime"

.field static final TIME_TO_LIVE_KEY:Ljava/lang/String; = "timeToLiveMillis"

.field static final TRIGGER_EVENT_KEY:Ljava/lang/String; = "triggerEvent"

.field static final TRIGGER_TIMEOUT_KEY:Ljava/lang/String; = "triggerTimeoutMillis"

.field static final VARIANT_ID_KEY:Ljava/lang/String; = "variantId"

.field static final protoTimestampStringParser:Ljava/text/DateFormat;


# instance fields
.field private final experimentId:Ljava/lang/String;

.field private final experimentStartTime:Ljava/util/Date;

.field private final timeToLiveInMillis:J

.field private final triggerEventName:Ljava/lang/String;

.field private final triggerTimeoutInMillis:J

.field private final variantId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "experimentId"

    const-string v1, "experimentStartTime"

    const-string v2, "timeToLiveMillis"

    const-string v3, "triggerTimeoutMillis"

    const-string v4, "variantId"

    .line 92
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/BytesBackedNativeSessionFile;->ALL_REQUIRED_KEYS:[Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lo/BytesBackedNativeSessionFile;->protoTimestampStringParser:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lo/BytesBackedNativeSessionFile;->experimentId:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lo/BytesBackedNativeSessionFile;->variantId:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lo/BytesBackedNativeSessionFile;->triggerEventName:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lo/BytesBackedNativeSessionFile;->experimentStartTime:Ljava/util/Date;

    .line 142
    iput-wide p5, p0, Lo/BytesBackedNativeSessionFile;->triggerTimeoutInMillis:J

    .line 143
    iput-wide p7, p0, Lo/BytesBackedNativeSessionFile;->timeToLiveInMillis:J

    return-void
.end method

.method static fromConditionalUserProperty(Lo/convertLongToFourByteBuffer$ICustomTabsCallback;)Lo/BytesBackedNativeSessionFile;
    .locals 10

    .line 298
    iget-object v0, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerEventName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerEventName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v4, v0

    .line 302
    new-instance v0, Lo/BytesBackedNativeSessionFile;

    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->name:Ljava/lang/String;

    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->value:Ljava/lang/Object;

    .line 304
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->creationTimestamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    iget-wide v6, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerTimeout:J

    iget-wide v8, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timeToLive:J

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lo/BytesBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V

    return-object v0
.end method

.method static fromMap(Ljava/util/Map;)Lo/BytesBackedNativeSessionFile;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/BytesBackedNativeSessionFile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    const-string v0, "triggerEvent"

    .line 160
    invoke-static {p0}, Lo/BytesBackedNativeSessionFile;->validateExperimentInfoMap(Ljava/util/Map;)V

    .line 163
    :try_start_0
    sget-object v1, Lo/BytesBackedNativeSessionFile;->protoTimestampStringParser:Ljava/text/DateFormat;

    const-string v2, "experimentStartTime"

    .line 164
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    const-string v1, "triggerTimeoutMillis"

    .line 165
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "timeToLiveMillis"

    .line 166
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 168
    new-instance v1, Lo/BytesBackedNativeSessionFile;

    const-string v2, "experimentId"

    .line 169
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v2, "variantId"

    .line 170
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 171
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    move-object v6, p0

    move-object v3, v1

    .line 173
    invoke-direct/range {v3 .. v11}, Lo/BytesBackedNativeSessionFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 181
    new-instance v0, Lcom/google/firebase/abt/AbtException;

    const-string v1, "Could not process experiment: one of the durations could not be converted into a long."

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    .line 178
    new-instance v0, Lcom/google/firebase/abt/AbtException;

    const-string v1, "Could not process experiment: parsing experiment start time failed."

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method static validateAbtExperimentInfo(Lo/BytesBackedNativeSessionFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lo/BytesBackedNativeSessionFile;->toStringMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lo/BytesBackedNativeSessionFile;->validateExperimentInfoMap(Ljava/util/Map;)V

    return-void
.end method

.method private static validateExperimentInfoMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    sget-object v1, Lo/BytesBackedNativeSessionFile;->ALL_REQUIRED_KEYS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 227
    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 233
    :cond_2
    new-instance p0, Lcom/google/firebase/abt/AbtException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "The following keys are missing from the experiment info map: %s"

    .line 234
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method getExperimentId()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lo/BytesBackedNativeSessionFile;->experimentId:Ljava/lang/String;

    return-object v0
.end method

.method getStartTimeInMillisSinceEpoch()J
    .locals 2

    .line 204
    iget-object v0, p0, Lo/BytesBackedNativeSessionFile;->experimentStartTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeToLiveInMillis()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lo/BytesBackedNativeSessionFile;->timeToLiveInMillis:J

    return-wide v0
.end method

.method getTriggerEventName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lo/BytesBackedNativeSessionFile;->triggerEventName:Ljava/lang/String;

    return-object v0
.end method

.method getTriggerTimeoutInMillis()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lo/BytesBackedNativeSessionFile;->triggerTimeoutInMillis:J

    return-wide v0
.end method

.method getVariantId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lo/BytesBackedNativeSessionFile;->variantId:Ljava/lang/String;

    return-object v0
.end method

.method toConditionalUserProperty(Ljava/lang/String;)Lo/convertLongToFourByteBuffer$ICustomTabsCallback;
    .locals 3

    .line 268
    new-instance v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;

    invoke-direct {v0}, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;-><init>()V

    .line 270
    iput-object p1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->origin:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lo/BytesBackedNativeSessionFile;->getStartTimeInMillisSinceEpoch()J

    move-result-wide v1

    iput-wide v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->creationTimestamp:J

    .line 272
    iget-object p1, p0, Lo/BytesBackedNativeSessionFile;->experimentId:Ljava/lang/String;

    iput-object p1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->name:Ljava/lang/String;

    .line 273
    iget-object p1, p0, Lo/BytesBackedNativeSessionFile;->variantId:Ljava/lang/String;

    iput-object p1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->value:Ljava/lang/Object;

    .line 278
    iget-object p1, p0, Lo/BytesBackedNativeSessionFile;->triggerEventName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/BytesBackedNativeSessionFile;->triggerEventName:Ljava/lang/String;

    :goto_0
    iput-object p1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerEventName:Ljava/lang/String;

    .line 279
    iget-wide v1, p0, Lo/BytesBackedNativeSessionFile;->triggerTimeoutInMillis:J

    iput-wide v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerTimeout:J

    .line 280
    iget-wide v1, p0, Lo/BytesBackedNativeSessionFile;->timeToLiveInMillis:J

    iput-wide v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timeToLive:J

    return-object v0
.end method

.method toStringMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    iget-object v1, p0, Lo/BytesBackedNativeSessionFile;->experimentId:Ljava/lang/String;

    const-string v2, "experimentId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lo/BytesBackedNativeSessionFile;->variantId:Ljava/lang/String;

    const-string v2, "variantId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lo/BytesBackedNativeSessionFile;->triggerEventName:Ljava/lang/String;

    const-string v2, "triggerEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lo/BytesBackedNativeSessionFile;->protoTimestampStringParser:Ljava/text/DateFormat;

    iget-object v2, p0, Lo/BytesBackedNativeSessionFile;->experimentStartTime:Ljava/util/Date;

    .line 256
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "experimentStartTime"

    .line 255
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-wide v1, p0, Lo/BytesBackedNativeSessionFile;->triggerTimeoutInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "triggerTimeoutMillis"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-wide v1, p0, Lo/BytesBackedNativeSessionFile;->timeToLiveInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeToLiveMillis"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
