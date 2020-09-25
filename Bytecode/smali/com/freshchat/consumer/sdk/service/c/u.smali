.class public Lcom/freshchat/consumer/sdk/service/c/u;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/x;",
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

.method private b(Lcom/freshchat/consumer/sdk/service/e/x;)V
    .locals 5

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fc_conv_read_status"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "7_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/x;->getChannelId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x7

    invoke-direct {v0, v2, p1}, Lcom/freshchat/consumer/sdk/service/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/service/a/a;->b(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/x;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 11

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v10, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/x;->getChannelId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/x;->getConversationId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/x;->getReadUpto()J

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;-><init>(JJJ)V

    invoke-virtual {v10}, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->getReadUpto()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    new-instance v3, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v3, v0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/x;->getChannelId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/freshchat/consumer/sdk/c/g;->l(J)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->setReadUpto(J)V

    :cond_0
    invoke-virtual {v10}, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->getReadUpto()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object v0

    :cond_1
    new-instance v3, Lcom/freshchat/consumer/sdk/e/a;

    invoke-direct {v3, v0}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Lcom/freshchat/consumer/sdk/e/a;->a(Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/a;->f(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/a;->aJ(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/u;->b(Lcom/freshchat/consumer/sdk/service/e/x;)V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception p1

    const/4 v1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_2
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/x;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/u;->a(Lcom/freshchat/consumer/sdk/service/e/x;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
