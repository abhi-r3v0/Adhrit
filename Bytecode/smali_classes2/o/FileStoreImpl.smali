.class public Lo/FileStoreImpl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTIVATE_FILE_NAME:Ljava/lang/String; = "activate"

.field public static final CONNECTION_TIMEOUT_IN_SECONDS:J = 0x3cL

.field public static final DEFAULTS_FILE_NAME:Ljava/lang/String; = "defaults"

.field private static final DEFAULT_CLOCK:Lo/component15;

.field public static final DEFAULT_NAMESPACE:Ljava/lang/String; = "firebase"

.field private static final DEFAULT_RANDOM:Ljava/util/Random;

.field public static final FETCH_FILE_NAME:Ljava/lang/String; = "fetch"

.field private static final FIREBASE_REMOTE_CONFIG_FILE_NAME_PREFIX:Ljava/lang/String; = "frc"

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "settings"


# instance fields
.field private final analyticsConnector:Lo/convertLongToFourByteBuffer;

.field private final appId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private customHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final firebaseAbt:Lo/populatePID;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

.field private final frcNamespaceInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/CrashlyticsReportPersistence$$Lambda$4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1001
    sget-object v0, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 70
    sput-object v0, Lo/FileStoreImpl;->DEFAULT_CLOCK:Lo/component15;

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lo/FileStoreImpl;->DEFAULT_RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/populatePID;Lo/convertLongToFourByteBuffer;)V
    .locals 9

    .line 97
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v7, Lo/asReadOnlyByteBuffer;

    .line 102
    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Lo/asReadOnlyByteBuffer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 95
    invoke-direct/range {v0 .. v8}, Lo/FileStoreImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/populatePID;Lo/convertLongToFourByteBuffer;Lo/asReadOnlyByteBuffer;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/populatePID;Lo/convertLongToFourByteBuffer;Lo/asReadOnlyByteBuffer;Z)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/FileStoreImpl;->frcNamespaceInstances:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/FileStoreImpl;->customHeaders:Ljava/util/Map;

    .line 117
    iput-object p1, p0, Lo/FileStoreImpl;->context:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lo/FileStoreImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 119
    iput-object p3, p0, Lo/FileStoreImpl;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 120
    iput-object p4, p0, Lo/FileStoreImpl;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 121
    iput-object p5, p0, Lo/FileStoreImpl;->firebaseAbt:Lo/populatePID;

    .line 122
    iput-object p6, p0, Lo/FileStoreImpl;->analyticsConnector:Lo/convertLongToFourByteBuffer;

    .line 124
    invoke-virtual {p3}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object p1

    invoke-virtual {p1}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/FileStoreImpl;->appId:Ljava/lang/String;

    if-eqz p8, :cond_0

    .line 131
    invoke-static {p0}, Lo/saveUserMerge$onPostMessage;->lambdaFactory$(Lo/FileStoreImpl;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {p2, p1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 132
    invoke-static {p7}, Lo/saveUserOverwrite$extraCallback;->lambdaFactory$(Lo/asReadOnlyByteBuffer;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {p2, p1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public static getCacheClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "frc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const-string p1, "%s_%s_%s_%s.json"

    .line 219
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p0, p1}, Lo/newOutput;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lo/newOutput;

    move-result-object p0

    .line 222
    invoke-static {p2, p0}, Lo/copyFromUtf8;->getInstance(Ljava/util/concurrent/ExecutorService;Lo/newOutput;)Lo/copyFromUtf8;

    move-result-object p0

    return-object p0
.end method

.method private getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;
    .locals 2

    .line 209
    iget-object v0, p0, Lo/FileStoreImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lo/FileStoreImpl;->appId:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lo/FileStoreImpl;->getCacheClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;

    move-result-object p1

    return-object p1
.end method

.method private getGetHandler(Lo/copyFromUtf8;Lo/copyFromUtf8;)Lo/copyTo;
    .locals 1

    .line 256
    new-instance v0, Lo/copyTo;

    invoke-direct {v0, p1, p2}, Lo/copyTo;-><init>(Lo/copyFromUtf8;Lo/copyFromUtf8;)V

    return-object v0
.end method

.method static getMetadataClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/newCodedBuilder;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "frc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    const-string p2, "settings"

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s"

    .line 262
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 266
    new-instance p1, Lo/newCodedBuilder;

    invoke-direct {p1, p0}, Lo/newCodedBuilder;-><init>(Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private static isAbtSupported(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "firebase"

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lo/FileStoreImpl;->isPrimaryApp(Lcom/google/firebase/FirebaseApp;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isPrimaryApp(Lcom/google/firebase/FirebaseApp;)Z
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method declared-synchronized get(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/populatePID;Ljava/util/concurrent/Executor;Lo/copyFromUtf8;Lo/copyFromUtf8;Lo/copyFromUtf8;Lo/toByteArray;Lo/copyTo;Lo/newCodedBuilder;)Lo/CrashlyticsReportPersistence$$Lambda$4;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v2, v1, Lo/FileStoreImpl;->frcNamespaceInstances:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    new-instance v2, Lo/CrashlyticsReportPersistence$$Lambda$4;

    iget-object v4, v1, Lo/FileStoreImpl;->context:Landroid/content/Context;

    .line 189
    invoke-static/range {p1 .. p2}, Lo/FileStoreImpl;->isAbtSupported(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v7, p4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v7, v3

    :goto_0
    move-object v3, v2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v3 .. v14}, Lo/CrashlyticsReportPersistence$$Lambda$4;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/populatePID;Ljava/util/concurrent/Executor;Lo/copyFromUtf8;Lo/copyFromUtf8;Lo/copyFromUtf8;Lo/toByteArray;Lo/copyTo;Lo/newCodedBuilder;)V

    .line 197
    invoke-virtual {v2}, Lo/CrashlyticsReportPersistence$$Lambda$4;->startLoadingConfigsFromDisk()V

    .line 198
    iget-object v3, v1, Lo/FileStoreImpl;->frcNamespaceInstances:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_1
    iget-object v2, v1, Lo/FileStoreImpl;->frcNamespaceInstances:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReportPersistence$$Lambda$4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lo/CrashlyticsReportPersistence$$Lambda$4;
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v0, "fetch"

    .line 152
    invoke-direct {p0, p1, v0}, Lo/FileStoreImpl;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;

    move-result-object v7

    const-string v0, "activate"

    .line 153
    invoke-direct {p0, p1, v0}, Lo/FileStoreImpl;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;

    move-result-object v8

    const-string v0, "defaults"

    .line 154
    invoke-direct {p0, p1, v0}, Lo/FileStoreImpl;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lo/copyFromUtf8;

    move-result-object v9

    .line 155
    iget-object v0, p0, Lo/FileStoreImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lo/FileStoreImpl;->appId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lo/FileStoreImpl;->getMetadataClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/newCodedBuilder;

    move-result-object v12

    .line 156
    iget-object v2, p0, Lo/FileStoreImpl;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iget-object v4, p0, Lo/FileStoreImpl;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    iget-object v5, p0, Lo/FileStoreImpl;->firebaseAbt:Lo/populatePID;

    iget-object v6, p0, Lo/FileStoreImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 165
    invoke-virtual {p0, p1, v7, v12}, Lo/FileStoreImpl;->getFetchHandler(Ljava/lang/String;Lo/copyFromUtf8;Lo/newCodedBuilder;)Lo/toByteArray;

    move-result-object v10

    .line 166
    invoke-direct {p0, v8, v9}, Lo/FileStoreImpl;->getGetHandler(Lo/copyFromUtf8;Lo/copyFromUtf8;)Lo/copyTo;

    move-result-object v11

    move-object v1, p0

    move-object v3, p1

    .line 156
    invoke-virtual/range {v1 .. v12}, Lo/FileStoreImpl;->get(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/populatePID;Ljava/util/concurrent/Executor;Lo/copyFromUtf8;Lo/copyFromUtf8;Lo/copyFromUtf8;Lo/toByteArray;Lo/copyTo;Lo/newCodedBuilder;)Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDefault()Lo/CrashlyticsReportPersistence$$Lambda$4;
    .locals 1

    const-string v0, "firebase"

    .line 140
    invoke-virtual {p0, v0}, Lo/FileStoreImpl;->get(Ljava/lang/String;)Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getFetchHandler(Ljava/lang/String;Lo/copyFromUtf8;Lo/newCodedBuilder;)Lo/toByteArray;
    .locals 11

    monitor-enter p0

    .line 242
    :try_start_0
    new-instance v10, Lo/toByteArray;

    iget-object v1, p0, Lo/FileStoreImpl;->firebaseInstallations:Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 244
    iget-object v0, p0, Lo/FileStoreImpl;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lo/FileStoreImpl;->isPrimaryApp(Lcom/google/firebase/FirebaseApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FileStoreImpl;->analyticsConnector:Lo/convertLongToFourByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lo/FileStoreImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lo/FileStoreImpl;->DEFAULT_CLOCK:Lo/component15;

    sget-object v5, Lo/FileStoreImpl;->DEFAULT_RANDOM:Ljava/util/Random;

    iget-object v0, p0, Lo/FileStoreImpl;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 249
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3}, Lo/FileStoreImpl;->getFrcBackendApiClient(Ljava/lang/String;Ljava/lang/String;Lo/newCodedBuilder;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    move-result-object v7

    iget-object v9, p0, Lo/FileStoreImpl;->customHeaders:Ljava/util/Map;

    move-object v0, v10

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lo/toByteArray;-><init>(Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/convertLongToFourByteBuffer;Ljava/util/concurrent/Executor;Lo/component15;Ljava/util/Random;Lo/copyFromUtf8;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lo/newCodedBuilder;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-object v10

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFrcBackendApiClient(Ljava/lang/String;Ljava/lang/String;Lo/newCodedBuilder;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;
    .locals 10

    .line 229
    iget-object v0, p0, Lo/FileStoreImpl;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 230
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    iget-object v2, p0, Lo/FileStoreImpl;->context:Landroid/content/Context;

    .line 235
    invoke-virtual {p3}, Lo/newCodedBuilder;->getFetchTimeoutInSeconds()J

    move-result-wide v6

    .line 236
    invoke-virtual {p3}, Lo/newCodedBuilder;->getFetchTimeoutInSeconds()J

    move-result-wide v8

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public declared-synchronized setCustomHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 205
    :try_start_0
    iput-object p1, p0, Lo/FileStoreImpl;->customHeaders:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
