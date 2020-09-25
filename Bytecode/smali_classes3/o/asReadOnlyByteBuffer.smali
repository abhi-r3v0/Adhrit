.class public Lo/asReadOnlyByteBuffer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/asReadOnlyByteBuffer$ICustomTabsCallback;
    }
.end annotation


# static fields
.field static final ACTIVATE_FILE_NAME:Ljava/lang/String; = "activate"

.field static final DEFAULTS_FILE_NAME:Ljava/lang/String; = "defaults"

.field public static final EXPERIMENT_ID_KEY:Ljava/lang/String; = "experimentId"

.field public static final EXPERIMENT_START_TIME_KEY:Ljava/lang/String; = "experimentStartTime"

.field public static final EXPERIMENT_TIME_TO_LIVE_KEY:Ljava/lang/String; = "timeToLiveMillis"

.field public static final EXPERIMENT_TRIGGER_EVENT_KEY:Ljava/lang/String; = "triggerEvent"

.field public static final EXPERIMENT_TRIGGER_TIMEOUT_KEY:Ljava/lang/String; = "triggerTimeoutMillis"

.field public static final EXPERIMENT_VARIANT_ID_KEY:Ljava/lang/String; = "variantId"

.field static final FETCH_FILE_NAME:Ljava/lang/String; = "fetch"

.field private static final FRC_3P_NAMESPACE:Ljava/lang/String; = "firebase"

.field static final LEGACY_CONFIGS_FILE_NAME:Ljava/lang/String; = "persisted_config"

.field static final LEGACY_FRC_NAMESPACE_PREFIX:Ljava/lang/String; = "configns:"

.field private static final LEGACY_SETTINGS_FILE_NAME:Ljava/lang/String; = "com.google.firebase.remoteconfig_legacy_settings"

.field private static final PROTO_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

.field private static final SAVE_LEGACY_CONFIGS_FLAG_NAME:Ljava/lang/String; = "save_legacy_configs"

.field static final protoTimestampStringParser:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final legacySettings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 101
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/asReadOnlyByteBuffer;->PROTO_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    .line 122
    new-instance v0, Lo/asReadOnlyByteBuffer$5;

    invoke-direct {v0}, Lo/asReadOnlyByteBuffer$5;-><init>()V

    sput-object v0, Lo/asReadOnlyByteBuffer;->protoTimestampStringParser:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lo/asReadOnlyByteBuffer;->context:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lo/asReadOnlyByteBuffer;->appId:Ljava/lang/String;

    const-string p2, "com.google.firebase.remoteconfig_legacy_settings"

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo/asReadOnlyByteBuffer;->legacySettings:Landroid/content/SharedPreferences;

    return-void
.end method

