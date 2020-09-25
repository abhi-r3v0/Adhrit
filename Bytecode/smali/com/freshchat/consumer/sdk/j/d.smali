.class public Lcom/freshchat/consumer/sdk/j/d;
.super Ljava/lang/Object;


# direct methods
.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FreshchatUser;)V
    .locals 4

    if-eqz p1, :cond_e

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/User;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatUser;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/av;->aN(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "FRESHCHAT_WARNING"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setFirstName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dx:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatUser;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/av;->aN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setLastName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dx:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/av;->aK(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setEmail(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dy:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatUser;->getExternalId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/av;->aN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setExternalId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dz:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatUser;->getRestoreId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/av;->aN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setRestoreId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_4

    :cond_8
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->cQ:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatUser;->getPhoneCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/av;->aL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setPhoneCountry(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_5

    :cond_a
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dA:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatUser;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/av;->aM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/User;->setPhone(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    goto :goto_6

    :cond_c
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->dB:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;)V

    :cond_e
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/d;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/User;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/User;->setMeta(Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/freshchat/consumer/sdk/b/e;Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 1

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->q(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->r(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->s(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->I(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getPhoneCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getPhoneCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->H(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getExternalId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getExternalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->u(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getRestoreId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getRestoreId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->E(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->J(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/User;->getJwtIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/b/e;->c(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, p2}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1, p3}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p0, 0xc8

    return p0

    :cond_1
    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x190

    return p0

    :cond_2
    const/16 p0, 0x1f4

    return p0

    :cond_3
    const/16 p0, 0x12c

    return p0

    :cond_4
    :goto_0
    const/16 p0, 0x64

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FreshchatUser;)Lcom/freshchat/consumer/sdk/FreshchatUser;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setFirstName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setLastName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setEmail(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bY()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setPhone(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    return-object p1
.end method

.method private static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating user information => "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/d;->a(Lcom/freshchat/consumer/sdk/b/e;Lcom/freshchat/consumer/sdk/beans/User;)V

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bF(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/User;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/User;-><init>()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->gh()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->gh()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/beans/User;->setJwtIdToken(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setFirstName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setLastName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setEmail(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setPhone(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setPhoneCountry(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setExternalId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/User;->setRestoreId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bZ()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/beans/User;->setLocale(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    return-object v0
.end method

.method public static bG(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static e(Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/av;->aO(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "FRESHCHAT_WARNING"

    const-string/jumbo v7, "{{user_property_charecter_limit_placeholder}}"

    const-string/jumbo v8, "{{user_property_key_placeholder}}"

    if-nez v4, :cond_1

    sget-object v3, Lcom/freshchat/consumer/sdk/b/c;->dv:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "32"

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/av;->aN(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v3, Lcom/freshchat/consumer/sdk/b/c;->dw:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "256"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/o;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/o;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1f4

    return p0

    :cond_1
    return v1

    :cond_2
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x190

    return p0

    :cond_3
    const/16 p0, 0x12c

    return p0
.end method
