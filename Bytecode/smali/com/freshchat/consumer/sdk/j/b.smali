.class public Lcom/freshchat/consumer/sdk/j/b;
.super Ljava/lang/Object;


# direct methods
.method public static L(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/e;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/e;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static M(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/m;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/m;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static R(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static S(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/u;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/u;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static T(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/p;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/p;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static U(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public static V(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/c;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/c;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;Lcom/freshchat/consumer/sdk/service/a;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/freshchat/consumer/sdk/service/e/d$a;->gk:Lcom/freshchat/consumer/sdk/service/e/d$a;

    :cond_1
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/d;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/d;->p(I)V

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/service/e/d;->b(Lcom/freshchat/consumer/sdk/service/e/d$a;)V

    if-nez p3, :cond_2

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void

    :cond_2
    invoke-static {p0, v0, p3}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/aa;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/aa;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/aa;->a(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/service/a;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/q;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/q;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/q;->j(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/service/e/q;

    move-result-object p1

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;ZZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;ZZ)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/a;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/a;->setUser(Lcom/freshchat/consumer/sdk/beans/User;)V

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/service/e/a;->n(Z)V

    invoke-virtual {v0, p3}, Lcom/freshchat/consumer/sdk/service/e/a;->o(Z)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a;)V
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/ad;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/ad;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/ad;->p(Z)V

    if-nez p1, :cond_0

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/b$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/b$a;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/b$a;Lcom/freshchat/consumer/sdk/service/a;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/b$a;->gg:Lcom/freshchat/consumer/sdk/service/e/b$a;

    :cond_1
    new-instance p2, Lcom/freshchat/consumer/sdk/service/e/b;

    invoke-direct {p2}, Lcom/freshchat/consumer/sdk/service/e/b;-><init>()V

    invoke-virtual {p2, p1}, Lcom/freshchat/consumer/sdk/service/e/b;->b(Lcom/freshchat/consumer/sdk/service/e/b$a;)V

    invoke-static {p0, p2}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/f$a;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/f$a;->gp:Lcom/freshchat/consumer/sdk/service/e/f$a;

    :cond_1
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/f;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/f;->b(Lcom/freshchat/consumer/sdk/service/e/f$a;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/z$a;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/z;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/z;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/z;->a(Lcom/freshchat/consumer/sdk/service/e/z$a;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/y;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/y;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/y;->K(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/y;

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/service/e/y;->s(Z)Lcom/freshchat/consumer/sdk/service/e/y;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;JJ)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/x;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/service/e/x;-><init>(JJ)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static bJ(Landroid/content/Context;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v2

    new-instance v4, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v4, p0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvWindow()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/freshchat/consumer/sdk/c/g;->p(J)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getMsgFetchIntervalNormal()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v6

    cmp-long v6, v4, v1

    if-lez v6, :cond_2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const/16 v0, 0xe

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/d$a;->gj:Lcom/freshchat/consumer/sdk/service/e/d$a;

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;)V

    :cond_3
    return-void
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/v;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/v;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/v;->t(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/ab;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/ab;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/User;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;ZZ)V

    return-void
.end method
