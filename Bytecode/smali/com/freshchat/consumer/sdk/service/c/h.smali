.class public Lcom/freshchat/consumer/sdk/service/c/h;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/f;",
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

.method private a(Lcom/freshchat/consumer/sdk/service/e/f$a;)J
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getFaqFetchIntervalNormal()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/f$a;->gp:Lcom/freshchat/consumer/sdk/service/e/f$a;

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getFaqFetchIntervalLaidback()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/f;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/h;->b(Lcom/freshchat/consumer/sdk/service/e/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/service/d/e;->x(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/a;->h(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/z$a;->gM:Lcom/freshchat/consumer/sdk/service/e/z$a;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/z$a;)V

    :cond_1
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/f;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/h;->a(Lcom/freshchat/consumer/sdk/service/e/f;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/freshchat/consumer/sdk/service/e/f;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/w;->az(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ah;->aO(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->br()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/f;->dF()Lcom/freshchat/consumer/sdk/service/e/f$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/h;->a(Lcom/freshchat/consumer/sdk/service/e/f$a;)J

    move-result-wide v7

    sub-long/2addr v3, v5

    cmp-long p1, v3, v7

    if-lez p1, :cond_4

    return v2

    :cond_4
    return v1
.end method
