.class public Lcom/freshchat/consumer/sdk/service/c/k;
.super Lcom/freshchat/consumer/sdk/service/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/b<",
        "Lcom/freshchat/consumer/sdk/service/e/l;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">;"
    }
.end annotation


# static fields
.field private static fL:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/c/k;->fL:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/b;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/l;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/y;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/l;)V

    sget-object p1, Lcom/freshchat/consumer/sdk/service/c/k;->fL:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/d;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/b/e;->t(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/b;->L(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/b;->S(Landroid/content/Context;)V

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/b$a;->gg:Lcom/freshchat/consumer/sdk/service/e/b$a;

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/b$a;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {p1, p0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvWindow()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/freshchat/consumer/sdk/c/g;->p(J)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/w;->aC(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const/4 p1, 0x2

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/d$a;->gl:Lcom/freshchat/consumer/sdk/service/e/d$a;

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/w;->aB(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Z)V

    :cond_4
    :goto_0
    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/f$a;->gp:Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/f$a;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ah;->aQ(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/g;->ah(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/b;->u(Landroid/content/Context;)V

    :cond_6
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/b;->R(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/l;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 8

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/c/k;->fL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v3}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/freshchat/consumer/sdk/j/as;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/freshchat/consumer/sdk/j/as;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/freshchat/consumer/sdk/j/as;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v4

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/aa;->aK(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/c/k;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/l;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v4}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_6
    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/c/k;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/l;)V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/service/a/c;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    :cond_7
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/aa;->aM(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/e;->Y(Landroid/content/Context;)V

    goto :goto_3

    :cond_8
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/aa;->aN(Landroid/content/Context;)V

    :goto_3
    new-instance p1, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/c/g;->cE()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v4}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/l;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/k;->a(Lcom/freshchat/consumer/sdk/service/e/l;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
