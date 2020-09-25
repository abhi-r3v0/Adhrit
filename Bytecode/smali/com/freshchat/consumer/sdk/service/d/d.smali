.class public Lcom/freshchat/consumer/sdk/service/d/d;
.super Ljava/lang/Object;


# direct methods
.method public static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/freshchat/consumer/sdk/service/d/d$1;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/service/d/d$1;-><init>(Lcom/freshchat/consumer/sdk/service/e/j;)V

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/service/FreshchatService;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method public static bl(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/FreshchatService;->bk(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/FreshchatService;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method
