.class public abstract Lcom/appsflyer/OneLinkHttpTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/OneLinkHttpTask$HttpsUrlConnectionProvider;
    }
.end annotation


# static fields
.field static final BASE_URL:Ljava/lang/String; = "https://%sonelink.%s/shortlink-sdk/v1"

.field static final NO_CONNECTION_ERROR_MSG:Ljava/lang/String; = "Can\'t get one link data"

.field private static final WAIT_TIMEOUT:I = 0xbb8


# instance fields
.field private afLib:Lcom/appsflyer/AppsFlyerLibCore;

.field private connectionProvider:Lcom/appsflyer/OneLinkHttpTask$HttpsUrlConnectionProvider;

.field public oneLinkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/appsflyer/OneLinkHttpTask;->afLib:Lcom/appsflyer/AppsFlyerLibCore;

    return-void
.end method

.method private doRequest()V
    .locals 7

    const-string v0, ""

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 46
    invoke-virtual {p0}, Lcom/appsflyer/OneLinkHttpTask;->getOneLinkUrl()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "oneLinkUrl: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 50
    :try_start_0
    iget-object v4, p0, Lcom/appsflyer/OneLinkHttpTask;->connectionProvider:Lcom/appsflyer/OneLinkHttpTask$HttpsUrlConnectionProvider;

    invoke-virtual {v4, v3}, Lcom/appsflyer/OneLinkHttpTask$HttpsUrlConnectionProvider;->ǃ(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v4

    const-string v5, "content-type"

    const-string v6, "application/json"

    .line 51
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "authorization"

    .line 52
    invoke-static {v1, v2}, Lcom/appsflyer/internal/z;->ι(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "af-timestamp"

    .line 53
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xbb8

    .line 54
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 55
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 57
    invoke-virtual {p0, v4}, Lcom/appsflyer/OneLinkHttpTask;->initRequest(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 59
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 60
    iget-object v2, p0, Lcom/appsflyer/OneLinkHttpTask;->afLib:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v2, v4}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_0

    :try_start_1
    const-string v1, "Status 200 ok"

    .line 63
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Response code = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 68
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Error while calling "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stacktrace: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection call succeeded: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/appsflyer/OneLinkHttpTask;->handleResponse(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection error: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/appsflyer/OneLinkHttpTask;->onErrorResponse()V

    return-void
.end method


# virtual methods
.method protected abstract getOneLinkUrl()Ljava/lang/String;
.end method

.method protected abstract handleResponse(Ljava/lang/String;)V
.end method

.method protected abstract initRequest(Ljavax/net/ssl/HttpsURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract onErrorResponse()V
.end method

.method public run()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/appsflyer/OneLinkHttpTask;->doRequest()V

    return-void
.end method

.method public setConnProvider(Lcom/appsflyer/OneLinkHttpTask$HttpsUrlConnectionProvider;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/appsflyer/OneLinkHttpTask;->connectionProvider:Lcom/appsflyer/OneLinkHttpTask$HttpsUrlConnectionProvider;

    return-void
.end method
