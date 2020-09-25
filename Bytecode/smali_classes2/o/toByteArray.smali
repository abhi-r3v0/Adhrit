.class public Lo/toByteArray;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/toByteArray$ICustomTabsCallback;
    }
.end annotation


# static fields
.field static final BACKOFF_TIME_DURATIONS_IN_MINUTES:[I

.field public static final DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

.field static final HTTP_TOO_MANY_REQUESTS:I = 0x1ad


# instance fields
.field private final analyticsConnector:Lo/convertLongToFourByteBuffer;

.field private final clock:Lo/component15;

.field private final customHttpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fetchedConfigsCache:Lo/copyFromUtf8;

.field private final firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

.field private final frcBackendApiClient:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

.field private final frcMetadata:Lo/newCodedBuilder;

.field private final randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lo/toByteArray;->DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 72
    fill-array-data v0, :array_0

    sput-object v0, Lo/toByteArray;->BACKOFF_TIME_DURATIONS_IN_MINUTES:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/convertLongToFourByteBuffer;Ljava/util/concurrent/Executor;Lo/component15;Ljava/util/Random;Lo/copyFromUtf8;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lo/newCodedBuilder;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportJsonTransform$$Lambda$4;",
            "Lo/convertLongToFourByteBuffer;",
            "Ljava/util/concurrent/Executor;",
            "Lo/component15;",
            "Ljava/util/Random;",
            "Lo/copyFromUtf8;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;",
            "Lo/newCodedBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lo/toByteArray;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 105
    iput-object p2, p0, Lo/toByteArray;->analyticsConnector:Lo/convertLongToFourByteBuffer;

    .line 106
    iput-object p3, p0, Lo/toByteArray;->executor:Ljava/util/concurrent/Executor;

    .line 107
    iput-object p4, p0, Lo/toByteArray;->clock:Lo/component15;

    .line 108
    iput-object p5, p0, Lo/toByteArray;->randomGenerator:Ljava/util/Random;

    .line 109
    iput-object p6, p0, Lo/toByteArray;->fetchedConfigsCache:Lo/copyFromUtf8;

    .line 110
    iput-object p7, p0, Lo/toByteArray;->frcBackendApiClient:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 111
    iput-object p8, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    .line 113
    iput-object p9, p0, Lo/toByteArray;->customHttpHeaders:Ljava/util/Map;

    return-void
.end method

.method private areCachedFetchConfigsValid(JLjava/util/Date;)Z
    .locals 4

    .line 234
    iget-object v0, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {v0}, Lo/newCodedBuilder;->getLastSuccessfulFetchTime()Ljava/util/Date;

    move-result-object v0

    .line 237
    sget-object v1, Lo/newCodedBuilder;->LAST_FETCH_TIME_NO_FETCH_YET:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 241
    :cond_0
    new-instance v1, Ljava/util/Date;

    .line 242
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 244
    invoke-virtual {p3, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method private createExceptionWithGenericMessage(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_3

    const/16 v1, 0x193

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v0, "The server returned an unexpected error."

    goto :goto_0

    :pswitch_0
    const-string v0, "The server is unavailable. Please try again later."

    goto :goto_0

    :cond_0
    const-string v0, "There was an internal server error."

    goto :goto_0

    .line 373
    :cond_1
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string v0, "The throttled response from the server was not handled correctly by the FRC SDK."

    invoke-direct {p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v0, "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project."

    goto :goto_0

    :cond_3
    const-string v0, "The request did not have the required credentials. Please make sure your google-services.json is valid."

    .line 380
    :goto_0
    new-instance v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    .line 381
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->getHttpStatusCode()I

    move-result v2

    const-string v3, "Fetch failed: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createThrottledMessage(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 267
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 269
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "Fetch is throttled. Please wait before calling fetch again: %s"

    .line 267
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fetchFromBackend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lo/toByteArray$ICustomTabsCallback;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;
        }
    .end annotation

    .line 305
    :try_start_0
    iget-object v0, p0, Lo/toByteArray;->frcBackendApiClient:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->createHttpURLConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 307
    iget-object v1, p0, Lo/toByteArray;->frcBackendApiClient:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 312
    invoke-direct {p0}, Lo/toByteArray;->getUserProperties()Ljava/util/Map;

    move-result-object v5

    iget-object v0, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    .line 313
    invoke-virtual {v0}, Lo/newCodedBuilder;->getLastFetchETag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lo/toByteArray;->customHttpHeaders:Ljava/util/Map;

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    .line 308
    invoke-virtual/range {v1 .. v8}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->fetch(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)Lo/toByteArray$ICustomTabsCallback;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lo/toByteArray$ICustomTabsCallback;->getLastFetchETag()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 318
    iget-object p2, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p1}, Lo/toByteArray$ICustomTabsCallback;->getLastFetchETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/newCodedBuilder;->setLastFetchETag(Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object p2, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p2}, Lo/newCodedBuilder;->resetBackoff()V
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 327
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->getHttpStatusCode()I

    move-result p2

    invoke-direct {p0, p2, p3}, Lo/toByteArray;->updateAndReturnBackoffMetadata(ILjava/util/Date;)Lo/newCodedBuilder$onNavigationEvent;

    move-result-object p2

    .line 329
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->getHttpStatusCode()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lo/toByteArray;->shouldThrottle(Lo/newCodedBuilder$onNavigationEvent;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 330
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    .line 331
    invoke-virtual {p2}, Lo/newCodedBuilder$onNavigationEvent;->getBackoffEndTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;-><init>(J)V

    throw p1

    .line 334
    :cond_1
    invoke-direct {p0, p1}, Lo/toByteArray;->createExceptionWithGenericMessage(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    move-result-object p1

    throw p1
.end method

.method private fetchFromBackendAndCacheResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/toByteArray$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 279
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lo/toByteArray;->fetchFromBackend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lo/toByteArray$ICustomTabsCallback;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lo/toByteArray$ICustomTabsCallback;->getStatus()I

    move-result p2

    if-eqz p2, :cond_0

    .line 2001
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 2002
    invoke-virtual {p2, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p2

    .line 283
    :cond_0
    iget-object p2, p0, Lo/toByteArray;->fetchedConfigsCache:Lo/copyFromUtf8;

    .line 284
    invoke-virtual {p1}, Lo/toByteArray$ICustomTabsCallback;->getFetchedConfigs()Lo/ByteString;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/copyFromUtf8;->put(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iget-object p3, p0, Lo/toByteArray;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lo/serializeObject$extraCallback;->lambdaFactory$(Lo/toByteArray$ICustomTabsCallback;)Lo/getPersistenceKey;

    move-result-object p1

    .line 285
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 2005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p2
.end method

.method private fetchIfCacheExpiredAndNotThrottled(Lcom/google/android/gms/tasks/Task;J)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/ByteString;",
            ">;J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/toByteArray$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lo/toByteArray;->clock:Lo/component15;

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 174
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0, p2, p3, v0}, Lo/toByteArray;->areCachedFetchConfigsValid(JLjava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-static {v0}, Lo/toByteArray$ICustomTabsCallback;->forLocalStorageUsed(Ljava/util/Date;)Lo/toByteArray$ICustomTabsCallback;

    move-result-object p1

    .line 1001
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 1002
    invoke-virtual {p2, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p2

    .line 182
    :cond_0
    invoke-direct {p0, v0}, Lo/toByteArray;->getBackoffEndTimeInMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 186
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    .line 189
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lo/toByteArray;->createThrottledMessage(J)Ljava/lang/String;

    move-result-object p3

    .line 190
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p2, p3, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;-><init>(Ljava/lang/String;J)V

    .line 1004
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    .line 1005
    invoke-virtual {p1, p2}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lo/toByteArray;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    invoke-interface {p1}, Lo/CrashlyticsReportJsonTransform$$Lambda$4;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lo/toByteArray;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    const/4 p3, 0x0

    .line 194
    invoke-interface {p2, p3}, Lo/CrashlyticsReportJsonTransform$$Lambda$4;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/tasks/Task;

    aput-object p1, v1, p3

    const/4 p3, 0x1

    aput-object p2, v1, p3

    .line 196
    invoke-static {v1}, Lo/clearInstancesForTest;->onPostMessage([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    iget-object v1, p0, Lo/toByteArray;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p2, v0}, Lo/saveNested;->lambdaFactory$(Lo/toByteArray;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/util/Date;)Lo/isDefaultApp;

    move-result-object p1

    .line 197
    invoke-virtual {p3, v1, p1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 221
    :goto_0
    iget-object p2, p0, Lo/toByteArray;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lo/serializeObject$onMessageChannelReady;->lambdaFactory$(Lo/toByteArray;Ljava/util/Date;)Lo/isDefaultApp;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private getBackoffEndTimeInMillis(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 254
    iget-object v0, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {v0}, Lo/newCodedBuilder;->getBackoffMetadata()Lo/newCodedBuilder$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lo/newCodedBuilder$onNavigationEvent;->getBackoffEndTime()Ljava/util/Date;

    move-result-object v0

    .line 255
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRandomizedBackoffDurationInMillis(I)J
    .locals 4

    .line 441
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lo/toByteArray;->BACKOFF_TIME_DURATIONS_IN_MINUTES:[I

    array-length v2, v1

    .line 444
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    int-to-long v1, p1

    .line 442
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    .line 447
    div-long v2, v0, v2

    iget-object p1, p0, Lo/toByteArray;->randomGenerator:Ljava/util/Random;

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long v0, p1

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private getUserProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 502
    iget-object v1, p0, Lo/toByteArray;->analyticsConnector:Lo/convertLongToFourByteBuffer;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 507
    invoke-interface {v1, v2}, Lo/convertLongToFourByteBuffer;->getUserProperties(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 508
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isThrottleableServerError(I)Z
    .locals 1

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$fetch$0(Lo/toByteArray;JLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-direct {p0, p3, p1, p2}, Lo/toByteArray;->fetchIfCacheExpiredAndNotThrottled(Lcom/google/android/gms/tasks/Task;J)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$fetchFromBackendAndCacheResponse$3(Lo/toByteArray$ICustomTabsCallback;Lo/ByteString;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    .line 3002
    invoke-virtual {p1, p0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic lambda$fetchIfCacheExpiredAndNotThrottled$1(Lo/toByteArray;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/util/Date;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p4

    if-nez p4, :cond_0

    .line 201
    new-instance p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 204
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    const-string p2, "Firebase Installations failed to get installation ID for fetch."

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3004
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    .line 3005
    invoke-virtual {p1, p0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p1

    .line 207
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p4

    if-nez p4, :cond_1

    .line 208
    new-instance p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 211
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    const-string p2, "Firebase Installations failed to get installation auth token for fetch."

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4004
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    .line 4005
    invoke-virtual {p1, p0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object p1

    .line 214
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 215
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/BinaryImagesConverter;

    invoke-virtual {p2}, Lo/BinaryImagesConverter;->getToken()Ljava/lang/String;

    move-result-object p2

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lo/toByteArray;->fetchFromBackendAndCacheResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$fetchIfCacheExpiredAndNotThrottled$2(Lo/toByteArray;Ljava/util/Date;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-direct {p0, p2, p1}, Lo/toByteArray;->updateLastFetchStatusAndTime(Lcom/google/android/gms/tasks/Task;Ljava/util/Date;)V

    return-object p2
.end method

.method private shouldThrottle(Lo/newCodedBuilder$onNavigationEvent;I)Z
    .locals 1

    .line 468
    invoke-virtual {p1}, Lo/newCodedBuilder$onNavigationEvent;->getNumFailedFetches()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private updateAndReturnBackoffMetadata(ILjava/util/Date;)Lo/newCodedBuilder$onNavigationEvent;
    .locals 0

    .line 397
    invoke-direct {p0, p1}, Lo/toByteArray;->isThrottleableServerError(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    invoke-direct {p0, p2}, Lo/toByteArray;->updateBackoffMetadataWithLastFailedFetchTime(Ljava/util/Date;)V

    .line 400
    :cond_0
    iget-object p1, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p1}, Lo/newCodedBuilder;->getBackoffMetadata()Lo/newCodedBuilder$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method private updateBackoffMetadataWithLastFailedFetchTime(Ljava/util/Date;)V
    .locals 6

    .line 424
    iget-object v0, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {v0}, Lo/newCodedBuilder;->getBackoffMetadata()Lo/newCodedBuilder$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lo/newCodedBuilder$onNavigationEvent;->getNumFailedFetches()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 428
    invoke-direct {p0, v0}, Lo/toByteArray;->getRandomizedBackoffDurationInMillis(I)J

    move-result-wide v1

    .line 429
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 431
    iget-object p1, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p1, v0, v3}, Lo/newCodedBuilder;->setBackoffMetadata(ILjava/util/Date;)V

    return-void
.end method

.method private updateLastFetchStatusAndTime(Lcom/google/android/gms/tasks/Task;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/toByteArray$ICustomTabsCallback;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 477
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object p1, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p1, p2}, Lo/newCodedBuilder;->updateLastFetchAsSuccessfulAt(Ljava/util/Date;)V

    return-void

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 488
    :cond_1
    instance-of p1, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    if-eqz p1, :cond_2

    .line 489
    iget-object p1, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p1}, Lo/newCodedBuilder;->updateLastFetchAsThrottled()V

    return-void

    .line 491
    :cond_2
    iget-object p1, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p1}, Lo/newCodedBuilder;->updateLastFetchAsFailed()V

    return-void
.end method


# virtual methods
.method public fetch()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/toByteArray$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {v0}, Lo/newCodedBuilder;->getMinimumFetchIntervalInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/toByteArray;->fetch(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetch(J)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/toByteArray$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lo/toByteArray;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {v0}, Lo/newCodedBuilder;->isDeveloperModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    .line 156
    :cond_0
    iget-object v0, p0, Lo/toByteArray;->fetchedConfigsCache:Lo/copyFromUtf8;

    .line 157
    invoke-virtual {v0}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lo/toByteArray;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p2}, Lo/saveTrackedQuery;->lambdaFactory$(Lo/toByteArray;J)Lo/isDefaultApp;

    move-result-object p1

    .line 158
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getAnalyticsConnector()Lo/convertLongToFourByteBuffer;
    .locals 1

    .line 517
    iget-object v0, p0, Lo/toByteArray;->analyticsConnector:Lo/convertLongToFourByteBuffer;

    return-object v0
.end method
