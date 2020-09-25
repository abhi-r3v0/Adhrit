.class public Lo/CrashlyticsReportPersistence$$Lambda$4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_VALUE_FOR_BOOLEAN:Z = false

.field public static final DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

.field public static final DEFAULT_VALUE_FOR_DOUBLE:D = 0.0

.field public static final DEFAULT_VALUE_FOR_LONG:J = 0x0L

.field public static final DEFAULT_VALUE_FOR_STRING:Ljava/lang/String; = ""

.field public static final LAST_FETCH_STATUS_FAILURE:I = 0x1

.field public static final LAST_FETCH_STATUS_NO_FETCH_YET:I = 0x0

.field public static final LAST_FETCH_STATUS_SUCCESS:I = -0x1

.field public static final LAST_FETCH_STATUS_THROTTLED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FirebaseRemoteConfig"

.field public static final VALUE_SOURCE_DEFAULT:I = 0x1

.field public static final VALUE_SOURCE_REMOTE:I = 0x2

.field public static final VALUE_SOURCE_STATIC:I


# instance fields
.field private final activatedConfigsCache:Lo/copyFromUtf8;

.field private final context:Landroid/content/Context;

.field private final defaultConfigsCache:Lo/copyFromUtf8;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fetchHandler:Lo/toByteArray;

.field private final fetchedConfigsCache:Lo/copyFromUtf8;

.field private final firebaseAbt:Lo/populatePID;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

.field private final frcMetadata:Lo/newCodedBuilder;

.field private final getHandler:Lo/copyTo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 102
    sput-object v0, Lo/CrashlyticsReportPersistence$$Lambda$4;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/populatePID;Ljava/util/concurrent/Executor;Lo/copyFromUtf8;Lo/copyFromUtf8;Lo/copyFromUtf8;Lo/toByteArray;Lo/copyTo;Lo/newCodedBuilder;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->context:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 175
    iput-object p3, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 176
    iput-object p4, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->firebaseAbt:Lo/populatePID;

    .line 177
    iput-object p5, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    .line 178
    iput-object p6, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchedConfigsCache:Lo/copyFromUtf8;

    .line 179
    iput-object p7, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->activatedConfigsCache:Lo/copyFromUtf8;

    .line 180
    iput-object p8, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->defaultConfigsCache:Lo/copyFromUtf8;

    .line 181
    iput-object p9, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchHandler:Lo/toByteArray;

    .line 182
    iput-object p10, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    .line 183
    iput-object p11, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->frcMetadata:Lo/newCodedBuilder;

    return-void
.end method

