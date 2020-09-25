.class public Lcom/freshchat/consumer/sdk/j/w;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/Feature;)Z
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/w;->bx(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEnabledFeatures()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEnabledFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static aA(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->INBOX:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/w;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/Feature;)Z

    move-result p0

    return p0
.end method

.method public static aB(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->AOT_USER_CREATE:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/w;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/Feature;)Z

    move-result p0

    return p0
.end method

.method public static aC(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->MANUAL_CAMPAIGNS:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/w;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/Feature;)Z

    move-result p0

    return p0
.end method

.method public static ay(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/w;->bx(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->isAccountActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static az(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/Feature;->FAQ:Lcom/freshchat/consumer/sdk/beans/config/Feature;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/w;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/Feature;)Z

    move-result p0

    return p0
.end method

.method private static bx(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p0

    return-object p0
.end method
