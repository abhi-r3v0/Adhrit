.class public Lcom/freshchat/consumer/sdk/service/c/aa;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/ad;",
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

.method private c(Lcom/freshchat/consumer/sdk/service/e/ad;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ad;->dT()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FRESHCHAT"

    const-string v0, "Backlogging user session request failure"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/a/a;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/a/a;-><init>(I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/freshchat/consumer/sdk/service/e/ad;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->dC:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FRESHCHAT"

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/ad;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/aa;->a(Lcom/freshchat/consumer/sdk/service/e/ad;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/freshchat/consumer/sdk/e/a;

    invoke-direct {v3, v0}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/e/a;->cV()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "FRESHCHAT"

    const-string v3, "Registered user session"

    invoke-static {v0, v3}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/aa;->c(Lcom/freshchat/consumer/sdk/service/e/ad;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_3
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :goto_4
    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/aa;->c(Lcom/freshchat/consumer/sdk/service/e/ad;)V

    :cond_4
    throw v0
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/ad;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/aa;->b(Lcom/freshchat/consumer/sdk/service/e/ad;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
