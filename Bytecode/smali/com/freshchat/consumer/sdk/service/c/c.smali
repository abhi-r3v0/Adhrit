.class public Lcom/freshchat/consumer/sdk/service/c/c;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/a;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/service/c/c;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/a;Lcom/freshchat/consumer/sdk/c/k;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 3

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/a;->getUser()Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, p2, v2}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Lcom/freshchat/consumer/sdk/c/k;Z)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/c/k;->bV()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/a;->cY()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p2, v2, p1}, Lcom/freshchat/consumer/sdk/c/k;->a(ZZ)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/d;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/freshchat/consumer/sdk/beans/User;->setAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p2, p1, p1}, Lcom/freshchat/consumer/sdk/c/k;->a(ZZ)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {p2}, Lcom/freshchat/consumer/sdk/beans/User;-><init>()V

    invoke-virtual {p2, p0}, Lcom/freshchat/consumer/sdk/beans/User;->setAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/beans/User;->setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bI()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/User;->getExternalId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bk()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bk()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/freshchat/consumer/sdk/beans/User;->setExternalId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    :cond_3
    return-object v1
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/User;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/freshchat/consumer/sdk/beans/User;->setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->setUser(Lcom/freshchat/consumer/sdk/beans/User;)V

    invoke-virtual {v1, p2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->setJwtIdToken(Ljava/lang/String;)V

    new-instance p2, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Lcom/freshchat/consumer/sdk/e/a;->a(Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getStatusCode()I

    move-result v1

    const/16 v3, 0x199

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/d;->bG(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getUser()Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getUser()Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/service/c/c;->f(Lcom/freshchat/consumer/sdk/beans/User;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p2

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->c(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/b/e;->t(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Lcom/freshchat/consumer/sdk/c/k;Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/d;->bF(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p1

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/d;->a(Lcom/freshchat/consumer/sdk/b/e;Lcom/freshchat/consumer/sdk/beans/User;)V

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Lcom/freshchat/consumer/sdk/c/k;->b(Lcom/freshchat/consumer/sdk/beans/User;)V

    return-void

    :cond_1
    invoke-virtual {p2, p1}, Lcom/freshchat/consumer/sdk/c/k;->a(Lcom/freshchat/consumer/sdk/beans/User;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/a;)V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab$a;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab$a;-><init>()V

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ab;

    const/4 v2, 0x1

    new-array v3, v2, [Lo/writeFloatNoTag;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v3}, Lcom/freshchat/consumer/sdk/j/ab;-><init>([Lo/writeFloatNoTag;)V

    invoke-static {p0, v2}, Lcom/freshchat/consumer/sdk/service/a/c;->m(Landroid/content/Context;I)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v0

    new-instance v3, Lcom/freshchat/consumer/sdk/service/a/a;

    invoke-direct {v3, v2}, Lcom/freshchat/consumer/sdk/service/a/a;-><init>(I)V

    const-string v4, "fc_create_or_update_user"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->getMeta()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "{}"

    :goto_0
    const-class v5, Lcom/freshchat/consumer/sdk/service/e/a;

    invoke-virtual {v1, v0, v5}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/service/e/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/e/a;->cN()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/a;->n(Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/e/a;->cY()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/a;->o(Z)V

    :cond_2
    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/freshchat/consumer/sdk/service/a/a;->b(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/service/a/a;

    invoke-static {p0, v3}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-void
.end method

.method public static a(Lcom/freshchat/consumer/sdk/JwtTokenStatus;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/o;->ba(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-ne p0, p3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/o;->bc(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/o;->bc(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/o;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/freshchat/consumer/sdk/service/e/a;Lcom/freshchat/consumer/sdk/beans/User;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object p2

    sget-object v3, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-eq p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object p2

    sget-object v3, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/a;->cN()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/a;->cN()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/User;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Lcom/freshchat/consumer/sdk/JwtTokenStatus;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/User;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/User;->getExternalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/User;->getRestoreId()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2, p3}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method private b(Lcom/freshchat/consumer/sdk/beans/User;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->setUser(Lcom/freshchat/consumer/sdk/beans/User;)V

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->setJwtIdToken(Ljava/lang/String;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/e/a;->b(Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/o;->bA(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getUser()Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/service/a/c;->bd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    :cond_1
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/b;->bJ(Landroid/content/Context;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getUser()Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/freshchat/consumer/sdk/beans/User;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;-><init>()V

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->setUser(Lcom/freshchat/consumer/sdk/beans/User;)V

    invoke-virtual {v2, p2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->setJwtIdToken(Ljava/lang/String;)V

    new-instance v3, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/freshchat/consumer/sdk/e/a;->c(Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getExternalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getRestoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/e/a;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6, v5}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;ZZ)V

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getUser()Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p2}, Lcom/freshchat/consumer/sdk/beans/User;->setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    :cond_1
    invoke-direct {p0, v1}, Lcom/freshchat/consumer/sdk/service/c/c;->f(Lcom/freshchat/consumer/sdk/beans/User;)V

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->u(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/freshchat/consumer/sdk/service/e/d$a;->gj:Lcom/freshchat/consumer/sdk/service/e/d$a;

    invoke-static {p1, v6, p2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v5}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;ZZ)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {v0, v2, p2}, Lcom/freshchat/consumer/sdk/j/o;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setRestoreId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/w;->aB(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Z)V

    :cond_5
    :goto_1
    return-object v1
.end method

.method private c(Lcom/freshchat/consumer/sdk/service/e/a;)V
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/service/a/c;->m(Landroid/content/Context;I)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ab$a;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/j/ab$a;-><init>()V

    new-instance v3, Lcom/freshchat/consumer/sdk/j/ab;

    new-array v4, v1, [Lo/writeFloatNoTag;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Lcom/freshchat/consumer/sdk/j/ab;-><init>([Lo/writeFloatNoTag;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->getMeta()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fc_create_or_update_user"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "{}"

    :goto_0
    const-class v2, Lcom/freshchat/consumer/sdk/service/e/a;

    invoke-virtual {v3, v0, v2}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/service/e/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/e/a;->cN()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/a;->n(Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/e/a;->cY()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/a;->o(Z)V

    :cond_2
    return-void
.end method

.method private f(Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getAlias()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/c/c;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Result for create user is "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/b/e;->t(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/b/e;->c(Z)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->U(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->T(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/service/a/c;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private g(Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getAndroidDeviceMeta()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getAndroidDeviceMeta()Ljava/util/Map;

    move-result-object p1

    const-string v1, "app_version_code"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->v(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    const-string/jumbo v1, "sdk_version_code"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/b/e;->k(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected a(Lcom/freshchat/consumer/sdk/service/e/a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->aA(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/a;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 9

    new-instance v0, Lcom/freshchat/consumer/sdk/c/k;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/k;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/c;->c(Lcom/freshchat/consumer/sdk/service/e/a;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Lcom/freshchat/consumer/sdk/c/k;->a(ZZ)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v0}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/a;Lcom/freshchat/consumer/sdk/c/k;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v3, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {v3, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/k;->bV()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/service/a/c;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/freshchat/consumer/sdk/service/a/c;->m(Landroid/content/Context;I)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/freshchat/consumer/sdk/j/p;->av(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/freshchat/consumer/sdk/beans/User;->setAndroidDeviceMeta(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/freshchat/consumer/sdk/j/ah;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/freshchat/consumer/sdk/beans/User;->setLocale(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {p0, p1, v6}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Lcom/freshchat/consumer/sdk/service/e/a;Lcom/freshchat/consumer/sdk/beans/User;)Z

    move-result v7

    invoke-direct {p0, v4, v3, v6}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/User;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v5, v6}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/User;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v7, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Lcom/freshchat/consumer/sdk/service/e/a;)Z

    move-result v4
    :try_end_1
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    :goto_3
    xor-int/lit8 v5, v4, 0x1

    if-eqz v4, :cond_b

    if-eqz v3, :cond_6

    :try_start_2
    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/freshchat/consumer/sdk/service/c/c;->c(Lcom/freshchat/consumer/sdk/beans/User;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v3

    goto :goto_4

    :catch_0
    move-exception v3

    goto/16 :goto_5

    :catch_1
    move-exception v3

    goto/16 :goto_6

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Lcom/freshchat/consumer/sdk/beans/User;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v3

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/freshchat/consumer/sdk/service/c/c;->b(Lcom/freshchat/consumer/sdk/beans/User;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0, v2}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Lcom/freshchat/consumer/sdk/c/k;Z)V

    invoke-direct {p0, v3}, Lcom/freshchat/consumer/sdk/service/c/c;->g(Lcom/freshchat/consumer/sdk/beans/User;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/freshchat/consumer/sdk/j/o;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/beans/User;->getExternalId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/User;->getRestoreId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/b/a;->ai(Landroid/content/Context;)V

    :cond_9
    sget-object v4, Lcom/freshchat/consumer/sdk/service/c/c;->TAG:Ljava/lang/String;

    const-string v6, "Updated user "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {v3, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V
    :try_end_2
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/k;->bV()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/service/a/c;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/freshchat/consumer/sdk/service/a/c;->m(Landroid/content/Context;I)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_8

    :catch_2
    move-exception v3

    const/4 v5, 0x0

    :goto_5
    :try_start_3
    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/a;)V

    goto :goto_7

    :catch_3
    move-exception v3

    const/4 v5, 0x0

    :goto_6
    :try_start_4
    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/k;->bV()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/service/a/c;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/freshchat/consumer/sdk/service/a/c;->m(Landroid/content/Context;I)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    :goto_7
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :catchall_1
    move-exception v3

    move v1, v5

    :goto_8
    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/k;->bV()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/service/a/c;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/freshchat/consumer/sdk/service/a/c;->m(Landroid/content/Context;I)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/c/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/a;)V

    :cond_e
    :goto_9
    throw v3
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/a;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/c;->b(Lcom/freshchat/consumer/sdk/service/e/a;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
