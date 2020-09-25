.class public Lo/access$lambda$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReportJsonTransform$$Lambda$4;


# static fields
.field private static final API_KEY_VALIDATION_MSG:Ljava/lang/String; = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final APP_ID_VALIDATION_MSG:Ljava/lang/String; = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final AUTH_ERROR_MSG:Ljava/lang/String; = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

.field private static final CHIME_FIREBASE_APP_NAME:Ljava/lang/String; = "CHIME_ANDROID_SDK"

.field private static final CORE_POOL_SIZE:I = 0x0

.field private static final KEEP_ALIVE_TIME_IN_SECONDS:J = 0x1eL

.field private static final LOCKFILE_NAME_GENERATE_FID:Ljava/lang/String; = "generatefid.lock"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1

.field private static final PROJECT_ID_VALIDATION_MSG:Ljava/lang/String; = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final lockGenerateFid:Ljava/lang/Object;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private cachedFid:Ljava/lang/String;

.field private final fidGenerator:Lo/CrashlyticsReportJsonTransform$$Lambda$5;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final iidStore:Lo/convert;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CrashlyticsReportJsonTransform$$Lambda$6;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final networkExecutor:Ljava/util/concurrent/ExecutorService;

.field private final persistedInstallation:Lo/parseProcMapsJsonFromStream;

.field private final serviceClient:Lo/createBinaryImageJson;

