.class public Lcom/freshchat/consumer/sdk/service/c/m;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/n;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/n;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 8

    const-string v0, "com.freshchat.consumer.sdk.actions.ArticleVoted"

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/m;->b(Lcom/freshchat/consumer/sdk/service/e/n;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/n;->dJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/n;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/n;->dK()Lcom/freshchat/consumer/sdk/service/e/n$a;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/n;->dK()Lcom/freshchat/consumer/sdk/service/e/n$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v6, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4, v3, v5}, Lcom/freshchat/consumer/sdk/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v4, Lcom/freshchat/consumer/sdk/b/j;

    invoke-direct {v4, v1}, Lcom/freshchat/consumer/sdk/b/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/n;->dK()Lcom/freshchat/consumer/sdk/service/e/n$a;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Lcom/freshchat/consumer/sdk/b/j;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/n$a;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    :goto_0
    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/b/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :goto_2
    if-eqz v2, :cond_3

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/b/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    throw p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/n;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/m;->a(Lcom/freshchat/consumer/sdk/service/e/n;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/freshchat/consumer/sdk/service/e/n;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->az(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
