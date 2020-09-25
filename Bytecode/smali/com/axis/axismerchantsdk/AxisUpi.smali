.class public Lcom/axis/axismerchantsdk/AxisUpi;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

.field private static extraCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

.field public static onNavigationEvent:Lin/juspay/mystique/DynamicUI;

.field private static onPostMessage:Lcom/axis/axismerchantsdk/util/UPIJSInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->extraCallback:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V
    .locals 8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sput-object p2, Lcom/axis/axismerchantsdk/AxisUpi;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 49
    invoke-static {}, Lcom/axis/axismerchantsdk/model/SessionParams;->ICustomTabsCallback()V

    .line 50
    invoke-static {}, Lcom/axis/axismerchantsdk/model/SessionParams;->extraCallback()Lcom/axis/axismerchantsdk/model/SessionParams;

    .line 51
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent()V

    .line 52
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p2

    .line 1215
    iput-object p1, p2, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    .line 1216
    invoke-virtual {p2}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady()V

    .line 53
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p2

    .line 2088
    :try_start_0
    iget-object v0, p2, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2089
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p2, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady:Ljava/util/Timer;

    .line 2090
    iget-object v1, p2, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady:Ljava/util/Timer;

    iget-object v2, p2, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent:Ljava/util/TimerTask;

    sget-wide v3, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback:J

    sget-wide v5, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2215
    :cond_0
    iput-object p1, p2, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    .line 2216
    invoke-virtual {p2}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1224
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage:Ljava/lang/String;

    const-string v1, "Exception while setting timer interval"

    invoke-static {v0, v1, p2}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onPostMessage()V

    .line 3102
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p2, "file:///android_asset/production_index.html"

    const-string v0, "file:///android_asset/index.html"

    .line 3104
    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object v5

    .line 3105
    new-instance v1, Lin/juspay/mystique/DynamicUI;

    const/4 v6, 0x0

    new-instance v7, Lcom/axis/axismerchantsdk/AxisUpi$1;

    invoke-direct {v7}, Lcom/axis/axismerchantsdk/AxisUpi$1;-><init>()V

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lin/juspay/mystique/DynamicUI;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;[Ljava/lang/String;Landroid/os/Bundle;Lin/juspay/mystique/ErrorCallback;)V

    sput-object v1, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    .line 3111
    new-instance v1, Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    sget-object v2, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    invoke-direct {v1, p1, v2}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;-><init>(Landroid/content/Context;Lin/juspay/mystique/DynamicUI;)V

    sput-object v1, Lcom/axis/axismerchantsdk/AxisUpi;->onPostMessage:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    .line 3112
    sget-object v2, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    const-string v3, "JBridge"

    invoke-virtual {v2, v1, v3}, Lin/juspay/mystique/DynamicUI;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3120
    new-instance v1, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    sget-object v2, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    invoke-direct {v1, p1, v2}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;-><init>(Landroid/content/Context;Lin/juspay/mystique/DynamicUI;)V

    sput-object v1, Lcom/axis/axismerchantsdk/AxisUpi;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    .line 3121
    sget-object v2, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    const-string v3, "NPCICL"

    invoke-virtual {v2, v1, v3}, Lin/juspay/mystique/DynamicUI;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/onSupportContentChanged$onMessageChannelReady;->dui_config_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lo/onSupportContentChanged$onMessageChannelReady;->axis_version:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3128
    sget-object v2, Lcom/axis/axismerchantsdk/AxisUpi;->onPostMessage:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    const-string v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->downloadFile(Ljava/lang/String;ZLjava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lo/onSupportContentChanged$extraCallback;->app_debuggable:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    sget-object p1, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1, v0}, Lin/juspay/mystique/DynamicUI;->loadURL(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_1
    sget-object p1, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->loadURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lin/juspay/mystique/DynamicUI;
    .locals 1

    .line 26
    sget-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    return-object v0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 79
    sget-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V
    .locals 1

    .line 84
    sget-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    .line 4045
    iput-object p3, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage:Landroid/app/Activity;

    .line 85
    sget-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->onPostMessage:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    .line 4063
    iput-object p3, v0, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onPostMessage:Landroid/app/Activity;

    .line 86
    sget-object p3, Lcom/axis/axismerchantsdk/AxisUpi;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4095
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p3, 0x2

    invoke-static {p1, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 4096
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 4097
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 4098
    sget-object p3, Lcom/axis/axismerchantsdk/AxisUpi;->onNavigationEvent:Lin/juspay/mystique/DynamicUI;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "window.callOnSDK(\""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\""

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;)Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;
    .locals 1

    const-string v0, ""

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object p0, Lcom/axis/axismerchantsdk/AxisUpi;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    return-object p0

    .line 71
    :cond_0
    sget-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/axis/axismerchantsdk/AxisUpi;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
