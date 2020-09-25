.class public Lcom/freshchat/consumer/sdk/service/c/l;
.super Lcom/freshchat/consumer/sdk/service/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/b<",
        "Lcom/freshchat/consumer/sdk/service/e/m;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "FRESHCHAT"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/m;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 7

    const-string p1, "#############################################"

    const-string v0, "*********************************************"

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aa;->fF()V

    new-instance v3, Lcom/freshchat/consumer/sdk/c/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/freshchat/consumer/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/c/a;->cp()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ai;->eO()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/freshchat/consumer/sdk/service/c/l;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/freshchat/consumer/sdk/service/c/l;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "There are "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " back log events"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/freshchat/consumer/sdk/service/c/l;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/service/a/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v4, Lcom/freshchat/consumer/sdk/service/c/l;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Processing Backlog : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/service/a/a;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " p: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/service/a/a;->getPriority()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freshchat/consumer/sdk/j/ai;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ai;->eO()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/freshchat/consumer/sdk/service/c/l;->TAG:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/freshchat/consumer/sdk/service/c/l;->TAG:Ljava/lang/String;

    const-string v5, "Processing backlog "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/freshchat/consumer/sdk/service/c/l;->TAG:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/freshchat/consumer/sdk/service/a/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)Lcom/freshchat/consumer/sdk/service/a/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/freshchat/consumer/sdk/service/a/b;->ds()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move v2, v1

    goto :goto_1

    :catch_3
    move-exception p1

    const/4 v2, 0x1

    :goto_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    move v1, v2

    :cond_3
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/m;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/l;->a(Lcom/freshchat/consumer/sdk/service/e/m;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
