.class public Lcom/freshchat/consumer/sdk/j/y;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/l;)V
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->p(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isResponseExpectationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->w(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isTeamMemberInfoVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->d(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isCameraCaptureEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->e(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->dI()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->f(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isGallerySelectionEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/b/e;->g(Z)V

    return-void
.end method

.method public static a(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V
    .locals 3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".freshchat.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->dr:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getDomain()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{{domain}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/freshchat/consumer/sdk/b/c;->dt:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", got app key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->dt:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/freshchat/consumer/sdk/b/c;->ds:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", got app id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->ds:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->dq:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static aG(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatConfig;
    .locals 3

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isResponseExpectationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setResponseExpectationEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isTeamMemberInfoVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setTeamMemberInfoVisible(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isCameraCaptureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setCameraCaptureEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isGallerySelectionEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setGallerySelectionEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    return-object v0
.end method
