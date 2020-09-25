.class public Lo/createBinaryImageJson;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACCEPT_HEADER_KEY:Ljava/lang/String; = "Accept"

.field private static final API_KEY_HEADER:Ljava/lang/String; = "x-goog-api-key"

.field private static final CACHE_CONTROL_DIRECTIVE:Ljava/lang/String; = "no-cache"

.field private static final CACHE_CONTROL_HEADER_KEY:Ljava/lang/String; = "Cache-Control"

.field private static final CONTENT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER_KEY:Ljava/lang/String; = "Content-Type"

.field private static final CREATE_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations"

.field private static final DELETE_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations/%s"

.field private static final EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIREBASE_INSTALLATIONS_API_DOMAIN:Ljava/lang/String; = "firebaseinstallations.googleapis.com"

.field private static final FIREBASE_INSTALLATIONS_API_VERSION:Ljava/lang/String; = "v1"

.field private static final FIREBASE_INSTALLATIONS_ID_HEARTBEAT_TAG:Ljava/lang/String; = "fire-installations-id"

.field private static final FIREBASE_INSTALLATION_AUTH_VERSION:Ljava/lang/String; = "FIS_v2"

.field private static final FIS_TAG:Ljava/lang/String; = "Firebase-Installations"

.field private static final GENERATE_AUTH_TOKEN_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations/%s/authTokens:generate"

.field private static final GZIP_CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final HEART_BEAT_HEADER:Ljava/lang/String; = "x-firebase-client-log-type"

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final MAX_RETRIES:I = 0x1

.field private static final NETWORK_TIMEOUT_MILLIS:I = 0x2710

.field static final PARSING_EXPIRATION_TIME_ERROR_MESSAGE:Ljava/lang/String; = "Invalid Expiration Timestamp."

.field private static final SDK_VERSION_PREFIX:Ljava/lang/String; = "a:"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "x-firebase-client"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final X_ANDROID_CERT_HEADER_KEY:Ljava/lang/String; = "X-Android-Cert"

.field private static final X_ANDROID_IID_MIGRATION_KEY:Ljava/lang/String; = "x-goog-fis-android-iid-migration-auth"

.field private static final X_ANDROID_PACKAGE_HEADER_KEY:Ljava/lang/String; = "X-Android-Package"


# instance fields
.field private final context:Landroid/content/Context;

.field private final heartbeatInfo:Lo/parseFile;

.field private final userAgentPublisher:Lo/CrashlyticsReportPersistence$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9]+s"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/createBinaryImageJson;->EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "UTF-8"

    .line 94
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/createBinaryImageJson;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lo/createBinaryImageJson;->context:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lo/createBinaryImageJson;->userAgentPublisher:Lo/CrashlyticsReportPersistence$$Lambda$2;

    .line 113
    iput-object p3, p0, Lo/createBinaryImageJson;->heartbeatInfo:Lo/parseFile;

    return-void
.end method

