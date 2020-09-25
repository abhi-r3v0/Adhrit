.class public Lcom/freshchat/consumer/sdk/service/c/d;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/b;",
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

.method private a(Lcom/freshchat/consumer/sdk/service/e/b$a;)J
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->ge:Lcom/freshchat/consumer/sdk/service/e/b$a;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->gf:Lcom/freshchat/consumer/sdk/service/e/b$a;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/d;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getChannelsFetchIntervalNormal()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->gg:Lcom/freshchat/consumer/sdk/service/e/b$a;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/d;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getChannelsFetchIntervalLaidback()J

    move-result-wide v1

    :cond_2
    :goto_0
    return-wide v1
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/b;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/d;->b(Lcom/freshchat/consumer/sdk/service/e/b;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/service/d/a;->v(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/z$a;->gN:Lcom/freshchat/consumer/sdk/service/e/z$a;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/z$a;)V

    :cond_1
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/b;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/d;->a(Lcom/freshchat/consumer/sdk/service/e/b;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/freshchat/consumer/sdk/service/e/b;)Z
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

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/w;->aA(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ah;->aP(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bG()Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/b;->dC()Lcom/freshchat/consumer/sdk/service/e/b$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/d;->a(Lcom/freshchat/consumer/sdk/service/e/b$a;)J

    move-result-wide v7

    sub-long/2addr v3, v5

    cmp-long p1, v3, v7

    if-lez p1, :cond_4

    return v2

    :cond_4
    return v1
.end method