.field private final utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/access$lambda$6;->lockGenerateFid:Ljava/lang/Object;

    .line 86
    new-instance v0, Lo/access$lambda$6$4;

    invoke-direct {v0}, Lo/access$lambda$6$4;-><init>()V

    sput-object v0, Lo/access$lambda$6;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;)V
    .locals 9

    .line 122
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lo/access$lambda$6;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lo/createBinaryImageJson;

    .line 132
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p2, p3}, Lo/createBinaryImageJson;-><init>(Landroid/content/Context;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;)V

    new-instance v4, Lo/parseProcMapsJsonFromStream;

    invoke-direct {v4, p1}, Lo/parseProcMapsJsonFromStream;-><init>(Lcom/google/firebase/FirebaseApp;)V

    new-instance v5, Lo/CrashlyticsReportJsonTransform$ObjectParser;

    invoke-direct {v5}, Lo/CrashlyticsReportJsonTransform$ObjectParser;-><init>()V

    new-instance v6, Lo/convert;

    invoke-direct {v6, p1}, Lo/convert;-><init>(Lcom/google/firebase/FirebaseApp;)V

    new-instance v7, Lo/CrashlyticsReportJsonTransform$$Lambda$5;

    invoke-direct {v7}, Lo/CrashlyticsReportJsonTransform$$Lambda$5;-><init>()V

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    .line 122
    invoke-direct/range {v0 .. v7}, Lo/access$lambda$6;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/FirebaseApp;Lo/createBinaryImageJson;Lo/parseProcMapsJsonFromStream;Lo/CrashlyticsReportJsonTransform$ObjectParser;Lo/convert;Lo/CrashlyticsReportJsonTransform$$Lambda$5;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/FirebaseApp;Lo/createBinaryImageJson;Lo/parseProcMapsJsonFromStream;Lo/CrashlyticsReportJsonTransform$ObjectParser;Lo/convert;Lo/CrashlyticsReportJsonTransform$$Lambda$5;)V
    .locals 10

    move-object v0, p0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lo/access$lambda$6;->lock:Ljava/lang/Object;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lo/access$lambda$6;->listeners:Ljava/util/List;

    move-object v1, p2

    .line 147
    iput-object v1, v0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    move-object v1, p3

    .line 148
    iput-object v1, v0, Lo/access$lambda$6;->serviceClient:Lo/createBinaryImageJson;

    move-object v1, p4

    .line 149
    iput-object v1, v0, Lo/access$lambda$6;->persistedInstallation:Lo/parseProcMapsJsonFromStream;

    move-object v1, p5

    .line 150
    iput-object v1, v0, Lo/access$lambda$6;->utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;

    move-object/from16 v1, p6

    .line 151
    iput-object v1, v0, Lo/access$lambda$6;->iidStore:Lo/convert;

    move-object/from16 v1, p7

    .line 152
    iput-object v1, v0, Lo/access$lambda$6;->fidGenerator:Lo/CrashlyticsReportJsonTransform$$Lambda$5;

    move-object v1, p1

    .line 153
    iput-object v1, v0, Lo/access$lambda$6;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 154
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lo/access$lambda$6;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, v0, Lo/access$lambda$6;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic access$lambda$0(Lo/access$lambda$6;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lo/access$lambda$6;->deleteFirebaseInstallationId()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/BinaryImagesConverter;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 283
    new-instance v1, Lo/CrashlyticsReportJsonTransform$$Lambda$2;

    iget-object v2, p0, Lo/access$lambda$6;->utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;

    invoke-direct {v1, v2, v0}, Lo/CrashlyticsReportJsonTransform$$Lambda$2;-><init>(Lo/CrashlyticsReportJsonTransform$ObjectParser;Lo/removeBackgroundStateChangeListener;)V

    .line 284
    invoke-direct {p0, v1}, Lo/access$lambda$6;->addStateListeners(Lo/CrashlyticsReportJsonTransform$$Lambda$6;)V

    .line 7014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method

.method private addGetIdListener()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 275
    new-instance v1, Lo/CrashlyticsReportJsonTransform$$Lambda$1;

    invoke-direct {v1, v0}, Lo/CrashlyticsReportJsonTransform$$Lambda$1;-><init>(Lo/removeBackgroundStateChangeListener;)V

    .line 276
    invoke-direct {p0, v1}, Lo/access$lambda$6;->addStateListeners(Lo/CrashlyticsReportJsonTransform$$Lambda$6;)V

    .line 6014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method

.method private addStateListeners(Lo/CrashlyticsReportJsonTransform$$Lambda$6;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lo/access$lambda$6;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lo/access$lambda$6;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private deleteFirebaseInstallationId()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 553
    invoke-direct {p0, v0}, Lo/access$lambda$6;->updateCacheFid(Ljava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lo/access$lambda$6;->getMultiProcessSafePrefs()Lo/jsonFromMapEntryString;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Lo/jsonFromMapEntryString;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lo/access$lambda$6;->serviceClient:Lo/createBinaryImageJson;

    .line 558
    invoke-virtual {p0}, Lo/access$lambda$6;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-virtual {v1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v4

    .line 560
    invoke-virtual {p0}, Lo/access$lambda$6;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 561
    invoke-virtual {v1}, Lo/jsonFromMapEntryString;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    .line 557
    invoke-virtual {v2, v3, v4, v5, v6}, Lo/createBinaryImageJson;->deleteFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    invoke-virtual {v1}, Lo/jsonFromMapEntryString;->withNoGeneratedFid()Lo/jsonFromMapEntryString;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/access$lambda$6;->insertOrUpdatePrefs(Lo/jsonFromMapEntryString;)V

    return-object v0
.end method

.method private doNetworkCallIfNecessary(Z)V
    .locals 2

    .line 354
    invoke-direct {p0}, Lo/access$lambda$6;->getMultiProcessSafePrefs()Lo/jsonFromMapEntryString;

    move-result-object v0

    .line 359
    :try_start_0
    invoke-virtual {v0}, Lo/jsonFromMapEntryString;->isErrored()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lo/jsonFromMapEntryString;->isUnregistered()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    .line 361
    iget-object p1, p0, Lo/access$lambda$6;->utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReportJsonTransform$ObjectParser;->isAuthTokenExpired(Lo/jsonFromMapEntryString;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 362
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lo/access$lambda$6;->fetchAuthTokenFromServer(Lo/jsonFromMapEntryString;)Lo/jsonFromMapEntryString;

    move-result-object p1

    goto :goto_2

    .line 360
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lo/access$lambda$6;->registerFidWithServer(Lo/jsonFromMapEntryString;)Lo/jsonFromMapEntryString;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_2
    invoke-direct {p0, p1}, Lo/access$lambda$6;->insertOrUpdatePrefs(Lo/jsonFromMapEntryString;)V

    .line 376
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/access$lambda$6;->updateCacheFid(Ljava/lang/String;)V

    .line 381
    :cond_4
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isErrored()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    invoke-direct {v0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    invoke-direct {p0, p1, v0}, Lo/access$lambda$6;->triggerOnException(Lo/jsonFromMapEntryString;Ljava/lang/Exception;)V

    return-void

    .line 383
    :cond_5
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isNotGenerated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 386
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lo/access$lambda$6;->triggerOnException(Lo/jsonFromMapEntryString;Ljava/lang/Exception;)V

    return-void

    .line 388
    :cond_6
    invoke-direct {p0, p1}, Lo/access$lambda$6;->triggerOnStateReached(Lo/jsonFromMapEntryString;)V

    return-void

    :catch_0
    move-exception p1

    .line 368
    invoke-direct {p0, v0, p1}, Lo/access$lambda$6;->triggerOnException(Lo/jsonFromMapEntryString;Ljava/lang/Exception;)V

    return-void
.end method

.method private final doRegistrationOrRefresh(Z)V
    .locals 1

    .line 339
    invoke-direct {p0}, Lo/access$lambda$6;->getPrefsWithGeneratedIdMultiProcessSafe()Lo/jsonFromMapEntryString;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {v0}, Lo/jsonFromMapEntryString;->withClearedAuthToken()Lo/jsonFromMapEntryString;

    move-result-object v0

    .line 347
    :cond_0
    invoke-direct {p0, v0}, Lo/access$lambda$6;->triggerOnStateReached(Lo/jsonFromMapEntryString;)V

    .line 350
    iget-object v0, p0, Lo/access$lambda$6;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->lambdaFactory$(Lo/access$lambda$6;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fetchAuthTokenFromServer(Lo/jsonFromMapEntryString;)Lo/jsonFromMapEntryString;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lo/access$lambda$6;->serviceClient:Lo/createBinaryImageJson;

    .line 523
    invoke-virtual {p0}, Lo/access$lambda$6;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-virtual {p0}, Lo/access$lambda$6;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/createBinaryImageJson;->generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/correctDataPath;

    move-result-object v0

    .line 528
    sget-object v1, Lo/getText;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    invoke-virtual {v0}, Lo/correctDataPath;->getResponseCode()Lo/correctDataPath$extraCallback;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 539
    invoke-direct {p0, v0}, Lo/access$lambda$6;->updateCacheFid(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->withNoGeneratedFid()Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1

    .line 542
    :cond_0
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    throw p1

    :cond_1
    const-string v0, "BAD CONFIG"

    .line 535
    invoke-virtual {p1, v0}, Lo/jsonFromMapEntryString;->withFisError(Ljava/lang/String;)Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1

    .line 531
    :cond_2
    invoke-virtual {v0}, Lo/correctDataPath;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v0}, Lo/correctDataPath;->getTokenExpirationTimestamp()J

    move-result-wide v2

    iget-object v0, p0, Lo/access$lambda$6;->utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;

    .line 533
    invoke-virtual {v0}, Lo/CrashlyticsReportJsonTransform$ObjectParser;->currentTimeInSecs()J

    move-result-wide v4

    move-object v0, p1

    .line 530
    invoke-virtual/range {v0 .. v5}, Lo/jsonFromMapEntryString;->withAuthToken(Ljava/lang/String;JJ)Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getCacheFid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lo/access$lambda$6;->cachedFid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lo/access$lambda$6;
    .locals 1

    .line 191
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lo/access$lambda$6;->getInstance(Lcom/google/firebase/FirebaseApp;)Lo/access$lambda$6;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lo/access$lambda$6;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 204
    const-class v0, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/access$lambda$6;

    return-object p0

    .line 5035
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null is not a valid value of FirebaseApp."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getMultiProcessSafePrefs()Lo/jsonFromMapEntryString;
    .locals 3

    .line 575
    sget-object v0, Lo/access$lambda$6;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-object v1, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 577
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lo/access$lambda$2;->acquire(Landroid/content/Context;Ljava/lang/String;)Lo/access$lambda$2;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 579
    :try_start_1
    iget-object v2, p0, Lo/access$lambda$6;->persistedInstallation:Lo/parseProcMapsJsonFromStream;

    .line 580
    invoke-virtual {v2}, Lo/parseProcMapsJsonFromStream;->readPersistedInstallationEntryValue()Lo/jsonFromMapEntryString;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 588
    :try_start_2
    invoke-virtual {v1}, Lo/access$lambda$2;->releaseAndClose()V

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/access$lambda$2;->releaseAndClose()V

    .line 590
    :cond_1
    throw v2

    :catchall_1
    move-exception v1

    .line 591
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private getPrefsWithGeneratedIdMultiProcessSafe()Lo/jsonFromMapEntryString;
    .locals 5

    .line 429
    sget-object v0, Lo/access$lambda$6;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-object v1, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 431
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lo/access$lambda$2;->acquire(Landroid/content/Context;Ljava/lang/String;)Lo/access$lambda$2;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 433
    :try_start_1
    iget-object v2, p0, Lo/access$lambda$6;->persistedInstallation:Lo/parseProcMapsJsonFromStream;

    .line 434
    invoke-virtual {v2}, Lo/parseProcMapsJsonFromStream;->readPersistedInstallationEntryValue()Lo/jsonFromMapEntryString;

    move-result-object v2

    .line 436
    invoke-virtual {v2}, Lo/jsonFromMapEntryString;->isNotGenerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    invoke-direct {p0, v2}, Lo/access$lambda$6;->readExistingIidOrCreateFid(Lo/jsonFromMapEntryString;)Ljava/lang/String;

    move-result-object v3

    .line 443
    iget-object v4, p0, Lo/access$lambda$6;->persistedInstallation:Lo/parseProcMapsJsonFromStream;

    .line 445
    invoke-virtual {v2, v3}, Lo/jsonFromMapEntryString;->withUnregisteredFid(Ljava/lang/String;)Lo/jsonFromMapEntryString;

    move-result-object v2

    .line 444
    invoke-virtual {v4, v2}, Lo/parseProcMapsJsonFromStream;->insertOrUpdatePersistedInstallationEntry(Lo/jsonFromMapEntryString;)Lo/jsonFromMapEntryString;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 454
    :try_start_2
    invoke-virtual {v1}, Lo/access$lambda$2;->releaseAndClose()V

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo/access$lambda$2;->releaseAndClose()V

    .line 456
    :cond_2
    throw v2

    :catchall_1
    move-exception v1

    .line 457
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private insertOrUpdatePrefs(Lo/jsonFromMapEntryString;)V
    .locals 3

    .line 398
    sget-object v0, Lo/access$lambda$6;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object v1, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 400
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lo/access$lambda$2;->acquire(Landroid/content/Context;Ljava/lang/String;)Lo/access$lambda$2;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 403
    :try_start_1
    iget-object v2, p0, Lo/access$lambda$6;->persistedInstallation:Lo/parseProcMapsJsonFromStream;

    invoke-virtual {v2, p1}, Lo/parseProcMapsJsonFromStream;->insertOrUpdatePersistedInstallationEntry(Lo/jsonFromMapEntryString;)Lo/jsonFromMapEntryString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 409
    :try_start_2
    invoke-virtual {v1}, Lo/access$lambda$2;->releaseAndClose()V

    .line 412
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {v1}, Lo/access$lambda$2;->releaseAndClose()V

    .line 411
    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 412
    monitor-exit v0

    throw p1
.end method

.method public static synthetic lambda$doRegistrationOrRefresh$2(Lo/access$lambda$6;Z)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lo/access$lambda$6;->doNetworkCallIfNecessary(Z)V

    return-void
.end method

.method public static synthetic lambda$getId$0(Lo/access$lambda$6;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Lo/access$lambda$6;->doRegistrationOrRefresh(Z)V

    return-void
.end method

.method public static synthetic lambda$getToken$1(Lo/access$lambda$6;Z)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lo/access$lambda$6;->doRegistrationOrRefresh(Z)V

    return-void
.end method

.method private preConditionChecks()V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lo/access$lambda$6;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1007
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    if-nez v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lo/access$lambda$6;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    invoke-virtual {p0}, Lo/access$lambda$6;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 3007
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    if-nez v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lo/access$lambda$6;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/CrashlyticsReportJsonTransform$ObjectParser;->isValidAppIdFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lo/access$lambda$6;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/CrashlyticsReportJsonTransform$ObjectParser;->isValidApiKeyFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4035
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3035
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3008
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2008
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readExistingIidOrCreateFid(Lo/jsonFromMapEntryString;)Ljava/lang/String;
    .locals 2

    .line 462
    iget-object v0, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->shouldAttemptMigration()Z

    move-result p1

    if-nez p1, :cond_2

    .line 464
    :cond_1
    iget-object p1, p0, Lo/access$lambda$6;->fidGenerator:Lo/CrashlyticsReportJsonTransform$$Lambda$5;

    invoke-virtual {p1}, Lo/CrashlyticsReportJsonTransform$$Lambda$5;->createRandomFid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 467
    :cond_2
    iget-object p1, p0, Lo/access$lambda$6;->iidStore:Lo/convert;

    invoke-virtual {p1}, Lo/convert;->readIid()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    iget-object p1, p0, Lo/access$lambda$6;->fidGenerator:Lo/CrashlyticsReportJsonTransform$$Lambda$5;

    invoke-virtual {p1}, Lo/CrashlyticsReportJsonTransform$$Lambda$5;->createRandomFid()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private registerFidWithServer(Lo/jsonFromMapEntryString;)Lo/jsonFromMapEntryString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 481
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lo/access$lambda$6;->iidStore:Lo/convert;

    invoke-virtual {v0}, Lo/convert;->readToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 488
    iget-object v1, p0, Lo/access$lambda$6;->serviceClient:Lo/createBinaryImageJson;

    .line 490
    invoke-virtual {p0}, Lo/access$lambda$6;->getApiKey()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-virtual {p0}, Lo/access$lambda$6;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 493
    invoke-virtual {p0}, Lo/access$lambda$6;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-virtual/range {v1 .. v6}, Lo/createBinaryImageJson;->createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/isRelevant;

    move-result-object v0

    .line 496
    sget-object v1, Lo/getText;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    invoke-virtual {v0}, Lo/isRelevant;->getResponseCode()Lo/isRelevant$onMessageChannelReady;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    const-string v0, "BAD CONFIG"

    .line 505
    invoke-virtual {p1, v0}, Lo/jsonFromMapEntryString;->withFisError(Ljava/lang/String;)Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1

    .line 507
    :cond_1
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$onNavigationEvent;)V

    throw p1

    .line 499
    :cond_2
    invoke-virtual {v0}, Lo/isRelevant;->getFid()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-virtual {v0}, Lo/isRelevant;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lo/access$lambda$6;->utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;

    .line 501
    invoke-virtual {v1}, Lo/CrashlyticsReportJsonTransform$ObjectParser;->currentTimeInSecs()J

    move-result-wide v5

    .line 502
    invoke-virtual {v0}, Lo/isRelevant;->getAuthToken()Lo/correctDataPath;

    move-result-object v1

    invoke-virtual {v1}, Lo/correctDataPath;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 503
    invoke-virtual {v0}, Lo/isRelevant;->getAuthToken()Lo/correctDataPath;

    move-result-object v0

    invoke-virtual {v0}, Lo/correctDataPath;->getTokenExpirationTimestamp()J

    move-result-wide v8

    move-object v2, p1

    .line 498
    invoke-virtual/range {v2 .. v9}, Lo/jsonFromMapEntryString;->withRegisteredFid(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1
.end method

.method private triggerOnException(Lo/jsonFromMapEntryString;Ljava/lang/Exception;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lo/access$lambda$6;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lo/access$lambda$6;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReportJsonTransform$$Lambda$6;

    .line 312
    invoke-interface {v2, p1, p2}, Lo/CrashlyticsReportJsonTransform$$Lambda$6;->onException(Lo/jsonFromMapEntryString;Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 317
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private triggerOnStateReached(Lo/jsonFromMapEntryString;)V
    .locals 3

    .line 295
    iget-object v0, p0, Lo/access$lambda$6;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lo/access$lambda$6;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReportJsonTransform$$Lambda$6;

    .line 299
    invoke-interface {v2, p1}, Lo/CrashlyticsReportJsonTransform$$Lambda$6;->onStateReached(Lo/jsonFromMapEntryString;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 304
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private declared-synchronized updateCacheFid(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 321
    :try_start_0
    iput-object p1, p0, Lo/access$lambda$6;->cachedFid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public delete()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lo/access$lambda$6;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lo/hasSpaceFor;->lambdaFactory$(Lo/access$lambda$6;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method getApiKey()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lo/access$lambda$6;->preConditionChecks()V

    .line 235
    invoke-direct {p0}, Lo/access$lambda$6;->getCacheFid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6001
    new-instance v1, Lo/getProjectId;

    invoke-direct {v1}, Lo/getProjectId;-><init>()V

    .line 6002
    invoke-virtual {v1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v1

    .line 240
    :cond_0
    invoke-direct {p0}, Lo/access$lambda$6;->addGetIdListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lo/access$lambda$6;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lo/LogFileManager$NoopLogStore;->lambdaFactory$(Lo/access$lambda$6;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProjectIdentifier()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lo/access$lambda$6;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/BinaryImagesConverter;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lo/access$lambda$6;->preConditionChecks()V

    .line 257
    invoke-direct {p0}, Lo/access$lambda$6;->addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lo/access$lambda$6;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lo/readHeader;->lambdaFactory$(Lo/access$lambda$6;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
