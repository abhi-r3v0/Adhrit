.class public Lcom/freshchat/consumer/sdk/service/c/z;
.super Lcom/freshchat/consumer/sdk/service/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/ab;",
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


# virtual methods
.method protected a(Lcom/freshchat/consumer/sdk/service/e/ab;)Z
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

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUserAuthConfig()Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isJwtAuthEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/ab;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/z;->a(Lcom/freshchat/consumer/sdk/service/e/ab;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ab;->getJwtIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ab;->getJwtIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/e/a;->aZ(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;->isUserAliasExists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/d;->bG(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;->isValidToken()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ab;->getJwtIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/j/o;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_INVALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/o;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;)V

    :cond_2
    :goto_1
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/ab;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/z;->b(Lcom/freshchat/consumer/sdk/service/e/ab;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
