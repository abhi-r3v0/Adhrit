.class public Lcom/freshchat/consumer/sdk/service/a/e;
.super Lcom/freshchat/consumer/sdk/service/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/a/d;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-void
.end method


# virtual methods
.method public ds()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->dt()Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->getMeta()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fc_create_or_update_user"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "{}"

    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->ch()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v2

    const-class v3, Lcom/freshchat/consumer/sdk/service/e/a;

    invoke-virtual {v2, v1, v3}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/service/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/freshchat/consumer/sdk/service/a/e$1;

    invoke-direct {v3, p0, v0}, Lcom/freshchat/consumer/sdk/service/a/e$1;-><init>(Lcom/freshchat/consumer/sdk/service/a/e;Lcom/freshchat/consumer/sdk/service/a/a;)V

    invoke-static {v2, v1, v3}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
