.class Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/HyperJsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApiCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private headers:Ljava/lang/String;

.field private isSSLPinned:Z

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private method:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->method:Ljava/lang/String;

    iput-object p2, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->url:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->data:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->headers:Ljava/lang/String;

    iput-boolean p5, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->isSSLPinned:Z

    iput-object p6, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->callback:Ljava/lang/String;

    iput-object p7, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

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
    iget-object p1, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v0, "HyperJsInterface"

    const-string v1, "Not a json string. Passing as such"

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;
    .locals 6

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Lin/juspay/hypersdk/utils/network/NetUtils;

    iget-boolean v1, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->isSSLPinned:Z

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lin/juspay/hypersdk/utils/network/NetUtils;-><init>(IIZ)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->headers:Ljava/lang/String;

    invoke-direct {p0, v1}, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->toMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->data:Ljava/lang/String;

    invoke-direct {p0, v2}, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->toMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "GET"

    iget-object v4, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    iget-object v4, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Lin/juspay/hypersdk/utils/network/NetUtils;->doGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v3, v0}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v3

    :cond_0
    const-string v3, "POST"

    iget-object v4, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->data:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Lin/juspay/hypersdk/utils/network/NetUtils;->postUrl(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v2, v0}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v2

    :cond_1
    new-instance v3, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1, v2}, Lin/juspay/hypersdk/utils/network/NetUtils;->postUrl(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v3, v0}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_2
    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;-><init>(I[BLjava/util/Map;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->doInBackground([Ljava/lang/Void;)Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "failure"

    const-string v3, "{}"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x5

    const-string v8, "window.callUICallback(\'%s\',\'%s\',\'%s\',\'%s\',\'%s\');"

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz p1, :cond_5

    const-string v11, "HyperJsInterface"

    const-string v12, "Please check if HTTP method (GET, POST, ..) is supported"

    invoke-static {v11, v12}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    const-string v12, " "

    const-string v13, "Response inserted: "

    if-ne v11, v1, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->callback:Ljava/lang/String;

    aput-object v7, v3, v9

    aput-object v2, v3, v6

    aput-object v1, v3, v10

    iget p1, p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    aput-object p1, v3, v4

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responsePayload:[B

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responsePayload:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/String;

    iget-object v12, p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responsePayload:[B

    if-eqz v12, :cond_3

    iget-object v12, p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responsePayload:[B

    goto :goto_1

    :cond_3
    new-array v12, v9, [B

    :goto_1
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->callback:Ljava/lang/String;

    aput-object v3, v2, v9

    const-string v3, "success"

    aput-object v3, v2, v6

    aput-object v1, v2, v10

    iget p1, p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    aput-object p1, v2, v4

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->callback:Ljava/lang/String;

    aput-object v7, v3, v9

    aput-object v2, v3, v6

    aput-object p1, v3, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    aput-object p1, v3, v4

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/HyperJsInterface$ApiCallTask;->onPostExecute(Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;)V

    return-void
.end method
