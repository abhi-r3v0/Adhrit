.class public Lin/juspay/hypersdk/HyperFragment;
.super Landroidx/fragment/app/Fragment;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HyperFragment"

.field private static final ON_EXCEPTION_GODEL_OFF_STICKINESS:J = 0x5265c00L

.field public static defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

.field private activity:Landroid/app/Activity;

.field private bootLoaderDownloadAttempted:Z

.field private bundleParameters:Lorg/json/JSONObject;

.field private config:Lorg/json/JSONObject;

.field private disallowedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private duiContainer:Landroid/widget/FrameLayout;

.field private duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

.field private duiLoaded:Z

.field private dynamicUI:Lin/juspay/mystique/DynamicUI;

.field private isPreFetchMode:Z

.field private isWebViewAdded:Z

.field private juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

.field private juspayWebviewState:Landroid/os/Bundle;

.field private paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

.field private requestCode:I

.field private smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

.field private webChromeClient:Lin/juspay/hypersdk/ui/JuspayWebChromeClient;

.field private webViewClient:Lin/juspay/hypersdk/ui/JuspayWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lin/juspay/hypersdk/HyperFragment;->requestCode:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->config:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->disallowedPermissions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lin/juspay/hypersdk/HyperFragment;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lin/juspay/hypersdk/HyperFragment;)I
    .locals 0

    iget p0, p0, Lin/juspay/hypersdk/HyperFragment;->requestCode:I

    return p0
.end method

.method static synthetic access$200(Lin/juspay/hypersdk/HyperFragment;)Lin/juspay/hypersdk/core/JuspayCallback;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    return-object p0
.end method

