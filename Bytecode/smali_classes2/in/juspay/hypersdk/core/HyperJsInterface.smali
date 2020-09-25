.class public Lin/juspay/hypersdk/core/HyperJsInterface;
.super Lin/juspay/hypersdk/core/JsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HyperJsInterface"


# instance fields
.field private final fragment:Lin/juspay/hypersdk/HyperFragment;

.field private final juspayServices:Lin/juspay/hypersdk/core/JuspayServices;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;Lin/juspay/hypersdk/HyperFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/JsInterface;-><init>(Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object p1, p0, Lin/juspay/hypersdk/core/HyperJsInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    iput-object p2, p0, Lin/juspay/hypersdk/core/HyperJsInterface;->fragment:Lin/juspay/hypersdk/HyperFragment;

    return-void
.end method


# virtual methods
.method public checkPermission([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lin/juspay/hypersdk/core/HyperJsInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    array-length v9, p1

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_0

    aget-object v2, p1, v10

    :try_start_0
    iget-object v3, p0, Lin/juspay/hypersdk/core/HyperJsInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v3, v2}, Lin/juspay/hypersdk/utils/Utils;->checkIfGranted(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v8, v2

    const-string v3, "HyperJsInterface"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "jbridge"

    const-string v7, "Caught this exception while setting in JSON: "

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public downloadApps(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "HyperJsInterface"

    const-string v0, "Method downloadApps() has empty body"

    invoke-static {p1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exitApp(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/HyperJsInterface;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lin/juspay/hypersdk/HyperFragment;->exitApp(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hideKeyboard()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "HyperJsInterface"

    const-string v1, "Method hideKeyboard() has empty body"

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invokeFnInDUIWebview(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/HyperJsInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "HyperJsInterface"

    const-string p2, "Please override onRequestPermissionsResult"

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestPermission([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/HyperJsInterface;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lin/juspay/hypersdk/HyperFragment;->requestPermissionsCheckingAllowed([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setClickFeedback(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "HyperJsInterface"

    const-string v0, "Method setClickFeedback(String) has empty body"

    invoke-static {p1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
