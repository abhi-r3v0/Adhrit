.class public Lcom/axis/axismerchantsdk/util/UPIJSInterface;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static asBinder:Lcom/axis/axismerchantsdk/util/UPIJSInterface;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Landroid/content/BroadcastReceiver;

.field private onMessageChannelReady:Landroid/content/Context;

.field private onNavigationEvent:Lin/juspay/mystique/DynamicUI;

.field public onPostMessage:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lin/juspay/mystique/DynamicUI;)V
    .locals 8

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    const-string v0, "/sbin/"

    const-string v1, "/system/bin/"

    const-string v2, "/system/xbin/"

    const-string v3, "/data/local/xbin/"

    const-string v4, "/data/local/bin/"

    const-string v5, "/system/sd/xbin/"

    const-string v6, "/system/bin/failsafe/"

    const-string v7, "/data/local/"

    .line 70
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback()Lcom/axis/axismerchantsdk/util/UPIJSInterface;
    .locals 1

    .line 58
    sget-object v0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->asBinder:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public callAPI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 624
    new-instance v7, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;-><init>(Lcom/axis/axismerchantsdk/util/UPIJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    const/4 p3, 0x0

    if-lt p1, p2, :cond_0

    .line 697
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    .line 699
    invoke-virtual {v7, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 702
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 703
    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 704
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->trackApiError(Ljava/lang/String;)V

    return-void
.end method

.method public checkPermission(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "\")"

    const-string v1, "\", \""

    const-string/jumbo v2, "window.callUICallback(\""

    const/4 v3, 0x2

    .line 202
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 203
    array-length v5, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_0
    const-string/jumbo v7, "status"

    if-ge v6, v5, :cond_1

    :try_start_1
    aget-object v8, p2, v6

    .line 204
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "label"

    .line 205
    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1220
    iget-object v10, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-static {v10, v8}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    const-string v8, "DENIED"

    goto :goto_1

    :cond_0
    const-string v8, "GRANTED"

    .line 206
    :goto_1
    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 209
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "SUCCESS"

    .line 210
    invoke-virtual {p2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "permissions"

    .line 211
    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 214
    :catch_0
    iget-object p2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "EXCEPTION"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public downloadFile(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 497
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    new-instance v1, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;-><init>(Lcom/axis/axismerchantsdk/util/UPIJSInterface;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public endTransaction(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 395
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady()V

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 404
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 406
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 408
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 410
    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 413
    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p1, "INFO"

    const-string v0, "EXIT_SDK"

    const-string/jumbo v2, "session_end"

    .line 417
    invoke-virtual {p0, p1, v0, v2}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 421
    invoke-static {v1}, Lcom/axis/axismerchantsdk/util/Util;->extraCallback(Lorg/json/JSONObject;)V

    return-void

    .line 425
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$2;

    invoke-direct {v0, v1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface$2;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 433
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;-><init>()V

    const-string v1, "Exception in trackApi"

    .line 3021
    iput-object v1, v0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->onPostMessage:Ljava/lang/String;

    .line 3030
    iput-object p1, v0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->extraCallback:Ljava/lang/Throwable;

    .line 436
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage(Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;)V

    return-void
.end method

.method public getConfigURL()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/onSupportContentChanged$onMessageChannelReady;->dui_bundle_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDetails()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "androidId"

    .line 139
    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    const-string v3, "ANDROID"

    .line 140
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "androidAPILevel"

    .line 141
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "version"

    .line 142
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVersion"

    .line 143
    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    .line 144
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "manufacturer"

    .line 145
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "geocode"

    .line 146
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "location"

    .line 147
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "capability"

    .line 148
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ip"

    .line 149
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    .line 1161
    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1162
    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "com.freecharge.android"

    .line 1163
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "com.olive.axisupi"

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 150
    :cond_1
    :goto_0
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    .line 151
    invoke-virtual {p0}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "subscriberId"

    .line 152
    invoke-virtual {p0}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "UPIJsInterface"

    const-string v3, "Error fetching device details"

    .line 155
    invoke-static {v2, v3, v0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "android_id"

    .line 94
    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 96
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 97
    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 462
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/axis/axismerchantsdk/util/FileUtil;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFromSharedPrefs(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    const-string v1, "UPI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NO SUCH VALUE STORED"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIP()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    const-string v1, "MerchantApp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DevIP"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 229
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 230
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 2220
    iget-object v5, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-static {v5, v4}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const-string v6, "DENIED"

    if-ne v4, v5, :cond_0

    move-object v4, v6

    goto :goto_1

    :cond_0
    const-string v4, "GRANTED"

    .line 231
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->ICustomTabsCallback:Ljava/lang/String;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 238
    sput-object p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->asBinder:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    .line 239
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    const-class v1, Lcom/axis/axismerchantsdk/activity/EmptyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action"

    const-string v1, "getPermission"

    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "permissions"

    .line 243
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 247
    iget-object p2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 250
    :cond_3
    array-length p1, p2

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 251
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 252
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    .line 254
    invoke-virtual {p0, v0, p2, p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/onSupportContentChanged$onMessageChannelReady;->axis_version:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSIMOperators()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/util/Util;->extraCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 760
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object v0

    .line 14112
    iget-object v0, v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method

.method public getSha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "SHA-256"

    .line 264
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 266
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 2276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2277
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 2278
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2279
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    .line 2280
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2282
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2284
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "UPIJsInterface"

    const-string v1, "Error while generating SHA-256"

    .line 269
    invoke-static {v0, v1, p1}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 111
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 113
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 118
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    const-string v0, "SIM_CARD_NOT_AVAILABLE"

    return-object v0

    .line 126
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 127
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const-string v0, "error while fetching SubscriberId"

    return-object v0
.end method

.method public isAirplaneModeOn()Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 710
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-ge v0, v4, :cond_1

    .line 711
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v3

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public isDualSIM()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/util/SimUtil;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSDKDebuggable()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/onSupportContentChanged$onMessageChannelReady;->is_dui_debuggable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSimActive(I)Z
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 721
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    const-string v2, "phone"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x16

    if-ge v0, v5, :cond_1

    .line 722
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 724
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    if-ne p1, v1, :cond_0

    return v3

    :cond_0
    return v4

    .line 729
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v0, v5, :cond_3

    .line 731
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 733
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    .line 734
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    return v4

    .line 741
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_5

    .line 743
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 745
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 746
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 747
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 750
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    if-ne p1, v1, :cond_4

    return v3

    :cond_4
    return v4

    :cond_5
    return v3
.end method

.method public loadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/axis/axismerchantsdk/util/FileUtil;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :goto_0
    return-object v0
.end method

.method public final onPostMessage(I[Ljava/lang/String;[I)V
    .locals 9

    const-string v0, "\");"

    const-string v1, "\", \""

    const-string/jumbo v2, "window.callUICallback(\""

    const/4 v3, 0x0

    .line 172
    sput-object v3, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->asBinder:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 175
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 176
    :goto_0
    array-length v5, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "status"

    if-ge v4, v5, :cond_1

    .line 177
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 178
    array-length v7, p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "label"

    if-lez v7, :cond_0

    :try_start_2
    aget v7, p3, v4

    if-nez v7, :cond_0

    .line 179
    aget-object v7, p2, v4

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "GRANTED"

    .line 180
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 183
    :cond_0
    aget-object v7, p2, v4

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "DENIED"

    .line 184
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "SUCCESS"

    .line 189
    invoke-virtual {p2, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "permissions"

    .line 190
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 194
    :catch_0
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "ERROR"

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public prettyfyAndloadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "index_bundle.jsa"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "config.jsa"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/axis/axismerchantsdk/util/FileUtil;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, ".jsa"

    .line 476
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 478
    new-instance p1, Ljava/lang/String;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/util/PrettyfyUglifyJsFile;->onPostMessage([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, p1

    :catch_0
    :cond_2
    return-object v1
.end method

.method public removeFromSharedPrefs(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    const-string v1, "UPI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 326
    new-instance v0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;

    invoke-direct {v0, p0, p4}, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;-><init>(Lcom/axis/axismerchantsdk/util/UPIJSInterface;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->extraCallback:Landroid/content/BroadcastReceiver;

    .line 374
    iget-object p4, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SMS_SENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p4, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 375
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "SMS_DELIVERED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 376
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->extraCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 378
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/axis/axismerchantsdk/util/SimUtil;->extraCallback(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    return-void
.end method

.method public setInSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    const-string v1, "UPI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public trackApi(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    const-string v1, ""

    .line 529
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 530
    new-instance p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;

    invoke-direct {p1}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;-><init>()V

    const-string v3, "loadTime"

    .line 531
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3058
    iput-object v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onPostMessage:Ljava/lang/String;

    const-string v3, "loadStart"

    .line 532
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 4054
    iput-wide v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onNavigationEvent:J

    const-string v3, "loadEnd"

    .line 533
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 4069
    iput-wide v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onTransact:J

    const-string/jumbo v3, "statusCode"

    .line 534
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5050
    iput v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onMessageChannelReady:I

    .line 535
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6025
    iput-object v1, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback:Ljava/lang/String;

    .line 536
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onMessageChannelReady()V

    .line 537
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object v1

    .line 6229
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "type"

    const-string v4, "api_request"

    .line 6231
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "at"

    .line 6232
    iget-object v4, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->ICustomTabsCallback:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6233
    iget-object v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "page_load_start"

    .line 6234
    iget-wide v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onNavigationEvent:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "page_load_end"

    .line 6235
    iget-wide v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onTransact:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "latency"

    .line 6236
    iget-object v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onPostMessage:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "status_code"

    .line 6237
    iget v3, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onMessageChannelReady:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "apiId"

    .line 6238
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "label"

    const-string v3, "api_call"

    .line 6239
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "value"

    .line 6240
    iget-object p1, p1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6241
    invoke-virtual {v1, v2}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 539
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;-><init>()V

    const-string v1, "Exception in trackApi"

    .line 7021
    iput-object v1, v0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->onPostMessage:Ljava/lang/String;

    .line 7030
    iput-object p1, v0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->extraCallback:Ljava/lang/Throwable;

    .line 542
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage(Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;)V

    return-void
.end method

.method public trackApiError(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 549
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 7292
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "type"

    const-string v4, "api_error"

    .line 7293
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7294
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "at"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "stackTrace"

    .line 7295
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7296
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "apiId"

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7297
    invoke-virtual {v0, v2}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent(Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 604
    invoke-static {p1, p2}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 571
    :try_start_0
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/analytics/Event;-><init>()V

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 9048
    invoke-static {v1}, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/axis/axismerchantsdk/analytics/Event$Action;->valueOf(Ljava/lang/String;)Lcom/axis/axismerchantsdk/analytics/Event$Action;

    move-result-object p1

    .line 10017
    iget-object p1, p1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    .line 10057
    iput-object p1, v0, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    .line 10066
    iput-object p2, v0, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    .line 10075
    iput-object p3, v0, Lcom/axis/axismerchantsdk/analytics/Event;->onMessageChannelReady:Ljava/lang/String;

    .line 575
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public trackException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 596
    :try_start_0
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public trackPaymentStatus(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "gatewayResponseMessage"

    const-string v1, "gatewayResponseCode"

    const-string/jumbo v2, "txnRef"

    const-string/jumbo v3, "txnId"

    const-string v4, "errorCode"

    const-string v5, "errorDescription"

    const-string/jumbo v6, "status"

    const-string v7, ""

    .line 555
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 556
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 557
    invoke-virtual {v8, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v4, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-virtual {v8, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {v8, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-virtual {v8, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object v2

    .line 8245
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "type"

    const-string v7, "event"

    .line 8246
    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "label"

    .line 8247
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "value"

    .line 8248
    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8249
    invoke-virtual {p1, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8250
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "at"

    .line 8251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error_description"

    .line 8252
    invoke-virtual {p1, v5}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "txn_ref"

    const-string v1, "merchantRequestId"

    .line 8253
    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "txn_id"

    const-string v1, "gatewayTransactionId"

    .line 8254
    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "custom_response"

    const-string v1, "customResponse"

    .line 8255
    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8256
    invoke-virtual {v2, v3}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 564
    :catch_0
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    const-string p1, "error"

    const-string/jumbo v0, "trackPaymentStatus"

    invoke-static {p1, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo p2, "screen"

    .line 585
    :try_start_0
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/analytics/ScreenView;-><init>()V

    .line 11047
    iput-object p1, v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onMessageChannelReady:Ljava/lang/String;

    .line 11061
    iput-object p3, v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onNavigationEvent:Ljava/lang/String;

    .line 586
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onPostMessage()V

    .line 587
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p1

    .line 11277
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "type"

    .line 11278
    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "label"

    .line 11279
    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "value"

    .line 12043
    iget-object v1, v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onMessageChannelReady:Ljava/lang/String;

    .line 11280
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "at"

    .line 13039
    iget-object v1, v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->ICustomTabsCallback:Ljava/util/Date;

    .line 11281
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "title"

    .line 13043
    iget-object v1, v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onMessageChannelReady:Ljava/lang/String;

    .line 11282
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "uri"

    .line 14043
    iget-object v1, v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onMessageChannelReady:Ljava/lang/String;

    .line 11283
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "url"

    .line 14066
    iget-object v0, v0, Lcom/axis/axismerchantsdk/analytics/ScreenView;->onNavigationEvent:Ljava/lang/String;

    .line 11284
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "apiId"

    .line 11285
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "pageId"

    .line 11286
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ScreenView;->ICustomTabsCallback()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11288
    invoke-virtual {p1, p3}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->extraCallback:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "UPIJsInterface"

    const-string v2, "Exception while unregistering receiver"

    .line 388
    invoke-static {v1, v2, v0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