.method static synthetic access$302(Lin/juspay/hypersdk/HyperFragment;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->config:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$400(Lin/juspay/hypersdk/HyperFragment;)V
    .locals 0

    invoke-direct {p0}, Lin/juspay/hypersdk/HyperFragment;->resetInterfaces()V

    return-void
.end method

.method static synthetic access$500(Lin/juspay/hypersdk/HyperFragment;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebviewState:Landroid/os/Bundle;

    return-object p0
.end method

.method private addIfPrefetchAndReturnStatus(Lin/juspay/hypersdk/core/SdkTracker;)Z
    .locals 8

    iget-boolean v0, p0, Lin/juspay/hypersdk/HyperFragment;->isPreFetchMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v2, "pre_fetch"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lin/juspay/hypersdk/HyperFragment;->setBundleParameters(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v0, "HyperFragment"

    const-string v1, "Error writing to JSON"

    invoke-static {v0, v1, v7}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "HyperFragment"

    const-string v3, "lifecycle"

    const-string v4, "hypersdk"

    const-string v5, "hyper_fragment"

    const-string v6, "failed_during_add_if_prefetch"

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method private addInSharedPref(Landroid/content/Intent;IILin/juspay/hypersdk/core/SdkTracker;)V
    .locals 9

    const-string v0, "jus_oar_"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lin/juspay/hypersdk/core/PaymentUtils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "resultCode"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v3, "in/juspay/godel/data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v2, p3}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "system"

    const-string v5, "info"

    const-string v6, "SharedPref"

    const-string v7, "key"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p4

    invoke-virtual/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    const-string v1, "HyperFragment"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "SharedPref"

    const-string v5, "Failed to store intent response of onActivityResult in Shared Prefs"

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private extractBundle()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const/4 v1, -0x1

    const-string v2, "requestCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lin/juspay/hypersdk/HyperFragment;->requestCode:I

    return-object v0
.end method

.method private extractBundleParameters()Lorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lin/juspay/hypersdk/HyperFragment;->extractBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lin/juspay/hypersdk/utils/Utils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->bundleParameters:Lorg/json/JSONObject;

    const/4 v1, -0x1

    const-string v2, "requestCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lin/juspay/hypersdk/HyperFragment;->requestCode:I

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->bundleParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method private firstTimeSetup(Landroid/app/Activity;)V
    .locals 10

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jus_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->getBuildVersion(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lin/juspay/hypersdk/core/PaymentConstants;->setBuildId(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object v8

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getRemoteAssetService()Lin/juspay/hypersdk/services/RemoteAssetService;

    move-result-object v9

    sget-object v1, Lin/juspay/hypersdk/core/PaymentConstants;->BUILD_ID:Ljava/lang/String;

    const-string v2, "false"

    invoke-static {v7, v1, v2}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    const-string v2, "hypersdk"

    const-string v3, "info"

    const-string v4, "first_time_setup"

    const-string v5, "started"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lin/juspay/hypersdk/core/PaymentConstants;->BUILD_ID:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v7, v1, v2}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "asset_metadata.json"

    invoke-static {v7, v1}, Lin/juspay/hypersdk/data/KeyValueStore;->remove(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    const-string v3, "juspay"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "payments"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lin/juspay/hypersdk/utils/Utils;->deleteRecursive(Ljava/io/File;)V

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "manifest.json"

    invoke-virtual {v8, v5}, Lin/juspay/hypersdk/services/FileProviderService;->appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    const-string v7, "v1-boot_loader.jsa"

    invoke-virtual {v8, v7}, Lin/juspay/hypersdk/services/FileProviderService;->appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string v2, "v1-config.jsa"

    invoke-virtual {v8, v2}, Lin/juspay/hypersdk/services/FileProviderService;->appendSdkNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lin/juspay/hypersdk/utils/Utils;->deleteRecursive(Ljava/io/File;)V

    invoke-static {v1}, Lin/juspay/hypersdk/utils/Utils;->deleteRecursive(Ljava/io/File;)V

    invoke-static {v4}, Lin/juspay/hypersdk/utils/Utils;->deleteRecursive(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v9, v5}, Lin/juspay/hypersdk/services/RemoteAssetService;->getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v2, "hypersdk"

    const-string v3, "info"

    const-string v4, "first_time_setup"

    const-string v5, "completed"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "HyperFragment"

    const-string v3, "lifecycle"

    const-string v4, "hypersdk"

    const-string v5, "first_time_setup"

    const-string v6, "Exception while fetching meta-data for manifest.json file"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private getBootloaderEndpoint(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "betaAssets"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "beta"

    goto :goto_0

    :cond_0
    const-string p1, "release"

    :goto_0
    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lin/juspay/hypersdk/R$string;->remotes_version:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "https://jp-remote-assets.s3.ap-south-1.amazonaws.com/juspay/hyper-os/in.juspay.hyperos/%s/%s/v1-boot_loader.zip"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static hasPackageEverExisted(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private initializeJuspayWebview(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    const-string v2, "system"

    if-nez v0, :cond_2

    const-string v3, "info"

    const-string v4, "initialise_juspay_webview"

    const-string v5, "started"

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-direct {v1, p1}, Lin/juspay/hypersdk/ui/JuspayWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    sget v2, Lin/juspay/hypersdk/R$id;->juspay_browser_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object v0

    iput-boolean v1, p0, Lin/juspay/hypersdk/HyperFragment;->isWebViewAdded:Z

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->setPaymentDetails(Lorg/json/JSONObject;)V

    const-string v1, "acs.jsa"

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/services/FileProviderService;->addToFileCacheWhiteList(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->prepareWebView(Landroid/content/Context;)V

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    if-eqz v0, :cond_1

    check-cast p1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-interface {p1, v0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onWebViewReady(Lin/juspay/hypersdk/ui/JuspayWebView;)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "error"

    const-string v4, "initialise_juspay_webview"

    const-string v5, "missing"

    const-string v6, "JuspayWebView"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private injectWebView(Landroid/widget/FrameLayout;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lin/juspay/hypersdk/HyperFragment;->isWebViewAdded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lin/juspay/hypersdk/HyperFragment;->isWebViewAdded:Z

    :cond_0
    return-void
.end method

.method public static isPackageExisting(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isWebViewInstalled()Z
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "HyperFragment"

    const/16 v3, 0x15

    if-gt v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "WebView always present for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "com.google.android.webview"

    const/4 v3, 0x0

    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x1a

    const-string v6, "WebView package name - "

    if-lt v4, v5, :cond_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lin/juspay/hypersdk/HyperFragment;->isPackageExisting(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const-string v4, "android.webkit.WebViewFactory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getLoadedPackageInfo"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lin/juspay/hypersdk/HyperFragment;->isPackageExisting(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    nop

    const-string v4, "WebView default package name - check if com.google.android.webview is present or atleast it\'s never installed indicating the package never existed to get updated."

    invoke-static {v2, v4}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebView isExisting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->isPackageExisting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebView hasExisted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->hasPackageEverExisted(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->isPackageExisting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->hasPackageEverExisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method private prefetchBootLoaderFile(Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v1, "missing"

    const-string v2, "hyper_fragment"

    const-string v3, "error"

    const-string v4, "hypersdk"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getRemoteAssetService()Lin/juspay/hypersdk/services/RemoteAssetService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->getBootloaderEndpoint(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lin/juspay/hypersdk/services/RemoteAssetService;->renewFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "remoteAssetService"

    invoke-static {v4, v3, v2, v1, p1}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "juspayServices"

    invoke-static {v4, v3, v2, v1, p1}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private resetInterfaces()V
    .locals 1

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/DuiInterface;->reset()V

    :cond_0
    return-void
.end method

.method private setRequestOrientation()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shouldDisableGodel(Landroid/content/Context;)Z
    .locals 12

    if-eqz p1, :cond_2

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object p1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v7, "GODEL_EXCEPTION_OFF"

    invoke-static {v0, v7}, Lin/juspay/hypersdk/data/KeyValueStore;->contains(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    if-eqz v0, :cond_0

    const-string v3, "ON_EXCEPTION_GODEL_OFF_STICKINESS"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    move-wide v8, v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, v2

    move-wide v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v1, "HyperFragment"

    const-string v2, "action"

    const-string v3, "user"

    const-string v4, "should_disable_godel"

    const-string v5, "Failed while parsing number"

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const/4 v1, 0x0

    const-string v2, "EXCEPTION_INFO"

    invoke-static {v0, v2, v1}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "user"

    const-string v2, "info"

    const-string v3, "should_disable_godel"

    const-string v4, "exception_info"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    cmp-long p1, v10, v8

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p1, v7}, Lin/juspay/hypersdk/data/KeyValueStore;->remove(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v0, "EXCEPTION_OFF"

    invoke-static {p1, v0}, Lin/juspay/hypersdk/data/KeyValueStore;->remove(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private turnOffGodelIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lin/juspay/hypersdk/HyperFragment;->shouldDisableGodel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    const-string v1, "ON_GODEL_EXCEPTION"

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->setGodelDisabled(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v0}, Lin/juspay/hypersdk/core/PaymentUtils;->hasTelephonyService(Lin/juspay/hypersdk/core/JuspayServices;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v1, "HyperFragment"

    const-string v2, "No telephony service found.. disabling JB"

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    const-string v1, "TELEPHONY_NOT_FOUND"

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->setGodelDisabled(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-static {p0, v0, v1}, Lin/juspay/hypersdk/core/PaymentUtils;->switchOffGodelIfLowOnMemory(Lin/juspay/hypersdk/HyperFragment;Lin/juspay/hypersdk/core/JuspayServices;Lin/juspay/hypersdk/data/PaymentSessionInfo;)V

    return-void
.end method

.method private udpateJuspayWebviewStateAndActivityRecreatedState(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "juspay_webview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebviewState:Landroid/os/Bundle;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebviewState:Landroid/os/Bundle;

    iget-boolean p1, p0, Lin/juspay/hypersdk/HyperFragment;->isPreFetchMode:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lo/onSessionEvent;

    invoke-static {p1}, Lin/juspay/services/HyperServices;->exitPreFetch(Lo/onSessionEvent;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "activity_recreated"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    move-object v5, p1

    const-string v0, "HyperFragment"

    const-string v1, "lifecycle"

    const-string v2, "android"

    const-string v3, "on_create_view"

    const-string v4, "during update state"

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private validateWebviewInstall()Z
    .locals 3

    invoke-static {}, Lin/juspay/hypersdk/HyperFragment;->isWebViewInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "payload"

    const-string v2, "{\"status\":\"FAILURE\",\"message\":\"error - com.google.android.webview not found\"}"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/juspay/hypersdk/HyperFragment;->exitOnError(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addWebView(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "add_web_view"

    const-string v5, "missing"

    const-string v6, "Context"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lin/juspay/hypersdk/HyperFragment;->initializeJuspayWebview(Landroid/content/Context;)V

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "HyperFragment"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "add_web_view"

    const-string v6, "Exception while trying to attach WebView"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v8, :cond_1

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "add_web_view"

    const-string v5, "missing"

    const-string v6, "view"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lin/juspay/hypersdk/HyperFragment;->turnOffGodelIfNeeded()V

    invoke-direct {p0, v8}, Lin/juspay/hypersdk/HyperFragment;->injectWebView(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public backPressHandler(Z)V
    .locals 3

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/DuiInterface;->requestKeyboardHide()V

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"shouldShowBackPressDialog\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBackPressed"

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeFnInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->onBackPressedCopy()V

    return-void
.end method

.method protected createDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;
    .locals 3

    new-instance v0, Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lin/juspay/hypersdk/core/JBridge;-><init>(Lin/juspay/hypersdk/core/JuspayServices;Landroid/app/Activity;Lin/juspay/hypersdk/HyperFragment;)V

    return-object v0
.end method

.method public destroy()V
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    const-string v2, "android"

    const-string v3, "info"

    const-string v4, "on_destroy"

    const-string v5, "Clearing ACS interface and DUI interface."

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    const-string v2, "onDestroy"

    const-string v3, "{}"

    invoke-virtual {v1, v2, v3}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/DuiInterface;->onWebViewReleased()V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    const-string v2, "fragment being detached"

    invoke-virtual {v1, v2}, Lin/juspay/hypersdk/core/DuiInterface;->closeBrowser(Ljava/lang/String;)V

    iput-object v7, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    :cond_1
    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v7, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lin/juspay/hypersdk/core/MPINUtil;->closeAllConnections(Landroid/content/Context;)V

    sget-object v1, Lin/juspay/hypersdk/HyperFragment;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_3

    instance-of v2, v1, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v7, Lin/juspay/hypersdk/HyperFragment;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_3
    const/4 v6, 0x0

    const-string v2, "android"

    const-string v3, "info"

    const-string v4, "on_destroy"

    const-string v5, "Clearing JuspayServices instance."

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->destroy()V

    iput-object v7, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    :cond_4
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iput-object v7, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    :cond_6
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    iput-object v7, p0, Lin/juspay/hypersdk/HyperFragment;->activity:Landroid/app/Activity;

    :cond_7
    return-void
.end method

.method public exit()V
    .locals 2

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lin/juspay/hypersdk/HyperFragment$4;

    invoke-direct {v1, p0}, Lin/juspay/hypersdk/HyperFragment$4;-><init>(Lin/juspay/hypersdk/HyperFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitApp(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    const-string v2, "hypersdk"

    const-string v3, "info"

    const-string v4, "exit_app"

    const-string v5, "started"

    const-string v6, "hyper_fragment"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "payload"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    iget v2, p0, Lin/juspay/hypersdk/HyperFragment;->requestCode:I

    invoke-interface {p2, v2, p1, v1}, Lin/juspay/hypersdk/core/JuspayCallback;->onResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lin/juspay/hypersdk/HyperFragment$3;

    invoke-direct {v2, p0, p1, v1}, Lin/juspay/hypersdk/HyperFragment$3;-><init>(Lin/juspay/hypersdk/HyperFragment;ILandroid/content/Intent;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v6, 0x0

    const-string v2, "hypersdk"

    const-string v3, "info"

    const-string v4, "exit_app"

    const-string v5, "completed"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v2, "hypersdk"

    const-string v3, "critical"

    const-string v4, "exit_app"

    const-string v5, "integration_error"

    const-string v6, "JuspayCallback is null"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Integration Error"

    const-string p2, "juspayCallback is null"

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected exitOnError(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lin/juspay/hypersdk/HyperFragment;->extractBundleParameters()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    const/4 v2, -0x1

    const-string v3, "requestCode"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p1}, Lin/juspay/hypersdk/core/JuspayCallback;->onResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    return-object v0
.end method

.method protected getAppName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->godel_app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttachedActivity()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getBaseUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "file:///android_asset/base.html"

    return-object v0
.end method

.method public getBuildVersion(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sget v0, Lin/juspay/hypersdk/R$string;->hyper_build_version:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBundleParameters()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->bundleParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getConfig()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->config:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    return-object v0
.end method

.method public getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    return-object v0
.end method

.method public getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-object v0
.end method

.method public getPaymentSessionInfo()Lin/juspay/hypersdk/data/PaymentSessionInfo;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    return-object v0
.end method

.method public getPreFetchMode()Z
    .locals 1

    iget-boolean v0, p0, Lin/juspay/hypersdk/HyperFragment;->isPreFetchMode:Z

    return v0
.end method

.method public getSmsConsentHandler()Lin/juspay/hypersdk/core/SmsConsentHandler;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->godel_version:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    return-object v0
.end method

.method public insetUpdated(Landroid/view/WindowInsets;)V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    move v0, p1

    move p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v2

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    :goto_0
    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "window.insetUpdated("

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public isDuiLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiLoaded:Z

    return v0
.end method

.method public isNetworkAvailable(Landroid/content/Context;)Z
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "HyperFragment"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "is_network_available"

    const-string v6, "network failure"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected isSdkDebuggable()Z
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$bool;->godel_debuggable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public loadPage()V
    .locals 3

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "postData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lin/juspay/hypersdk/HyperFragment;->loadPage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "file:///android_assets/juspay/acs_blank.html"

    invoke-virtual {p0, v1, v0}, Lin/juspay/hypersdk/HyperFragment;->loadPage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "postData"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    const-string v2, "HyperFragment"

    const-string v3, "lifecycle"

    const-string v4, "hypersdk"

    const-string v5, "load_page"

    const-string v6, "Failed to write to JSON bundle parameters"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "load_page"

    const-string v5, "missing"

    const-string v6, "JuspayWebView"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected newWebChromeClient()Lin/juspay/hypersdk/ui/JuspayWebChromeClient;
    .locals 1

    new-instance v0, Lin/juspay/hypersdk/ui/JuspayWebChromeClient;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/ui/JuspayWebChromeClient;-><init>(Lin/juspay/hypersdk/HyperFragment;)V

    return-object v0
.end method

.method protected newWebViewClient(Lin/juspay/hypersdk/ui/JuspayWebView;)Lin/juspay/hypersdk/ui/JuspayWebViewClient;
    .locals 0

    new-instance p1, Lin/juspay/hypersdk/ui/JuspayWebViewClient;

    invoke-direct {p1, p0}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;-><init>(Lin/juspay/hypersdk/HyperFragment;)V

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Lin/juspay/hypersdk/HyperFragment;->setRequestOrientation()V

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->udpateJuspayWebviewStateAndActivityRecreatedState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->start(Landroid/app/Activity;)V

    return-void

    :cond_0
    const-string p1, "hypersdk"

    const-string v0, "critical"

    const-string v1, "hyper_fragment"

    const-string v2, "on_activity_created"

    const-string v3, "Hyper Fragment context is null. Should not happen."

    invoke-static {p1, v0, v1, v2, v3}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "payload"

    const-string v1, "{\"status\":\"FAILURE\", \"message\":\"Fragment context is null\"}"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->exitOnError(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    invoke-direct {p0, p3, p1, p2, v0}, Lin/juspay/hypersdk/HyperFragment;->addInSharedPref(Landroid/content/Intent;IILin/juspay/hypersdk/core/SdkTracker;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const-string v2, "hypersdk"

    const-string v3, "info"

    const-string v4, "on_activity_result"

    const-string v5, "result_code"

    const-string v6, "RESULT_OK"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lin/juspay/hypersdk/utils/Utils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v2, "hypersdk"

    const-string v3, "info"

    const-string v4, "on_activity_result"

    const-string v5, "result_code"

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v2, "hypersdk"

    const-string v3, "info"

    const-string v4, "on_activity_result"

    const-string v5, "result_code"

    const-string v6, "RESULT_CANCELLED"

    :goto_0
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lin/juspay/hypersdk/core/DuiInterface;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_3
    const-string p1, "system"

    const-string p2, "critical"

    const-string p3, "on_activity_result"

    const-string v0, "dui_interface_missing"

    const-string v1, "DUI Interface is missing in HyperFragment#onActivityResult method."

    invoke-static {p1, p2, p3, v0, v1}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->activity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "info"

    const-string v4, "on_back_pressed"

    const-string v5, "class"

    const-string v6, "hyperFragment"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lin/juspay/hypersdk/HyperFragment;->backPressHandler(Z)V

    return-void
.end method

.method public onBackPressedCopy()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-eqz v0, :cond_0

    const-string v1, "window.onBackPressed()"

    invoke-virtual {v0, v1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBrowserReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lin/juspay/hypersdk/HyperFragment$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lin/juspay/hypersdk/HyperFragment$5;-><init>(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBrowserReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v9, p0

    iget-object v0, v9, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v8

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lin/juspay/hypersdk/HyperFragment$6;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lin/juspay/hypersdk/HyperFragment$6;-><init>(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "android"

    const-string v2, "info"

    const-string v3, "on_destroy"

    const-string v4, "started"

    invoke-static {v1, v2, v3, v4, v0}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    if-eqz v1, :cond_0

    const-string v2, "onDestroy"

    const-string v3, "{}"

    invoke-virtual {v1, v2, v3}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/SmsConsentHandler;->unregisterConsent()V

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDuiReady()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiLoaded:Z

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "hypersdk"

    const-string v3, "info"

    const-string v4, "on_dui_ready"

    const-string v5, "class"

    const-string v6, "HyperFragment"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDuiReleased()V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "on_dui_released"

    const-string v5, "exit_sdk"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->exit()V

    return-void
.end method

.method public onMerchantEvent(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lin/juspay/hypersdk/HyperFragment;->onMerchantEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public onMerchantEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "window.onMerchantEvent(\'%s\',atob(\'%s\'));"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCustomFnInDUIWebview(Ljava/lang/String;)V

    return p2

    :cond_0
    const-string p1, "HyperFragment"

    const-string p2, "duiInterface not Found on Merchant Event"

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onPause()V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "info"

    const-string v4, "on_pause"

    const-string v5, "class"

    const-string v6, "HyperFragment"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    if-eqz v0, :cond_1

    const-string v1, "onPause"

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "requestCode = ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "],permissions = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], grantResults = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "on_request_permission_result"

    const-string v5, "data"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lin/juspay/hypersdk/core/HyperJsInterface;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "info"

    const-string v4, "on_resume"

    const-string v5, "class"

    const-string v6, "HyperFragment"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    if-eqz v0, :cond_1

    const-string v1, "onResume"

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    const-string v2, "OnSaveInstanceState"

    const-string v3, "{}"

    invoke-virtual {v0, v2, v3}, Lin/juspay/hypersdk/core/DuiInterface;->invokeFnInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebviewState:Landroid/os/Bundle;

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebviewState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebviewState:Landroid/os/Bundle;

    const-string v2, "juspay_webview"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v6, 0x0

    const-string v2, "android"

    const-string v3, "info"

    const-string v4, "on_saved_instance_state"

    const-string v5, "began"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    const-string v0, "android"

    const-string v1, "info"

    const-string v2, "on_stop"

    const-string v3, "class"

    const-string v4, "HyperFragment"

    invoke-static {v0, v1, v2, v3, v4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    if-eqz v0, :cond_0

    const-string v1, "onStop"

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected prepareWebView(Landroid/content/Context;)V
    .locals 9

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->webViewClient:Lin/juspay/hypersdk/ui/JuspayWebViewClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {p0, v0}, Lin/juspay/hypersdk/HyperFragment;->newWebViewClient(Lin/juspay/hypersdk/ui/JuspayWebView;)Lin/juspay/hypersdk/ui/JuspayWebViewClient;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->webViewClient:Lin/juspay/hypersdk/ui/JuspayWebViewClient;

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->webChromeClient:Lin/juspay/hypersdk/ui/JuspayWebChromeClient;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->newWebChromeClient()Lin/juspay/hypersdk/ui/JuspayWebChromeClient;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->webChromeClient:Lin/juspay/hypersdk/ui/JuspayWebChromeClient;

    new-instance v0, Lin/juspay/hypersdk/core/AcsInterface;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-direct {v0, p0, v1}, Lin/juspay/hypersdk/core/AcsInterface;-><init>(Lin/juspay/hypersdk/HyperFragment;Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->acsInterface:Lin/juspay/hypersdk/core/AcsInterface;

    const-string v3, "ACSGatekeeper"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lin/juspay/hypersdk/HyperFragment;->extractBundleParameters()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "godel_receive_merchant_messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    new-instance v2, Lin/juspay/hypersdk/core/GodelJsInterface;

    invoke-direct {v2, p0}, Lin/juspay/hypersdk/core/GodelJsInterface;-><init>(Lin/juspay/hypersdk/HyperFragment;)V

    const-string v3, "GodelInterface"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    const-string v2, "HyperFragment"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "initialise_juspay_webview"

    const-string v6, "Initiate payload is missing"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->webViewClient:Lin/juspay/hypersdk/ui/JuspayWebViewClient;

    invoke-virtual {v1, v2}, Lin/juspay/hypersdk/ui/JuspayWebView;->setDefaultWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->webChromeClient:Lin/juspay/hypersdk/ui/JuspayWebChromeClient;

    invoke-virtual {v1, v2}, Lin/juspay/hypersdk/ui/JuspayWebView;->setDefaultWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-wide/32 v2, 0x500000

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "initialise_juspay_webview"

    const-string v5, "enabling_third_party_cookies"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v1, v2, v8}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_3
    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "initialise_juspay_webview"

    const-string v5, "no_network"

    const-string v6, "Setting web view to load from cache if there is no network"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_4
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "clearCookies"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "initialise_juspay_webview"

    const-string v5, "clearing"

    const-string v6, "cookies"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p1}, Lin/juspay/hypersdk/core/PaymentUtils;->clearCookies(Lin/juspay/hypersdk/core/JuspayServices;)V

    return-void

    :cond_6
    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "initialise_juspay_webview"

    const-string v5, "missing"

    const-string v6, "JuspayWebView"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public removeActivityAndContainer()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    instance-of v2, v1, Lin/juspay/hypersdk/core/JBridge;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->setActivity(Landroid/app/Activity;)V

    :cond_1
    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lin/juspay/hypersdk/core/JuspayServices;->updateActivity(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public requestPermissionsCheckingAllowed([Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    iget-object v5, p0, Lin/juspay/hypersdk/HyperFragment;->disallowedPermissions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public resetSmsConsentHandler()V
    .locals 3

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/SmsConsentHandler;->unregisterConsent()V

    :cond_0
    new-instance v0, Lin/juspay/hypersdk/HyperFragment$7;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-direct {v0, p0, v1, v2}, Lin/juspay/hypersdk/HyperFragment$7;-><init>(Lin/juspay/hypersdk/HyperFragment;Landroid/app/Activity;Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/core/SmsConsentHandler;->setIntentReceivedCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resetWebView()V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lin/juspay/hypersdk/ui/JuspayWebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v3

    invoke-virtual {v0, v3}, Lin/juspay/hypersdk/ui/JuspayWebView;->setDefaultWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v0}, Lin/juspay/hypersdk/ui/JuspayWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v3

    invoke-virtual {v0, v3}, Lin/juspay/hypersdk/ui/JuspayWebView;->setDefaultWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    const-string v3, "ACSGatekeeper"

    invoke-virtual {v0, v3}, Lin/juspay/hypersdk/ui/JuspayWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v3, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    iput-boolean v2, p0, Lin/juspay/hypersdk/HyperFragment;->isWebViewAdded:Z

    goto :goto_0

    :cond_1
    const-string v0, "system"

    const-string v3, "error"

    const-string v4, "reset_webview"

    const-string v5, "missing"

    const-string v6, "JuspayWebView"

    invoke-static {v0, v3, v4, v5, v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iput-boolean v2, p0, Lin/juspay/hypersdk/HyperFragment;->duiLoaded:Z

    iput-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebviewState:Landroid/os/Bundle;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {p1}, Lin/juspay/hypersdk/core/PaymentUtils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->setBundleParameters(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setAssetManagementFlag(Landroid/app/Activity;)V
    .locals 2

    sget v0, Lin/juspay/hypersdk/R$string;->godel_app_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "jp_asset_manage"

    const-string v1, "true"

    invoke-static {p1, v0, v1}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBundleParameters(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "disallowedPermissions"

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->bundleParameters:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "payload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->disallowedPermissions:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->disallowedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    move-object v5, p1

    const-string v0, "HyperFragment"

    const-string v1, "action"

    const-string v2, "user"

    const-string v3, "missing_payload"

    const-string v4, "Missing payload in parameters"

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setCallback(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lin/juspay/hypersdk/ui/HyperPaymentsCallback;",
            ":",
            "Lin/juspay/hypersdk/core/JuspayCallback;",
            ">(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;->createDelegate(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->setJuspayCallback(Lin/juspay/hypersdk/core/JuspayCallback;)V

    return-void
.end method

.method public setConfig(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->config:Lorg/json/JSONObject;

    return-void
.end method

.method public setContainerAndActivity(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_3

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    instance-of v1, v0, Lin/juspay/hypersdk/core/JBridge;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->setActivity(Landroid/app/Activity;)V

    :cond_0
    if-eqz p2, :cond_3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lin/juspay/hypersdk/HyperFragment;->isPreFetchMode:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiContainer:Landroid/widget/FrameLayout;

    :cond_3
    return-void
.end method

.method public setHyperCallback(Lin/juspay/hypersdk/core/JuspayCallback;)V
    .locals 0

    invoke-static {p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;->createJuspayDelegate(Lin/juspay/hypersdk/core/JuspayCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->setJuspayCallback(Lin/juspay/hypersdk/core/JuspayCallback;)V

    return-void
.end method

.method public setHyperCallback(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 0

    invoke-static {p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;->createHyperDelegate(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->setJuspayCallback(Lin/juspay/hypersdk/core/JuspayCallback;)V

    return-void
.end method

.method public setHyperPaymentsCallBack(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 0

    invoke-static {p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;->createHyperDelegate(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    return-void
.end method

.method public setJuspayCallback(Lin/juspay/hypersdk/core/JuspayCallback;)V
    .locals 1

    instance-of v0, p1, Lin/juspay/hypersdk/ui/JuspayPaymentsCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lin/juspay/hypersdk/ui/JuspayPaymentsCallback;

    invoke-static {p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;->createJuspayPaymentsDelegate(Lin/juspay/hypersdk/ui/JuspayPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->setJuspayCallback(Lin/juspay/hypersdk/core/JuspayCallback;)V

    return-void

    :cond_0
    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->juspayCallback:Lin/juspay/hypersdk/core/JuspayCallback;

    return-void
.end method

.method public setPreFetchMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lin/juspay/hypersdk/HyperFragment;->isPreFetchMode:Z

    return-void
.end method

.method public setWebViewClient(Lin/juspay/hypersdk/ui/JuspayWebViewClient;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->webViewClient:Lin/juspay/hypersdk/ui/JuspayWebViewClient;

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method protected start(Landroid/app/Activity;)V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lin/juspay/hypersdk/data/SdkInfo;

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->isSdkDebuggable()Z

    move-result v3

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->usesLocalAssets()Z

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lin/juspay/hypersdk/data/SdkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/juspay/hypersdk/HyperFragment;->duiLoaded:Z

    new-instance v0, Lin/juspay/hypersdk/HyperFragment$1;

    invoke-direct {v0, p0, p1, v2}, Lin/juspay/hypersdk/HyperFragment$1;-><init>(Lin/juspay/hypersdk/HyperFragment;Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;)V

    iput-object v0, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    const-string v4, "hypersdk"

    const-string v5, "info"

    const-string v6, "hyper_fragment"

    const-string v7, "juspay_service"

    const-string v8, "created"

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lin/juspay/hypersdk/HyperFragment;->validateWebviewInstall()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v4, "hypersdk"

    const-string v5, "error"

    const-string v6, "hyper_fragment"

    const-string v7, "webview_installed"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v4, "hypersdk"

    const-string v5, "info"

    const-string v6, "hyper_fragment"

    const-string v7, "webview_installed"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lin/juspay/hypersdk/HyperFragment;->addIfPrefetchAndReturnStatus(Lin/juspay/hypersdk/core/SdkTracker;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lin/juspay/hypersdk/data/PaymentSessionInfo;

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-direct {v1, p0, v2}, Lin/juspay/hypersdk/data/PaymentSessionInfo;-><init>(Lin/juspay/hypersdk/HyperFragment;Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->firstTimeSetup(Landroid/app/Activity;)V

    invoke-direct {p0}, Lin/juspay/hypersdk/HyperFragment;->extractBundleParameters()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2, v1}, Lin/juspay/hypersdk/core/JuspayServices;->start(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object v2

    iput-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->createDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v2

    iput-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v3, p0, Lin/juspay/hypersdk/HyperFragment;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    const-string v4, "JBridge"

    invoke-virtual {v3, v2, v4}, Lin/juspay/mystique/DynamicUI;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lin/juspay/hypersdk/HyperFragment;->bootLoaderDownloadAttempted:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lin/juspay/hypersdk/HyperFragment;->bootLoaderDownloadAttempted:Z

    invoke-direct {p0, v1}, Lin/juspay/hypersdk/HyperFragment;->prefetchBootLoaderFile(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const-string v3, "android.permission.READ_SMS"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lin/juspay/hypersdk/HyperFragment$2;

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-direct {v1, p0, p1, v2}, Lin/juspay/hypersdk/HyperFragment$2;-><init>(Lin/juspay/hypersdk/HyperFragment;Landroid/app/Activity;Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object v1, p0, Lin/juspay/hypersdk/HyperFragment;->smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lin/juspay/hypersdk/core/SmsConsentHandler;->setIntentReceivedCallback(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v6, p1

    :try_start_2
    const-string v1, "HyperFragment"

    const-string v2, "lifecycle"

    const-string v3, "hypersdk"

    const-string v4, "hyper_fragment"

    const-string v5, "Exception happened while initializing"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lin/juspay/hypersdk/HyperFragment;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lin/juspay/hypersdk/HyperFragment;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1, v8}, Lin/juspay/mystique/DynamicUI;->loadURL(Ljava/lang/String;)V

    const-string v4, "hypersdk"

    const-string v5, "info"

    const-string v6, "hyper_fragment"

    const-string v7, "url_loaded"

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    move-object v5, p1

    const-string v0, "HyperFragment"

    const-string v1, "lifecycle"

    const-string v2, "hypersdk"

    const-string v3, "hyper_fragment"

    const-string v4, "Exception happened while initializing"

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "payload"

    const-string v1, "{\"status\":\"FAILURE\",\"message\":\"error while initializing\"}"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/HyperFragment;->exitOnError(Landroid/content/Intent;)V

    return-void
.end method

.method protected usesLocalAssets()Z
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$bool;->use_local_assets:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
