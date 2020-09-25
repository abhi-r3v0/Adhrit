.class public Lo/setCrashlyticsDataCollectionEnabled;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final authTokenProvider:Lo/isAutomaticDataCollectionEnabled;

.field private final clientSdkVersion:Ljava/lang/String;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final logger:Lo/deleteLogFile;

.field private final persistenceEnabled:Z

.field private final sslCacheDirectory:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/deleteLogFile;Lo/isAutomaticDataCollectionEnabled;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/setCrashlyticsDataCollectionEnabled;->logger:Lo/deleteLogFile;

    .line 40
    iput-object p2, p0, Lo/setCrashlyticsDataCollectionEnabled;->authTokenProvider:Lo/isAutomaticDataCollectionEnabled;

    .line 41
    iput-object p3, p0, Lo/setCrashlyticsDataCollectionEnabled;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    iput-boolean p4, p0, Lo/setCrashlyticsDataCollectionEnabled;->persistenceEnabled:Z

    .line 43
    iput-object p5, p0, Lo/setCrashlyticsDataCollectionEnabled;->clientSdkVersion:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lo/setCrashlyticsDataCollectionEnabled;->userAgent:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lo/setCrashlyticsDataCollectionEnabled;->applicationId:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lo/setCrashlyticsDataCollectionEnabled;->sslCacheDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/setCrashlyticsDataCollectionEnabled;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthTokenProvider()Lo/isAutomaticDataCollectionEnabled;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/setCrashlyticsDataCollectionEnabled;->authTokenProvider:Lo/isAutomaticDataCollectionEnabled;

    return-object v0
.end method

.method public getClientSdkVersion()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/setCrashlyticsDataCollectionEnabled;->clientSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/setCrashlyticsDataCollectionEnabled;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getLogger()Lo/deleteLogFile;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/setCrashlyticsDataCollectionEnabled;->logger:Lo/deleteLogFile;

    return-object v0
.end method

.method public getSslCacheDirectory()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/setCrashlyticsDataCollectionEnabled;->sslCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/setCrashlyticsDataCollectionEnabled;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isPersistenceEnabled()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lo/setCrashlyticsDataCollectionEnabled;->persistenceEnabled:Z

    return v0
.end method
