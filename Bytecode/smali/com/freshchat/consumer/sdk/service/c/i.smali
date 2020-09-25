.class public Lcom/freshchat/consumer/sdk/service/c/i;
.super Lcom/freshchat/consumer/sdk/service/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/b<",
        "Lcom/freshchat/consumer/sdk/service/e/g;",
        "Lcom/freshchat/consumer/sdk/service/e/w;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/g;)Lcom/freshchat/consumer/sdk/service/e/w;
    .locals 7

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/w;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/w;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/freshchat/consumer/sdk/c/g;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/g;->dG()Ljava/util/List;

    move-result-object p1

    new-instance v3, Lcom/freshchat/consumer/sdk/c/c;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/freshchat/consumer/sdk/c/c;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/c/g;->cF()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    sget-object p1, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->STATUS_SUCCESS:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/service/e/w;->m(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v2, Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;->STATUS_ERROR:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/w;->setCount(I)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/w;->a(Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;)V

    return-object v0
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/g;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/i;->a(Lcom/freshchat/consumer/sdk/service/e/g;)Lcom/freshchat/consumer/sdk/service/e/w;

    move-result-object p1

    return-object p1
.end method
