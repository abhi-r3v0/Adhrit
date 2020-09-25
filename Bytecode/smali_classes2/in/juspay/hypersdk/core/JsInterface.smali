.class public Lin/juspay/hypersdk/core/JsInterface;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsInterface"

.field private static final maxSecondsToLoad:I = 0x3c


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

.field private final juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private final remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

.field private final sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

.field private final sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->context:Landroid/content/Context;

    iput-object p1, p0, Lin/juspay/hypersdk/core/JsInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getRemoteAssetService()Lin/juspay/hypersdk/services/RemoteAssetService;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/JsInterface;->fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

    return-void
.end method


# virtual methods
.method public addToLogList(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/core/SdkTracker;->track(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lin/juspay/hypersdk/core/SdkTracker;->addToBootLogs(Ljava/lang/String;)V

    return-void
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFromSharedPrefs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__failed"

    invoke-static {v0, p1, v1}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLogList()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "JsInterface"

    const-string v1, "No one should call JBridge.getLogList() method. It will be removed in future."

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[]"

    return-object v0
.end method

.method public getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResourceById(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResourceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JsInterface;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/JsInterface;->getResourceById(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0, p1, p2}, Lin/juspay/hypersdk/data/SessionInfo;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SessionInfo;->createSessionDataMap()V

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFilePresent(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/services/FileProviderService;->isFilePresent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isNetworkAvailable()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SessionInfo;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadFileInDUI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

    const/16 v1, 0x3c

    invoke-virtual {v0, p1, v1}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadFileInDUI(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->fileProviderService:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-virtual {v0, p1, p2}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "JsInterface"

    const-string p2, "No one should call JBridge.postLogs() method. It will be removed in future."

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/data/SessionInfo;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public removeDataFromSharedPrefs(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lin/juspay/hypersdk/data/KeyValueStore;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renewFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lin/juspay/hypersdk/core/JsInterface;->renewFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renewFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lin/juspay/hypersdk/core/JsInterface;->renewFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renewFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    invoke-virtual {v0, p1, p3, p2}, Lin/juspay/hypersdk/services/RemoteAssetService;->renewFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnalyticsEndPoint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "JsInterface"

    const-string v0, "No one should call JBridge.setAnalyticsEndPoint() method. It will be removed in future."

    invoke-static {p1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0, p1, p2}, Lin/juspay/hypersdk/data/SessionInfo;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "JsInterface"

    const-string v1, "JBridge.setSessionId() is intended for changing the Session ID of the SDK. Not to be called by each micro-app"

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Attempted Session ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public submitAllLogs()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JsInterface;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateLogList(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "JsInterface"

    const-string v0, "No one should call JBridge.updateLogList() method. It will be removed in future."

    invoke-static {p1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
