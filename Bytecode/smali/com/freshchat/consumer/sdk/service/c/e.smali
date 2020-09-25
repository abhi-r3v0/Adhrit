.class public Lcom/freshchat/consumer/sdk/service/c/e;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/c;",
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
.method protected a(Lcom/freshchat/consumer/sdk/service/e/c;)Z
    .locals 7

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
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/r;->ey()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/e;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getResponseTimeExpectationsFetchInterval()J

    move-result-wide v5

    sub-long/2addr v3, v1

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/c;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/e;->a(Lcom/freshchat/consumer/sdk/service/e/c;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/e/a;->cZ()Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;

    move-result-object v1
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/j/r;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/a;->X(Landroid/content/Context;)V

    :cond_1
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/c;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/e;->b(Lcom/freshchat/consumer/sdk/service/e/c;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
