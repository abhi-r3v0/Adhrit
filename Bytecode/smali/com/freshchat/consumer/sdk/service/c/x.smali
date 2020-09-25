.class public Lcom/freshchat/consumer/sdk/service/c/x;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/aa;",
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

.method private c(Lcom/freshchat/consumer/sdk/service/e/aa;)V
    .locals 4

    :try_start_0
    const-string v0, "FRESHCHAT"

    const-string v1, "Failed to update marketing message status. Backlogging"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/aa;->dS()Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fc_marketing_metrics"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->getMarketingId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/a;

    const/4 v2, 0x6

    invoke-direct {v0, v2, p1}, Lcom/freshchat/consumer/sdk/service/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/service/a/a;->b(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/freshchat/consumer/sdk/service/e/aa;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/aa;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/x;->a(Lcom/freshchat/consumer/sdk/service/e/aa;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/aa;->dS()Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->getMarketingId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->getDelivered()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->getClicked()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->getSeen()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "FRESHCHAT"

    const-string v4, "Marketing message status updated => "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/x;->c(Lcom/freshchat/consumer/sdk/service/e/aa;)V

    :goto_1
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :catchall_2
    move-exception v0

    move v1, v2

    :goto_2
    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/x;->c(Lcom/freshchat/consumer/sdk/service/e/aa;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/aa;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/x;->b(Lcom/freshchat/consumer/sdk/service/e/aa;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