.method private convertConfigHolder(Lo/getCodedOutput$onPostMessage;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCodedOutput$onPostMessage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ByteString;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lo/getCodedOutput$onPostMessage;->getTimestamp()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 237
    invoke-virtual {p1}, Lo/getCodedOutput$onPostMessage;->getExperimentPayloadList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/asReadOnlyByteBuffer;->convertLegacyAbtExperiments(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    .line 240
    invoke-virtual {p1}, Lo/getCodedOutput$onPostMessage;->getNamespaceKeyValueList()Ljava/util/List;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getCodedOutput$ICustomTabsCallback;

    .line 242
    invoke-virtual {v3}, Lo/getCodedOutput$ICustomTabsCallback;->getNamespace()Ljava/lang/String;

    move-result-object v4

    const-string v5, "configns:"

    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    .line 244
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 248
    :cond_0
    invoke-static {}, Lo/ByteString;->newBuilder()Lo/ByteString$onPostMessage;

    move-result-object v5

    .line 249
    invoke-virtual {v3}, Lo/getCodedOutput$ICustomTabsCallback;->getKeyValueList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/asReadOnlyByteBuffer;->convertKeyValueList(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5, v3}, Lo/ByteString$onPostMessage;->replaceConfigsWith(Ljava/util/Map;)Lo/ByteString$onPostMessage;

    move-result-object v3

    .line 250
    invoke-virtual {v3, v1}, Lo/ByteString$onPostMessage;->withFetchTime(Ljava/util/Date;)Lo/ByteString$onPostMessage;

    move-result-object v3

    const-string v5, "firebase"

    .line 251
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    invoke-virtual {v3, v2}, Lo/ByteString$onPostMessage;->withAbtExperiments(Lorg/json/JSONArray;)Lo/ByteString$onPostMessage;

    .line 256
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lo/ByteString$onPostMessage;->build()Lo/ByteString;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "FirebaseRemoteConfig"

    const-string v4, "A set of legacy configs could not be converted."

    .line 259
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private convertKeyValueList(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCodedOutput$onNavigationEvent;

    .line 325
    invoke-virtual {v1}, Lo/getCodedOutput$onNavigationEvent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lo/getCodedOutput$onNavigationEvent;->getValue()Lo/SessionProtobufHelper;

    move-result-object v1

    sget-object v3, Lo/asReadOnlyByteBuffer;->PROTO_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Lo/SessionProtobufHelper;->onNavigationEvent(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertLegacyAbtExperiment(Lo/saveTrackedQuery$onMessageChannelReady;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1830
    iget-object v1, p1, Lo/saveTrackedQuery$onMessageChannelReady;->experimentId_:Ljava/lang/String;

    const-string v2, "experimentId"

    .line 305
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1914
    iget-object v1, p1, Lo/saveTrackedQuery$onMessageChannelReady;->variantId_:Ljava/lang/String;

    const-string v2, "variantId"

    .line 306
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    sget-object v1, Lo/asReadOnlyByteBuffer;->protoTimestampStringParser:Ljava/lang/ThreadLocal;

    .line 310
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    .line 1986
    iget-wide v3, p1, Lo/saveTrackedQuery$onMessageChannelReady;->experimentStartTimeMillis_:J

    .line 311
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "experimentStartTime"

    .line 307
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2026
    iget-object v1, p1, Lo/saveTrackedQuery$onMessageChannelReady;->triggerEvent_:Ljava/lang/String;

    const-string v2, "triggerEvent"

    .line 312
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2097
    iget-wide v1, p1, Lo/saveTrackedQuery$onMessageChannelReady;->triggerTimeoutMillis_:J

    const-string v3, "triggerTimeoutMillis"

    .line 313
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2150
    iget-wide v1, p1, Lo/saveTrackedQuery$onMessageChannelReady;->timeToLiveMillis_:J

    const-string p1, "timeToLiveMillis"

    .line 315
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method private convertLegacyAbtExperiments(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SessionProtobufHelper;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SessionProtobufHelper;

    .line 272
    invoke-direct {p0, v1}, Lo/asReadOnlyByteBuffer;->deserializePayload(Lo/SessionProtobufHelper;)Lo/saveTrackedQuery$onMessageChannelReady;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    invoke-direct {p0, v1}, Lo/asReadOnlyByteBuffer;->convertLegacyAbtExperiment(Lo/saveTrackedQuery$onMessageChannelReady;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FirebaseRemoteConfig"

    const-string v3, "A legacy ABT experiment could not be parsed."

    .line 278
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private deserializePayload(Lo/SessionProtobufHelper;)Lo/saveTrackedQuery$onMessageChannelReady;
    .locals 4

    .line 288
    :try_start_0
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->extraCallback()Lo/SessionProtobufHelper$extraCallback;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {v1}, Lo/saveTrackedQuery$onMessageChannelReady;->extraCallback([B)Lo/saveTrackedQuery$onMessageChannelReady;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "Payload was not defined or could not be deserialized."

    .line 295
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getConvertedLegacyConfigs()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/asReadOnlyByteBuffer$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lo/asReadOnlyByteBuffer;->readPersistedConfig()Lo/getCodedOutput$onRelationshipValidationResult;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 204
    :cond_0
    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getActiveConfigHolder()Lo/getCodedOutput$onPostMessage;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/asReadOnlyByteBuffer;->convertConfigHolder(Lo/getCodedOutput$onPostMessage;)Ljava/util/Map;

    move-result-object v2

    .line 206
    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getFetchedConfigHolder()Lo/getCodedOutput$onPostMessage;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/asReadOnlyByteBuffer;->convertConfigHolder(Lo/getCodedOutput$onPostMessage;)Ljava/util/Map;

    move-result-object v3

    .line 208
    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getDefaultsConfigHolder()Lo/getCodedOutput$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/asReadOnlyByteBuffer;->convertConfigHolder(Lo/getCodedOutput$onPostMessage;)Ljava/util/Map;

    move-result-object v0

    .line 210
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 211
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    new-instance v6, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;-><init>(Lo/asReadOnlyByteBuffer$5;)V

    .line 217
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 218
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ByteString;

    invoke-static {v6, v7}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$400(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;Lo/ByteString;)V

    .line 220
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 221
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ByteString;

    invoke-static {v6, v7}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$500(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;Lo/ByteString;)V

    .line 223
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 224
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ByteString;

    invoke-static {v6, v7}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$600(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;Lo/ByteString;)V

    .line 226
    :cond_3
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private readPersistedConfig()Lo/getCodedOutput$onRelationshipValidationResult;
    .locals 7

    const-string v0, "Failed to close persisted config file."

    const-string v1, "FirebaseRemoteConfig"

    .line 333
    iget-object v2, p0, Lo/asReadOnlyByteBuffer;->context:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    const-string v4, "persisted_config"

    .line 339
    invoke-virtual {v2, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :try_start_1
    invoke-static {v2}, Lo/getCodedOutput$onRelationshipValidationResult;->parseFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onRelationshipValidationResult;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 350
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v3

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v2, v3

    :goto_1
    :try_start_3
    const-string v5, "Cannot initialize from persisted config."

    .line 345
    invoke-static {v1, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 350
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    .line 353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-object v3

    :catch_5
    move-exception v4

    move-object v2, v3

    :goto_3
    :try_start_5
    const-string v5, "Persisted config file was not found."

    .line 342
    invoke-static {v1, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    .line 350
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v2

    .line 353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    return-object v3

    :catchall_1
    move-exception v3

    :goto_5
    if-eqz v2, :cond_4

    .line 350
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception v2

    .line 353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    :cond_4
    :goto_6
    throw v3
.end method

.method private saveLegacyConfigs(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/asReadOnlyByteBuffer$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;

    const-string v2, "fetch"

    .line 172
    invoke-virtual {p0, v1, v2}, Lo/asReadOnlyByteBuffer;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;

    move-result-object v2

    const-string v3, "activate"

    .line 173
    invoke-virtual {p0, v1, v3}, Lo/asReadOnlyByteBuffer;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;

    move-result-object v3

    const-string v4, "defaults"

    .line 174
    invoke-virtual {p0, v1, v4}, Lo/asReadOnlyByteBuffer;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;

    move-result-object v1

    .line 176
    invoke-static {v0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$000(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 177
    invoke-static {v0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$000(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;

    move-result-object v4

    invoke-virtual {v2, v4}, Lo/copyFromUtf8;->put(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    .line 179
    :cond_1
    invoke-static {v0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$100(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 180
    invoke-static {v0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$100(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;

    move-result-object v2

    invoke-virtual {v3, v2}, Lo/copyFromUtf8;->put(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    .line 182
    :cond_2
    invoke-static {v0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$200(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 183
    invoke-static {v0}, Lo/asReadOnlyByteBuffer$ICustomTabsCallback;->access$200(Lo/asReadOnlyByteBuffer$ICustomTabsCallback;)Lo/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/copyFromUtf8;->put(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;
    .locals 2

    .line 364
    iget-object v0, p0, Lo/asReadOnlyByteBuffer;->context:Landroid/content/Context;

    iget-object v1, p0, Lo/asReadOnlyByteBuffer;->appId:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lo/FileStoreImpl;->getCacheClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;

    move-result-object p1

    return-object p1
.end method

.method public saveLegacyConfigsIfNecessary()Z
    .locals 4

    .line 150
    iget-object v0, p0, Lo/asReadOnlyByteBuffer;->legacySettings:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "save_legacy_configs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lo/asReadOnlyByteBuffer;->getConvertedLegacyConfigs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/asReadOnlyByteBuffer;->saveLegacyConfigs(Ljava/util/Map;)V

    .line 152
    iget-object v0, p0, Lo/asReadOnlyByteBuffer;->legacySettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1

    :cond_0
    return v3
.end method
