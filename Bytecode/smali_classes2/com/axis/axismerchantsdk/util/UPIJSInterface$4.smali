.class Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/UPIJSInterface;->callAPI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic asInterface:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/UPIJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->asInterface:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->extraCallback:Ljava/lang/String;

    iput-object p5, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onPostMessage:Ljava/lang/String;

    iput-object p6, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private ICustomTabsCallback()Lcom/axis/axismerchantsdk/model/ApiResponse;
    .locals 6

    .line 659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 661
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->extraCallback:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 663
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 665
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "GET"

    .line 669
    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 671
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 673
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 674
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 675
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 676
    invoke-virtual {v2, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onPostMessage(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "POST"

    .line 680
    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 681
    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/axis/axismerchantsdk/analytics/RestClient;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 685
    new-instance v1, Lcom/axis/axismerchantsdk/model/ApiResponse;

    invoke-direct {v1}, Lcom/axis/axismerchantsdk/model/ApiResponse;-><init>()V

    const/4 v2, -0x1

    .line 4025
    iput v2, v1, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    .line 687
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 4033
    iput-object v2, v1, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B

    .line 688
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 689
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 690
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->asInterface:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->trackApiError(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 624
    invoke-direct {p0}, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->ICustomTabsCallback()Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 14

    const-string v0, "failure"

    const-string v1, "{}"

    const-string v2, "window.callUICallback(\'%s\',\'%s\',\'%s\',\'%s\',\'%s\');"

    const-string v3, "Please check if HTTP method (GET, POST, ..) is supported"

    if-nez p1, :cond_0

    .line 628
    sget-object v4, Lcom/axis/axismerchantsdk/util/Util;->extraCallback:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    check-cast p1, Lcom/axis/axismerchantsdk/model/ApiResponse;

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x2

    .line 1021
    :try_start_0
    iget v11, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    if-ne v11, v4, :cond_1

    .line 633
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    .line 634
    iget-object v13, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v13, v12, v8

    aput-object v0, v12, v7

    aput-object v11, v12, v10

    .line 2021
    iget p1, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    .line 634
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v12, v6

    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    aput-object p1, v12, v5

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 635
    iget-object v11, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->asInterface:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {v11}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v11

    invoke-virtual {v11, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void

    .line 2029
    :cond_1
    iget-object v11, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B

    if-nez v11, :cond_2

    const-string v11, ""

    goto :goto_0

    .line 3029
    :cond_2
    iget-object v11, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B

    .line 641
    invoke-static {v11, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    :goto_0
    new-array v12, v9, [Ljava/lang/Object;

    .line 643
    iget-object v13, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v13, v12, v8

    const-string v13, "success"

    aput-object v13, v12, v7

    aput-object v11, v12, v10

    .line 4021
    iget p1, p1, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    .line 643
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v12, v6

    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    aput-object p1, v12, v5

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 644
    iget-object v11, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->asInterface:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {v11}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v11

    invoke-virtual {v11, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 649
    :catch_0
    sget-object p1, Lcom/axis/axismerchantsdk/util/Util;->extraCallback:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-array v1, v9, [Ljava/lang/Object;

    .line 651
    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v3, v1, v8

    aput-object v0, v1, v7

    aput-object p1, v1, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 652
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$4;->asInterface:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void
.end method
