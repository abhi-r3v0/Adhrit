.class public Lin/juspay/hypersdk/ui/JuspayWebViewClient;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private browserFragment:Lin/juspay/hypersdk/HyperFragment;

.field private delegate:Landroid/webkit/WebViewClient;

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private juspayTrustManager:Lin/juspay/hypersdk/core/JuspayTrustManager;

.field public latestStartUrl:Ljava/lang/String;

.field private paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Lin/juspay/hypersdk/HyperFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getPaymentSessionInfo()Lin/juspay/hypersdk/data/PaymentSessionInfo;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v0

    instance-of v0, v0, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object p1

    check-cast p1, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->createJuspaySafeWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    :cond_0
    return-void
.end method

.method private insertACS()V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-virtual {v1}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->isGodelDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "config"

    invoke-virtual {v1, v3, v2}, Lin/juspay/hypersdk/core/JsInterface;->setSessionAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.juspayContext = {}; juspayContext[\'web_lab_rules\'] = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "weblab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lin/juspay/hypersdk/ui/JuspayWebView;->addJsToWebView(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-virtual {v1}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->isGodelDisabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "payments/in.juspay.godel/v1-acs.jsa"

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lin/juspay/hypersdk/ui/JuspayWebView;->addJsToWebView(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v2, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Tracking weblab rules in acs"

    invoke-virtual {v1, v2, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v1

    const-string v2, "__juspay.trackWebLabRules();"

    invoke-virtual {v1, v2}, Lin/juspay/hypersdk/ui/JuspayWebView;->addJsToWebView(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-virtual {v1}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getAcsJsHash()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-static {v0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->setAcsJsHash(Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getAcsJsHash()Ljava/lang/String;

    move-result-object v6

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "juspay_webview_client"

    const-string v5, "hash_of_inserted_acs_min_script"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v1, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disabling_insertion_of_java_script_since_jb_is_disabled"

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private trackSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7

    iget-object p2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object p2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "system"

    const-string v2, "error"

    const-string v3, "juspay_webview_client"

    const-string v4, "ssl_error"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    sget-object v1, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "juspay_webview_client"

    const-string v5, "Exception while trying to track SSL error"

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public getSSLCheckWhitelistDomains()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "dev.juspay.in"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->isDuiLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v1

    const-string v2, "onPageFinished"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-direct {p0}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->insertACS()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    sget-object v2, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "juspay_webview_client"

    const-string v6, "Exception while creating ACS onPageFinished event"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    sput-boolean v0, Lin/juspay/hypersdk/core/PaymentUtils;->isRupaySupportedAdded:Z

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->isDuiLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v1

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    sget-object v3, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "juspay_webview_client"

    const-string v7, "Exception while creating ACS onPageStarted event"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPageStarted"

    invoke-virtual {v1, v2, v0}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->latestStartUrl:Ljava/lang/String;

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;

    move-result-object v0

    const-string v1, "currentUrl"

    invoke-virtual {v0, v1, p2}, Lin/juspay/hypersdk/data/SessionInfo;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->isDuiLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "statusCode"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v1

    const-string v2, "onReceivedError"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->insertACS()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    sget-object v2, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "juspay_webview_client"

    const-string v6, "Exception while creating ACS onReceivedError event"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->isDuiLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "statusCode"

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v1

    const-string v2, "onReceivedError"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->insertACS()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    sget-object v2, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "juspay_webview_client"

    const-string v6, "Exception while creating ACS onReceivedError event"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_2
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_0
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 11

    const-string v0, "can_excuse_ssl_error"

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x5

    const-string v9, "Current URL is %s"

    const/4 v10, 0x0

    if-ne v0, v2, :cond_3

    :try_start_1
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayTrustManager:Lin/juspay/hypersdk/core/JuspayTrustManager;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_1

    :try_start_2
    new-instance v0, Lin/juspay/hypersdk/core/JuspayTrustManager;

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-direct {v0, v2}, Lin/juspay/hypersdk/core/JuspayTrustManager;-><init>(Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayTrustManager:Lin/juspay/hypersdk/core/JuspayTrustManager;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayTrustManager;->initTrustStore()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "system"

    const-string v4, "error"

    const-string v5, "juspay_webview_client"

    const-string v6, "trust_manager_error"

    const-string v7, "Initialization error"

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception initiating trust store "

    invoke-static {v2, v3, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->latestStartUrl:Ljava/lang/String;

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v3, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    const-string v3, "system"

    const-string v4, "info"

    const-string v5, "juspay_webview_client"

    const-string v6, "trust_manager_issued_to"

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "system"

    const-string v4, "info"

    const-string v5, "juspay_webview_client"

    const-string v6, "trust_manager_issued_by"

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v3, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Certificate details: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v3, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Certificate issued by: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v3, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Certificate issued to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayTrustManager:Lin/juspay/hypersdk/core/JuspayTrustManager;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3}, Lin/juspay/hypersdk/core/JuspayTrustManager;->testCertificate(Landroid/webkit/WebView;Landroid/net/http/SslCertificate;Ljava/lang/String;)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v2, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Certificate casting error: "

    invoke-static {v2, v3, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "system"

    const-string v4, "error"

    const-string v5, "juspay_webview_client"

    const-string v6, "trust_manager_error"

    const-string v7, "Invalid certificate"

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    if-eqz v10, :cond_2

    const-string v3, "system"

    const-string v4, "info"

    const-string v5, "juspay_webview_client"

    const-string v6, "trust_manager_success"

    const-string v7, "Invalid certificate"

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->trackSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->latestStartUrl:Ljava/lang/String;

    iget-object v3, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v4, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v10

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v3, 0xe

    if-lt v0, v3, :cond_4

    :try_start_6
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v3, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Current URL from SSL Error is %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_4
    :goto_3
    move-object v0, v2

    :try_start_7
    invoke-virtual {p0}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->getSSLCheckWhitelistDomains()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v4, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Whitelist domains: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string v3, "Letting %s go as it is whitelisted properly"

    if-eqz v2, :cond_5

    :try_start_8
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "system"

    const-string p3, "info"

    const-string v5, "juspay_webview_client"

    const-string v6, "juspay_webview_client_whitelist_check"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v4, v2, v10

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    :cond_5
    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    invoke-virtual {v2}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getSslWhiteListedDomainsRegex()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "system"

    const-string p3, "info"

    const-string v5, "juspay_webview_client"

    const-string v6, "juspay_webview_client_whitelist_check"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v4, v2, v10

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->trackSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_4
    sget-object v3, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "juspay_webview_client"

    const-string p3, "Exception while trying to handle SSL error for URL %s. We will let this proceed"

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v2, v0, v10

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->trackSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    return-void

    :catch_2
    move-exception p1

    move-object v8, p1

    sget-object v3, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "juspay_webview_client"

    const-string v7, "Exception while getting data from config"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :cond_0
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {p1, p2, v0}, Lin/juspay/hypersdk/core/PaymentUtils;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Lin/juspay/hypersdk/HyperFragment;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {p1, p2, v0}, Lin/juspay/hypersdk/core/PaymentUtils;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;Lin/juspay/hypersdk/HyperFragment;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebViewClient;->delegate:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