.method private static availableFirebaseOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 561
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "Firebase options used while communicating with Firebase server APIs: %s, %s%s"

    .line 559
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildCreateFirebaseInstallationRequestBody(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 237
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "fid"

    .line 238
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "appId"

    .line 239
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "authVersion"

    const-string p1, "FIS_v2"

    .line 240
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sdkVersion"

    const-string p1, "a:16.3.3"

    .line 241
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 244
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static buildGenerateAuthTokenRequestBody()Lorg/json/JSONObject;
    .locals 3

    .line 264
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sdkVersion"

    const-string v2, "a:16.3.3"

    .line 265
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "installation"

    .line 268
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFingerprintHashForPackage()Ljava/lang/String;
    .locals 5

    const-string v0, "ContentValues"

    const/4 v1, 0x0

    .line 516
    :try_start_0
    iget-object v2, p0, Lo/createBinaryImageJson;->context:Landroid/content/Context;

    iget-object v3, p0, Lo/createBinaryImageJson;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/getStoreAssociationHeader;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get fingerprint hash for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/createBinaryImageJson;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 522
    :cond_0
    invoke-static {v2}, Lo/preferLastSpan;->onMessageChannelReady([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No such package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/createBinaryImageJson;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 332
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "firebaseinstallations.googleapis.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 333
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 337
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    throw v0
.end method

.method private static getJsonBytes(Lorg/json/JSONObject;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static logBadConfigError()V
    .locals 2

    const-string v0, "Firebase-Installations"

    const-string v1, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 409
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 550
    invoke-static {p0}, Lo/createBinaryImageJson;->readErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    .line 551
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Firebase-Installations"

    .line 552
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {p1, p2, p3}, Lo/createBinaryImageJson;->availableFirebaseOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 421
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x2710

    .line 427
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x0

    .line 428
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 429
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v0, "application/json"

    const-string v1, "Content-Type"

    .line 430
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    .line 431
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    .line 432
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    .line 433
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lo/createBinaryImageJson;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Android-Package"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lo/createBinaryImageJson;->heartbeatInfo:Lo/parseFile;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/createBinaryImageJson;->userAgentPublisher:Lo/CrashlyticsReportPersistence$$Lambda$2;

    if-eqz v1, :cond_0

    const-string v1, "fire-installations-id"

    .line 436
    invoke-interface {v0, v1}, Lo/parseFile;->getHeartBeatCode(Ljava/lang/String;)Lo/parseFile$onMessageChannelReady;

    move-result-object v0

    .line 437
    sget-object v1, Lo/parseFile$onMessageChannelReady;->NONE:Lo/parseFile$onMessageChannelReady;

    if-eq v0, v1, :cond_0

    .line 438
    iget-object v1, p0, Lo/createBinaryImageJson;->userAgentPublisher:Lo/CrashlyticsReportPersistence$$Lambda$2;

    invoke-interface {v1}, Lo/CrashlyticsReportPersistence$$Lambda$2;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-firebase-client"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Lo/parseFile$onMessageChannelReady;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-firebase-client-log-type"

    .line 439
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    invoke-direct {p0}, Lo/createBinaryImageJson;->getFingerprintHashForPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Android-Cert"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-goog-api-key"

    .line 444
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 423
    :catch_0
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    throw p1
.end method

.method static parseTokenExpirationTimestamp(Ljava/lang/String;)J
    .locals 2

    .line 537
    sget-object v0, Lo/createBinaryImageJson;->EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 538
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    .line 540
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1035
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Expiration Timestamp."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readCreateResponse(Ljava/net/HttpURLConnection;)Lo/isRelevant;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 451
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lo/createBinaryImageJson;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 452
    invoke-static {}, Lo/correctDataPath;->builder()Lo/correctDataPath$ICustomTabsCallback;

    move-result-object v1

    .line 453
    invoke-static {}, Lo/isRelevant;->builder()Lo/isRelevant$extraCallback;

    move-result-object v2

    .line 454
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 455
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 456
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/isRelevant$extraCallback;->setUri(Ljava/lang/String;)Lo/isRelevant$extraCallback;

    goto :goto_0

    :cond_0
    const-string v4, "fid"

    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/isRelevant$extraCallback;->setFid(Ljava/lang/String;)Lo/isRelevant$extraCallback;

    goto :goto_0

    :cond_1
    const-string v4, "refreshToken"

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 462
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/isRelevant$extraCallback;->setRefreshToken(Ljava/lang/String;)Lo/isRelevant$extraCallback;

    goto :goto_0

    :cond_2
    const-string v4, "authToken"

    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 464
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 465
    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 466
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "token"

    .line 467
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 468
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/correctDataPath$ICustomTabsCallback;->setToken(Ljava/lang/String;)Lo/correctDataPath$ICustomTabsCallback;

    goto :goto_1

    :cond_3
    const-string v4, "expiresIn"

    .line 469
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 471
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/createBinaryImageJson;->parseTokenExpirationTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    .line 470
    invoke-virtual {v1, v3, v4}, Lo/correctDataPath$ICustomTabsCallback;->setTokenExpirationTimestamp(J)Lo/correctDataPath$ICustomTabsCallback;

    goto :goto_1

    .line 473
    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 476
    :cond_5
    invoke-virtual {v1}, Lo/correctDataPath$ICustomTabsCallback;->build()Lo/correctDataPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/isRelevant$extraCallback;->setAuthToken(Lo/correctDataPath;)Lo/isRelevant$extraCallback;

    .line 477
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 479
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 482
    :cond_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 483
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 484
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 485
    sget-object p1, Lo/isRelevant$onMessageChannelReady;->OK:Lo/isRelevant$onMessageChannelReady;

    invoke-virtual {v2, p1}, Lo/isRelevant$extraCallback;->setResponseCode(Lo/isRelevant$onMessageChannelReady;)Lo/isRelevant$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/isRelevant$extraCallback;->build()Lo/isRelevant;

    move-result-object p1

    return-object p1
.end method

.method private static readErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7

    .line 567
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 571
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lo/createBinaryImageJson;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 573
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 575
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v3, "Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 579
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 p0, 0x2

    aput-object v0, v4, p0

    .line 577
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :try_start_1
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 588
    :catch_1
    throw p0

    .line 584
    :catch_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-object v1
.end method

.method private readGenerateAuthTokenResponse(Ljava/net/HttpURLConnection;)Lo/correctDataPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 491
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lo/createBinaryImageJson;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 492
    invoke-static {}, Lo/correctDataPath;->builder()Lo/correctDataPath$ICustomTabsCallback;

    move-result-object v1

    .line 493
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 494
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    .line 496
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/correctDataPath$ICustomTabsCallback;->setToken(Ljava/lang/String;)Lo/correctDataPath$ICustomTabsCallback;

    goto :goto_0

    :cond_0
    const-string v3, "expiresIn"

    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/createBinaryImageJson;->parseTokenExpirationTimestamp(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/correctDataPath$ICustomTabsCallback;->setTokenExpirationTimestamp(J)Lo/correctDataPath$ICustomTabsCallback;

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 505
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 506
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 508
    sget-object p1, Lo/correctDataPath$extraCallback;->OK:Lo/correctDataPath$extraCallback;

    invoke-virtual {v1, p1}, Lo/correctDataPath$ICustomTabsCallback;->setResponseCode(Lo/correctDataPath$extraCallback;)Lo/correctDataPath$ICustomTabsCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/correctDataPath$ICustomTabsCallback;->build()Lo/correctDataPath;

    move-result-object p1

    return-object p1
.end method

.method private writeFIDCreateRequestBodyToOutputStream(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-static {p2, p3}, Lo/createBinaryImageJson;->buildCreateFirebaseInstallationRequestBody(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lo/createBinaryImageJson;->getJsonBytes(Lorg/json/JSONObject;)[B

    move-result-object p2

    .line 191
    invoke-static {p1, p2}, Lo/createBinaryImageJson;->writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V

    return-void
.end method

.method private writeGenerateAuthTokenRequestBodyToOutputStream(Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-static {}, Lo/createBinaryImageJson;->buildGenerateAuthTokenRequestBody()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lo/createBinaryImageJson;->getJsonBytes(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 250
    invoke-static {p1, v0}, Lo/createBinaryImageJson;->writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V

    return-void
.end method

.method private static writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 213
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 219
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 218
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 219
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 223
    :catch_1
    throw p1

    .line 211
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot send request to FIS servers. No OutputStream available."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/isRelevant;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string v3, "projects/%s/installations"

    .line 142
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-direct {p0, v1}, Lo/createBinaryImageJson;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    :goto_0
    if-gt v2, v0, :cond_4

    .line 146
    invoke-direct {p0, v1, p1}, Lo/createBinaryImageJson;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    :try_start_0
    const-string v4, "POST"

    .line 149
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-eqz p5, :cond_0

    const-string v4, "x-goog-fis-android-iid-migration-auth"

    .line 154
    invoke-virtual {v3, v4, p5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-direct {p0, v3, p2, p4}, Lo/createBinaryImageJson;->writeFIDCreateRequestBodyToOutputStream(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 162
    invoke-direct {p0, v3}, Lo/createBinaryImageJson;->readCreateResponse(Ljava/net/HttpURLConnection;)Lo/isRelevant;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 165
    :cond_1
    :try_start_1
    invoke-static {v3, p4, p1, p3}, Lo/createBinaryImageJson;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1ad

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1f4

    if-lt v4, v5, :cond_2

    const/16 v5, 0x258

    if-ge v4, v5, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    invoke-static {}, Lo/createBinaryImageJson;->logBadConfigError()V

    .line 175
    invoke-static {}, Lo/isRelevant;->builder()Lo/isRelevant$extraCallback;

    move-result-object v4

    sget-object v5, Lo/isRelevant$onMessageChannelReady;->BAD_CONFIG:Lo/isRelevant$onMessageChannelReady;

    invoke-virtual {v4, v5}, Lo/isRelevant$extraCallback;->setResponseCode(Lo/isRelevant$onMessageChannelReady;)Lo/isRelevant$extraCallback;

    move-result-object v4

    invoke-virtual {v4}, Lo/isRelevant$extraCallback;->build()Lo/isRelevant;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    throw p1

    :catch_0
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 179
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 183
    :cond_4
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const-string p3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, p3, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    throw p1
.end method

.method public deleteFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string p2, "projects/%s/installations/%s"

    .line 290
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 291
    invoke-direct {p0, p2}, Lo/createBinaryImageJson;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    :goto_0
    if-gt v1, v2, :cond_4

    .line 295
    invoke-direct {p0, p2, p1}, Lo/createBinaryImageJson;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    :try_start_0
    const-string v3, "DELETE"

    .line 297
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Authorization"

    const-string v4, "FIS_v2 "

    .line 298
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x191

    if-eq v3, v4, :cond_2

    const/16 v4, 0x194

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 306
    invoke-static {v0, v4, p1, p3}, Lo/createBinaryImageJson;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1ad

    if-eq v3, v4, :cond_3

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_1

    const/16 v4, 0x258

    if-ge v3, v4, :cond_1

    goto :goto_2

    .line 313
    :cond_1
    invoke-static {}, Lo/createBinaryImageJson;->logBadConfigError()V

    .line 315
    new-instance v3, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v4, "Bad config while trying to delete FID"

    sget-object v5, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 321
    throw p1

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 320
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 324
    :cond_4
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const-string p3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, p3, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    throw p1
.end method

.method public generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/correctDataPath;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string p2, "projects/%s/installations/%s/authTokens:generate"

    .line 366
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 368
    invoke-direct {p0, p2}, Lo/createBinaryImageJson;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    :goto_0
    if-gt v1, v2, :cond_5

    .line 370
    invoke-direct {p0, p2, p1}, Lo/createBinaryImageJson;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    :try_start_0
    const-string v3, "POST"

    .line 372
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Authorization"

    const-string v4, "FIS_v2 "

    .line 373
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, v0}, Lo/createBinaryImageJson;->writeGenerateAuthTokenRequestBodyToOutputStream(Ljava/net/HttpURLConnection;)V

    .line 377
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 380
    invoke-direct {p0, v0}, Lo/createBinaryImageJson;->readGenerateAuthTokenResponse(Ljava/net/HttpURLConnection;)Lo/correctDataPath;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_0
    const/4 v4, 0x0

    .line 383
    :try_start_1
    invoke-static {v0, v4, p1, p3}, Lo/createBinaryImageJson;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x191

    if-eq v3, v4, :cond_3

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x1ad

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_2

    const/16 v4, 0x258

    if-ge v3, v4, :cond_2

    goto :goto_2

    .line 394
    :cond_2
    invoke-static {}, Lo/createBinaryImageJson;->logBadConfigError()V

    .line 396
    invoke-static {}, Lo/correctDataPath;->builder()Lo/correctDataPath$ICustomTabsCallback;

    move-result-object v3

    sget-object v4, Lo/correctDataPath$extraCallback;->BAD_CONFIG:Lo/correctDataPath$extraCallback;

    invoke-virtual {v3, v4}, Lo/correctDataPath$ICustomTabsCallback;->setResponseCode(Lo/correctDataPath$extraCallback;)Lo/correctDataPath$ICustomTabsCallback;

    move-result-object v3

    invoke-virtual {v3}, Lo/correctDataPath$ICustomTabsCallback;->build()Lo/correctDataPath;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 386
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {}, Lo/correctDataPath;->builder()Lo/correctDataPath$ICustomTabsCallback;

    move-result-object v3

    sget-object v4, Lo/correctDataPath$extraCallback;->AUTH_ERROR:Lo/correctDataPath$extraCallback;

    invoke-virtual {v3, v4}, Lo/correctDataPath$ICustomTabsCallback;->setResponseCode(Lo/correctDataPath$extraCallback;)Lo/correctDataPath$ICustomTabsCallback;

    move-result-object v3

    invoke-virtual {v3}, Lo/correctDataPath$ICustomTabsCallback;->build()Lo/correctDataPath;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 401
    throw p1

    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 400
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 403
    :cond_5
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const-string p3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, p3, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    throw p1
.end method
