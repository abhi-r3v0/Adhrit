.class public abstract Lin/juspay/hypersdk/core/JuspayServices;
.super Ljava/lang/Object;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dynamicUI:Lin/juspay/mystique/DynamicUI;

.field private errorCallback:Lin/juspay/mystique/ErrorCallback;

.field private fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

.field private remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

.field private final sdkInfo:Lin/juspay/hypersdk/data/SdkInfo;

.field private sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

.field private sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lin/juspay/hypersdk/core/JuspayServices;-><init>(Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;Lin/juspay/mystique/ErrorCallback;)V

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;Lin/juspay/mystique/ErrorCallback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lin/juspay/hypersdk/core/JuspayServices;-><init>(Landroid/content/Context;Lin/juspay/hypersdk/data/SdkInfo;Lin/juspay/mystique/ErrorCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lin/juspay/hypersdk/data/SdkInfo;Lin/juspay/mystique/ErrorCallback;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->LOG_TAG:Ljava/lang/String;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->sdkInfo:Lin/juspay/hypersdk/data/SdkInfo;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JuspayServices;->errorCallback:Lin/juspay/mystique/ErrorCallback;

    iput-object p1, p0, Lin/juspay/hypersdk/core/JuspayServices;->context:Landroid/content/Context;

    if-nez p3, :cond_0

    new-instance p2, Lin/juspay/hypersdk/core/JuspayServices$1;

    invoke-direct {p2, p0}, Lin/juspay/hypersdk/core/JuspayServices$1;-><init>(Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->errorCallback:Lin/juspay/mystique/ErrorCallback;

    :cond_0
    new-instance p2, Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p2, p0}, Lin/juspay/hypersdk/core/SdkTracker;-><init>(Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    new-instance p2, Lin/juspay/hypersdk/data/SessionInfo;

    invoke-direct {p2, p0, p4}, Lin/juspay/hypersdk/data/SessionInfo;-><init>(Lin/juspay/hypersdk/core/JuspayServices;Z)V

    iput-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    new-instance p2, Lin/juspay/hypersdk/services/FileProviderService;

    invoke-direct {p2, p0}, Lin/juspay/hypersdk/services/FileProviderService;-><init>(Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

    new-instance p2, Lin/juspay/hypersdk/services/RemoteAssetService;

    invoke-direct {p2, p0}, Lin/juspay/hypersdk/services/RemoteAssetService;-><init>(Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    iget-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {p2}, Lin/juspay/hypersdk/data/SessionInfo;->createSessionDataMap()V

    iget-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {p2}, Lin/juspay/hypersdk/data/SessionInfo;->logSessionInfo()V

    iget-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {p2}, Lin/juspay/hypersdk/data/SessionInfo;->logDeviceIdentifiers()V

    iget-object p2, p0, Lin/juspay/hypersdk/core/JuspayServices;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0, p2, p1}, Lin/juspay/hypersdk/core/JuspayServices;->logMemoryInfo(Lin/juspay/hypersdk/core/SdkTracker;Landroid/content/Context;)V

    return-void
.end method

.method private logMemoryInfo(Lin/juspay/hypersdk/core/SdkTracker;Landroid/content/Context;)V
    .locals 7

    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "available_memory"

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v6, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "threshold_memory"

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v6, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p2, v1, :cond_0

    const-string p2, "total_memory"

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v6, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "device"

    const-string v3, "info"

    const-string v4, "memory"

    const-string v5, "memory_info"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    move-object v6, p2

    iget-object v1, p0, Lin/juspay/hypersdk/core/JuspayServices;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "session_info"

    const-string v5, "Exception while logging memory_info"

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/mystique/DynamicUI;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    iput-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->context:Landroid/content/Context;

    return-void
.end method

.method public abstract getContainer()Landroid/widget/FrameLayout;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDynamicUI()Lin/juspay/mystique/DynamicUI;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    return-object v0
.end method

.method public getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

    return-object v0
.end method

.method public getRemoteAssetService()Lin/juspay/hypersdk/services/RemoteAssetService;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    return-object v0
.end method

.method public final getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->sdkInfo:Lin/juspay/hypersdk/data/SdkInfo;

    return-object v0
.end method

.method public getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    return-object v0
.end method

.method public getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    return-object v0
.end method

.method public abstract getWhiteListedUrls()[Ljava/lang/String;
.end method

.method public sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->sdkInfo:Lin/juspay/hypersdk/data/SdkInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->isSdkDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->sdkInfo:Lin/juspay/hypersdk/data/SdkInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->sdkInfo:Lin/juspay/hypersdk/data/SdkInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkVersion"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/data/SessionInfo;->setBundleParams(Lorg/json/JSONObject;)V

    new-instance p1, Lin/juspay/mystique/DynamicUI;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JuspayServices;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JuspayServices;->getWhiteListedUrls()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lin/juspay/hypersdk/core/JuspayServices;->errorCallback:Lin/juspay/mystique/ErrorCallback;

    invoke-direct {p1, v0, v1, v2, v3}, Lin/juspay/mystique/DynamicUI;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;[Ljava/lang/String;Lin/juspay/mystique/ErrorCallback;)V

    iput-object p1, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SDK already running"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lin/juspay/hypersdk/core/JuspayServices;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->setActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JuspayServices;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lin/juspay/mystique/DynamicUI;->setContainer(Landroid/widget/FrameLayout;)V

    return-void

    :cond_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/mystique/DynamicUI;->resetActivity()V

    iget-object p1, p0, Lin/juspay/hypersdk/core/JuspayServices;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    const/4 v0, 0x0

    goto :goto_0
.end method
