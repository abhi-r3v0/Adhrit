.class Lin/juspay/hypersdk/core/JBridge$9;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->callAPI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$dynamicUI:Lin/juspay/mystique/DynamicUI;

.field final synthetic val$headers:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$netUtils:Lin/juspay/hypersdk/utils/network/NetUtils;

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

.field final synthetic val$shouldEncodeToFormData:Z

.field final synthetic val$startTime:Ljava/lang/Long;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Lin/juspay/hypersdk/core/SdkTracker;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lin/juspay/mystique/DynamicUI;Ljava/lang/String;ZLin/juspay/hypersdk/utils/network/NetUtils;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$9;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$startTime:Ljava/lang/Long;

    iput-object p5, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$data:Ljava/lang/String;

    iput-object p6, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$method:Ljava/lang/String;

    iput-object p7, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$callback:Ljava/lang/String;

    iput-object p8, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$dynamicUI:Lin/juspay/mystique/DynamicUI;

    iput-object p9, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$headers:Ljava/lang/String;

    iput-boolean p10, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$shouldEncodeToFormData:Z

    iput-object p11, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$netUtils:Lin/juspay/hypersdk/utils/network/NetUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private toMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$9;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {p1}, Lin/juspay/hypersdk/core/JBridge;->access$300(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object p1

    const-string v0, "JBridge"

    const-string v1, "Not a json string. Passing as such"

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;
    .locals 9

    const/4 p1, -0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$headers:Ljava/lang/String;

    invoke-direct {p0, v1}, Lin/juspay/hypersdk/core/JBridge$9;->toMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-boolean v2, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$shouldEncodeToFormData:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$data:Ljava/lang/String;

    invoke-direct {p0, v2}, Lin/juspay/hypersdk/core/JBridge$9;->toMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v3, "GET"

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$netUtils:Lin/juspay/hypersdk/utils/network/NetUtils;

    iget-object v5, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5, v1, v2}, Lin/juspay/hypersdk/utils/network/NetUtils;->doGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {v3, v1}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v3

    :cond_1
    const-string v3, "POST"

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    new-instance v2, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$netUtils:Lin/juspay/hypersdk/utils/network/NetUtils;

    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$data:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Lin/juspay/hypersdk/utils/network/NetUtils;->postUrl(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {v2, v1}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v2

    :cond_2
    new-instance v3, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$netUtils:Lin/juspay/hypersdk/utils/network/NetUtils;

    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1, v2}, Lin/juspay/hypersdk/utils/network/NetUtils;->postUrl(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {v3, v1}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v3

    :cond_3
    const-string v3, "DELETE"

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_4

    new-instance v2, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$netUtils:Lin/juspay/hypersdk/utils/network/NetUtils;

    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$data:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Lin/juspay/hypersdk/utils/network/NetUtils;->deleteUrl(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {v2, v1}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v2

    :cond_4
    new-instance v3, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$netUtils:Lin/juspay/hypersdk/utils/network/NetUtils;

    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1, v2}, Lin/juspay/hypersdk/utils/network/NetUtils;->deleteUrl(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {v3, v1}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v3

    :cond_5
    const-string v2, "PUT"

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$netUtils:Lin/juspay/hypersdk/utils/network/NetUtils;

    invoke-static {v3, v4, v1, v5}, Lin/juspay/hypersdk/utils/network/NetUtils;->doPut(Ljava/net/URL;[BLjava/util/Map;Lin/juspay/hypersdk/utils/network/NetUtils;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {v2, v1}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_6
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v3, "JBridge"

    const-string v4, "api_call"

    const-string v5, "network"

    const-string v6, "network_call"

    const-string v7, "Exception while calling api"

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, p1, v1, v0}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(I[BLjava/util/Map;)V

    return-object v2

    :catch_1
    move-exception v1

    move-object v8, v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$9;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v3, "JBridge"

    const-string v4, "api_call"

    const-string v5, "network"

    const-string v6, "network_call"

    const-string v7, "Exception while calling api"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    const-string v2, "Network Error"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(I[BLjava/util/Map;)V

    return-object v1

    :catch_2
    new-instance p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    const/4 v1, -0x2

    const-string v2, "SSL Handshake Failed"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p1, v1, v2, v0}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(I[BLjava/util/Map;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/JBridge$9;->doInBackground([Ljava/lang/Object;)Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 38

    move-object/from16 v1, p0

    const-string v0, "failure"

    const-string v2, "window.callUICallback(\'%s\',\'%s\',\'%s\',\'%s\',\'%s\');"

    const-string v3, "{}"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/4 v15, 0x2

    if-eqz p1, :cond_8

    move-object/from16 v10, p1

    check-cast v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    iget-object v11, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responsePayload:[B

    if-eqz v11, :cond_0

    iget-object v11, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    iget v12, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v12, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    iget-object v13, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$startTime:Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    iget-object v14, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$data:Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    iget-object v4, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responsePayload:[B

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    iget-object v4, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$method:Ljava/lang/String;

    const-string v17, "network"

    const-string v18, "info"

    const-string v19, "network_call"

    move-object/from16 v16, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v24, v14

    move-object/from16 v25, v8

    move-object/from16 v26, v4

    invoke-virtual/range {v16 .. v26}, Lin/juspay/hypersdk/core/SdkTracker;->trackApiCalls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    iget v8, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    iget-object v8, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    iget-object v11, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$startTime:Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    iget-object v12, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$data:Ljava/lang/String;

    const/16 v36, 0x0

    iget-object v13, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$method:Ljava/lang/String;

    const-string v28, "network"

    const-string v29, "info"

    const-string v30, "network_call"

    move-object/from16 v27, v4

    move-object/from16 v32, v8

    move-object/from16 v33, v11

    move-object/from16 v35, v12

    move-object/from16 v37, v13

    invoke-virtual/range {v27 .. v37}, Lin/juspay/hypersdk/core/SdkTracker;->trackApiCalls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget v4, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    if-eq v4, v9, :cond_6

    iget v4, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    const/4 v8, -0x2

    if-ne v4, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responsePayload:[B

    const-string v2, "This happened: "

    const-string v3, "JBridge"

    const-string v4, ""

    if-nez v0, :cond_2

    move-object v8, v4

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/String;

    iget-object v0, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responsePayload:[B

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lin/juspay/hypersdk/core/JBridge$9;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v9}, Lin/juspay/hypersdk/core/JBridge;->access$300(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v9

    const-string v11, "message"

    invoke-virtual {v9, v11, v0}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v2, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, v1, Lin/juspay/hypersdk/core/JBridge$9;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$300(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "Response inserted: "

    invoke-virtual {v0, v12, v9}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v14, Lorg/json/JSONArray;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v14, v12}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object v9, v1, Lin/juspay/hypersdk/core/JBridge$9;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v9}, Lin/juspay/hypersdk/core/JBridge;->access$300(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v9

    const-string v12, "headers"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v3, v2, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    iget-object v0, v1, Lin/juspay/hypersdk/core/JBridge$9;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$300(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Headers inserted: "

    invoke-virtual {v0, v3, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$callback:Ljava/lang/String;

    aput-object v2, v0, v7

    const-string v2, "success"

    aput-object v2, v0, v6

    aput-object v8, v0, v15

    iget v2, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object v4, v0, v2

    const-string v2, "window.callUICallback(\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',\'%s\');"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lin/juspay/hypersdk/core/JBridge$9;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v2}, Lin/juspay/hypersdk/core/JBridge;->access$300(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v2

    const-string v3, "Js inserted: "

    invoke-virtual {v2, v3, v0}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$callback:Ljava/lang/String;

    aput-object v8, v4, v7

    aput-object v0, v4, v6

    aput-object v3, v4, v15

    iget v0, v10, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    iget-object v10, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    iget-object v4, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    iget-object v8, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$startTime:Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-object v9, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$data:Ljava/lang/String;

    iget-object v14, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$method:Ljava/lang/String;

    const-string v11, "network"

    const-string v12, "info"

    const-string v13, "network_call"

    const-string v19, "failure"

    move-object/from16 v20, v14

    move-object/from16 v14, v21

    const/4 v5, 0x2

    move-object v15, v4

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    invoke-virtual/range {v10 .. v20}, Lin/juspay/hypersdk/core/SdkTracker;->trackApiCalls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$callback:Ljava/lang/String;

    aput-object v8, v4, v7

    aput-object v0, v4, v6

    aput-object v3, v4, v5

    const/4 v3, 0x3

    aput-object v21, v4, v3

    iget-object v0, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lin/juspay/hypersdk/core/JBridge$9;->val$dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
