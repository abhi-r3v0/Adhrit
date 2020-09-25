.class public Lcom/freshchat/consumer/sdk/service/c/v;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/y;",
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

.method private c(Lcom/freshchat/consumer/sdk/service/e/y;)V
    .locals 4

    const-string v0, "FRESHCHAT"

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to send GCM device token for user "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/service/a/a;

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/y;->dP()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/freshchat/consumer/sdk/service/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    const-string p1, "Adding GCM device token to backlog for user "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/freshchat/consumer/sdk/service/e/y;)Z
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

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->aA(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/y;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/v;->b(Lcom/freshchat/consumer/sdk/service/e/y;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/y;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 8

    const-string v0, "FRESHCHAT"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/v;->a(Lcom/freshchat/consumer/sdk/service/e/y;)Z

    move-result v3
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {v0, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V
    :try_end_1
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/v;->c(Lcom/freshchat/consumer/sdk/service/e/y;)V

    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/y;->dP()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Sending GCM device token for user "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bP()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {v0, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object v0

    :cond_1
    invoke-virtual {v3, v5}, Lcom/freshchat/consumer/sdk/b/e;->G(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/y;->dQ()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6, v5}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object v0

    :cond_2
    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/y;->dP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/freshchat/consumer/sdk/e/a;->ad(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    :try_start_3
    const-string v5, "Sent GCM device token successfully for user "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/v;->c(Lcom/freshchat/consumer/sdk/service/e/y;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    :goto_3
    :try_start_5
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v2, v3

    :cond_6
    :goto_4
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :goto_5
    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/v;->c(Lcom/freshchat/consumer/sdk/service/e/y;)V

    :cond_7
    throw v0
.end method
