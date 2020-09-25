.class public Lcom/freshchat/consumer/sdk/service/c/n;
.super Lcom/freshchat/consumer/sdk/service/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/b<",
        "Lcom/freshchat/consumer/sdk/service/e/o;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
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
.method public a(Lcom/freshchat/consumer/sdk/service/e/o;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 9

    new-instance v0, Lcom/freshchat/consumer/sdk/c/c;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/o;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/o;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/c/c;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/Channel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not send message to channel filtered by tag => "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/o;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v3}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/o;->getText()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/freshchat/consumer/sdk/service/d/c;->a(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    new-instance v1, Lcom/freshchat/consumer/sdk/c/g;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/c/g;->b(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/freshchat/consumer/sdk/service/c/y;

    invoke-direct {v3, p0}, Lcom/freshchat/consumer/sdk/service/c/y;-><init>(Lcom/freshchat/consumer/sdk/service/c/n;)V

    invoke-static {v1, p1, v3}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/service/a;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/freshchat/consumer/sdk/j/bg;->l(Landroid/content/Context;J)V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/o;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/n;->a(Lcom/freshchat/consumer/sdk/service/e/o;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
