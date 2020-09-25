.class Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/services/RemoteAssetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AssetDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

.field private ttlInMilliSeconds:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLin/juspay/hypersdk/services/RemoteAssetService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->location:Ljava/lang/String;

    iput-object p2, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->fileName:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->callback:Ljava/lang/String;

    iput-wide p4, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->ttlInMilliSeconds:J

    iput-object p6, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    :try_start_0
    iget-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->location:Ljava/lang/String;

    const-string v0, "certificates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->location:Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->fileName:Ljava/lang/String;

    iget-wide v2, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->ttlInMilliSeconds:J

    invoke-static {p1, v0, v1, v2, v3}, Lin/juspay/hypersdk/services/RemoteAssetService;->access$000(Lin/juspay/hypersdk/services/RemoteAssetService;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->location:Ljava/lang/String;

    iget-wide v1, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->ttlInMilliSeconds:J

    invoke-static {p1, v0, v1, v2}, Lin/juspay/hypersdk/services/RemoteAssetService;->access$100(Lin/juspay/hypersdk/services/RemoteAssetService;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    invoke-static {p1}, Lin/juspay/hypersdk/services/RemoteAssetService;->access$200(Lin/juspay/hypersdk/services/RemoteAssetService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object p1

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not renew file "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->location:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "RemoteAssetService"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "remote_asset_service"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->callback:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->location:Ljava/lang/String;

    aput-object v0, v1, p1

    const/4 p1, 0x3

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    invoke-static {v0}, Lin/juspay/hypersdk/services/RemoteAssetService;->access$200(Lin/juspay/hypersdk/services/RemoteAssetService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object v0

    iget-object v2, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lin/juspay/hypersdk/services/FileProviderService;->appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "window.callUICallback(\'%s\', \'%b\', \'%s\', \'%s\');"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    invoke-static {v0}, Lin/juspay/hypersdk/services/RemoteAssetService;->access$200(Lin/juspay/hypersdk/services/RemoteAssetService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    const-string v1, "RemoteAssetService"

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    invoke-static {v0}, Lin/juspay/hypersdk/services/RemoteAssetService;->access$200(Lin/juspay/hypersdk/services/RemoteAssetService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
