.class public Lcom/freshchat/consumer/sdk/e/f;
.super Ljava/lang/Object;


# direct methods
.method private static ar(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/UserDeletedException;,
            Lcom/freshchat/consumer/sdk/exception/AppDeletedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/freshchat/consumer/sdk/b/a/a;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/b/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/a/a;->cn()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/a/a;->db()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/a/a;->fJ()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/freshchat/consumer/sdk/exception/AppDeletedException;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/exception/AppDeletedException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/freshchat/consumer/sdk/exception/UserDeletedException;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/exception/UserDeletedException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/f;->ar(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/UserDeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/freshchat/consumer/sdk/exception/AppDeletedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/y;->aG(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/service/e/l;

    invoke-direct {v2, v1}, Lcom/freshchat/consumer/sdk/service/e/l;-><init>(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/aa;->aK(Landroid/content/Context;)V

    invoke-static {p0, v2}, Lcom/freshchat/consumer/sdk/j/y;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/l;)V

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/b/e;->setAccountActive(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bA()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/a;->W(Landroid/content/Context;)V

    new-instance p0, Lcom/freshchat/consumer/sdk/exception/DeletedException;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/exception/DeletedException;-><init>()V

    throw p0

    :catch_1
    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;ZZ)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/a;->W(Landroid/content/Context;)V

    new-instance p0, Lcom/freshchat/consumer/sdk/exception/DeletedException;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/exception/DeletedException;-><init>()V

    throw p0
.end method