.method public static synthetic access$lambda$0(Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/android/gms/tasks/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->processActivatePutTask(Lcom/google/android/gms/tasks/Task;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lo/CrashlyticsReportPersistence$$Lambda$4;
    .locals 1

    .line 81
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->getInstance(Lcom/google/firebase/FirebaseApp;)Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lo/CrashlyticsReportPersistence$$Lambda$4;
    .locals 1

    .line 87
    const-class v0, Lo/FileStoreImpl;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/FileStoreImpl;

    invoke-virtual {p0}, Lo/FileStoreImpl;->getDefault()Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object p0

    return-object p0
.end method

.method private static isFetchedFresh(Lo/ByteString;Lo/ByteString;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 787
    invoke-virtual {p0}, Lo/ByteString;->getFetchTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Lo/ByteString;->getFetchTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$activate$3(Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ByteString;

    .line 284
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 285
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ByteString;

    .line 286
    invoke-static {p1, p2}, Lo/CrashlyticsReportPersistence$$Lambda$4;->isFetchedFresh(Lo/ByteString;Lo/ByteString;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 287
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    .line 6002
    invoke-virtual {p1, p0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1

    .line 291
    :cond_1
    iget-object p2, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->activatedConfigsCache:Lo/copyFromUtf8;

    .line 292
    invoke-virtual {p2, p1}, Lo/copyFromUtf8;->put(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/writeCachedSettings$ICustomTabsCallback;->lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Lo/isDefaultApp;

    move-result-object p0

    .line 293
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 279
    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    .line 5002
    invoke-virtual {p1, p0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic lambda$activateFetched$2(Lo/CrashlyticsReportPersistence$$Lambda$4;Lo/ByteString;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->clear()V

    .line 256
    invoke-virtual {p1}, Lo/ByteString;->getAbtExperiments()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->updateAbtWithActivatedExperiments(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic lambda$ensureInitialized$0(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lo/getFilesDirPath;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getFilesDirPath;

    return-object p0
.end method

.method static synthetic lambda$fetch$4(Lo/toByteArray$ICustomTabsCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4001
    new-instance p0, Lo/getProjectId;

    invoke-direct {p0}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 4002
    invoke-virtual {p0, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic lambda$fetch$5(Lo/toByteArray$ICustomTabsCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3001
    new-instance p0, Lo/getProjectId;

    invoke-direct {p0}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 3002
    invoke-virtual {p0, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic lambda$fetchAndActivate$1(Lo/CrashlyticsReportPersistence$$Lambda$4;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->activate()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$reset$7(Lo/CrashlyticsReportPersistence$$Lambda$4;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->clear()V

    .line 648
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->clear()V

    .line 649
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->clear()V

    .line 650
    iget-object p0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p0}, Lo/newCodedBuilder;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$setConfigSettingsAsync$6(Lo/CrashlyticsReportPersistence$$Lambda$4;Lo/CrashlyticsReportPersistence$$Lambda$6;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 537
    iget-object p0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {p0, p1}, Lo/newCodedBuilder;->setConfigSettings(Lo/CrashlyticsReportPersistence$$Lambda$6;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setDefaultsWithStringsMapAsync$8(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2001
    new-instance p0, Lo/getProjectId;

    invoke-direct {p0}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 2002
    invoke-virtual {p0, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p0
.end method

.method private processActivatePutTask(Lcom/google/android/gms/tasks/Task;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/ByteString;",
            ">;)Z"
        }
    .end annotation

    .line 675
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->clear()V

    .line 681
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ByteString;

    invoke-virtual {p1}, Lo/ByteString;->getAbtExperiments()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->updateAbtWithActivatedExperiments(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_0
    const-string p1, "FirebaseRemoteConfig"

    const-string v0, "Activated configs written to disk are null."

    .line 685
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setDefaultsWithStringsMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 699
    :try_start_0
    invoke-static {}, Lo/ByteString;->newBuilder()Lo/ByteString$onPostMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ByteString$onPostMessage;->replaceConfigsWith(Ljava/util/Map;)Lo/ByteString$onPostMessage;

    move-result-object p1

    invoke-virtual {p1}, Lo/ByteString$onPostMessage;->build()Lo/ByteString;

    move-result-object p1

    .line 700
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0, p1}, Lo/copyFromUtf8;->putWithoutWaitingForDiskWrite(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "The provided defaults map could not be processed."

    .line 702
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private setDefaultsWithStringsMapAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 715
    :try_start_0
    invoke-static {}, Lo/ByteString;->newBuilder()Lo/ByteString$onPostMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ByteString$onPostMessage;->replaceConfigsWith(Ljava/util/Map;)Lo/ByteString$onPostMessage;

    move-result-object p1

    invoke-virtual {p1}, Lo/ByteString$onPostMessage;->build()Lo/ByteString;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0, p1}, Lo/copyFromUtf8;->put(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 723
    invoke-static {}, Lo/CrashlyticsReportPersistence$$Lambda$1;->lambdaFactory$()Lo/getPersistenceKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "The provided defaults map could not be processed."

    .line 717
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    new-instance p1, Lo/getProjectId;

    invoke-direct {p1}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 1002
    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p1
.end method

.method static toExperimentInfoMaps(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 769
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 770
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 772
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 773
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 774
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 775
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 776
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 779
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public activate()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v1}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/tasks/Task;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 274
    invoke-static {v2}, Lo/clearInstancesForTest;->onPostMessage([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iget-object v3, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, v1}, Lo/endAt;->lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lo/isDefaultApp;

    move-result-object v0

    .line 275
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public activateFetched()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->getBlocking()Lo/ByteString;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 243
    :cond_0
    iget-object v2, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v2}, Lo/copyFromUtf8;->getBlocking()Lo/ByteString;

    move-result-object v2

    .line 244
    invoke-static {v0, v2}, Lo/CrashlyticsReportPersistence$$Lambda$4;->isFetchedFresh(Lo/ByteString;Lo/ByteString;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 250
    :cond_1
    iget-object v1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->activatedConfigsCache:Lo/copyFromUtf8;

    .line 251
    invoke-virtual {v1, v0}, Lo/copyFromUtf8;->putWithoutWaitingForDiskWrite(Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/serializeSessionOs;->lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Lo/addLifecycleEventListener;

    move-result-object v2

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    const/4 v0, 0x1

    return v0
.end method

.method public ensureInitialized()Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/getFilesDirPath;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v1}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v2}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 195
    iget-object v3, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/writeCachedSettings$extraCallback;->lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-static {v3, v4}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 196
    iget-object v4, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    invoke-interface {v4}, Lo/CrashlyticsReportJsonTransform$$Lambda$4;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    .line 197
    iget-object v5, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lo/CrashlyticsReportJsonTransform$$Lambda$4;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/google/android/gms/tasks/Task;

    aput-object v0, v7, v6

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 199
    invoke-static {v7}, Lo/clearInstancesForTest;->onPostMessage([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v3}, Lo/writeCachedSettings$onMessageChannelReady;->lambdaFactory$(Lcom/google/android/gms/tasks/Task;)Lo/isDefaultApp;

    move-result-object v2

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchHandler:Lo/toByteArray;

    invoke-virtual {v0}, Lo/toByteArray;->fetch()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 322
    invoke-static {}, Lo/CrashlyticsReportPersistence$$Lambda$3;->lambdaFactory$()Lo/getPersistenceKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetch(J)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchHandler:Lo/toByteArray;

    invoke-virtual {v0, p1, p2}, Lo/toByteArray;->fetch(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 349
    invoke-static {}, Lo/CrashlyticsReportPersistence$$Lambda$5;->lambdaFactory$()Lo/getPersistenceKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public fetchAndActivate()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetch()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/RemoveRepeatsStrategy;->lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Lo/getPersistenceKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/FileStore;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    invoke-virtual {v0}, Lo/copyTo;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 394
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    invoke-virtual {v0, p1}, Lo/copyTo;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    invoke-virtual {v0, p1}, Lo/copyTo;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 437
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    invoke-virtual {v0, p1}, Lo/copyTo;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInfo()Lo/getFilesDirPath;
    .locals 1

    .line 513
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {v0}, Lo/newCodedBuilder;->getInfo()Lo/getFilesDirPath;

    move-result-object v0

    return-object v0
.end method

.method public getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    invoke-virtual {v0, p1}, Lo/copyTo;->getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 458
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    invoke-virtual {v0, p1}, Lo/copyTo;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    invoke-virtual {v0, p1}, Lo/copyTo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Lo/FileStore;
    .locals 1

    .line 478
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->getHandler:Lo/copyTo;

    invoke-virtual {v0, p1}, Lo/copyTo;->getValue(Ljava/lang/String;)Lo/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public reset()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/getSpec$ICustomTabsCallback;->lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setConfigSettings(Lo/CrashlyticsReportPersistence$$Lambda$6;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->frcMetadata:Lo/newCodedBuilder;

    invoke-virtual {v0, p1}, Lo/newCodedBuilder;->setConfigSettingsWithoutWaitingOnDiskWrite(Lo/CrashlyticsReportPersistence$$Lambda$6;)V

    return-void
.end method

.method public setConfigSettingsAsync(Lo/CrashlyticsReportPersistence$$Lambda$6;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportPersistence$$Lambda$6;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lo/doTransaction$4;->lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;Lo/CrashlyticsReportPersistence$$Lambda$6;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {v0, p1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setDefaults(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/toStringMap$onTransact;->getDefaultsFromXml(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p1

    .line 619
    invoke-direct {p0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->setDefaultsWithStringsMap(Ljava/util/Map;)V

    return-void
.end method

.method public setDefaults(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 565
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 566
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 567
    instance-of v3, v2, [B

    if-eqz v3, :cond_0

    .line 568
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    check-cast v2, [B

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 570
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 574
    :cond_1
    invoke-direct {p0, v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->setDefaultsWithStringsMap(Ljava/util/Map;)V

    return-void
.end method

.method public setDefaultsAsync(I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/toStringMap$onTransact;->getDefaultsFromXml(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p1

    .line 631
    invoke-direct {p0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->setDefaultsWithStringsMapAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultsAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 597
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 598
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 599
    instance-of v3, v2, [B

    if-eqz v3, :cond_0

    .line 600
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    check-cast v2, [B

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 602
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 606
    :cond_1
    invoke-direct {p0, v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->setDefaultsWithStringsMapAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method startLoadingConfigsFromDisk()V
    .locals 1

    .line 661
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    .line 662
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    .line 663
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchedConfigsCache:Lo/copyFromUtf8;

    invoke-virtual {v0}, Lo/copyFromUtf8;->get()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method updateAbtWithActivatedExperiments(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "FirebaseRemoteConfig"

    .line 735
    iget-object v1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->firebaseAbt:Lo/populatePID;

    if-nez v1, :cond_0

    return-void

    .line 743
    :cond_0
    :try_start_0
    invoke-static {p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->toExperimentInfoMaps(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 744
    iget-object v1, p0, Lo/CrashlyticsReportPersistence$$Lambda$4;->firebaseAbt:Lo/populatePID;

    invoke-virtual {v1, p1}, Lo/populatePID;->replaceAllExperiments(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/abt/AbtException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "Could not update ABT experiments."

    .line 750
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception p1

    const-string v1, "Could not parse ABT experiments from the JSON response."

    .line 746
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
