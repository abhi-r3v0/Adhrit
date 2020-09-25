.class public Lcom/freshchat/consumer/sdk/service/c/g;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/e;",
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

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUserAuthConfig()Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isJwtAuthEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUserAuthConfig()Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isJwtAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/a;->aY(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/e;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bz()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/g;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getRemoteConfigFetchInterval()J

    move-result-wide v6

    sub-long/2addr v2, v4

    cmp-long p1, v2, v6

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/e;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/g;->a(Lcom/freshchat/consumer/sdk/service/e/e;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p1

    new-instance v1, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/e/a;->gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/freshchat/consumer/sdk/j/ap;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lcom/freshchat/consumer/sdk/service/c/g;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bA()V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_1
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/e;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/g;->b(Lcom/freshchat/consumer/sdk/service/e/e;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
