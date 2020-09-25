.class public Lcom/freshchat/consumer/sdk/j/bd;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/b/e;->bh(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bI(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->gm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    const-class v2, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    invoke-virtual {v1, p0, v2}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method
