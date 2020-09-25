.class public Lcom/freshchat/consumer/sdk/j/ap;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V
    .locals 4

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->isAccountActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->setAccountActive(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getSessionTimeoutInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/e;->setSessionTimeoutInterval(J)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvFetchBackoffRatio()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setActiveConvFetchBackoffRatio(D)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvWindow()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setActiveConvWindow(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->shouldLaunchDeeplinkFromNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->j(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getCsatConfig()Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->doesCsatAutoExpire()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->setCsatAutoExpire(Z)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->getCsatExpiryInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/e;->s(J)V

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUserAuthConfig()Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isJwtAuthEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->setJwtAuthEnabled(Z)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isStrictModeEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->t(Z)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->getAuthTimeOutInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/e;->u(J)V

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEnabledFeatures()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->a(Lorg/json/JSONArray;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getRemoteConfigFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setRemoteConfigFetchInterval(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getResponseTimeExpectationsFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setResponseTimeExpectationsFetchInterval(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getActiveConvMinFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setActiveConvMinFetchInterval(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getActiveConvMaxFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setActiveConvMaxFetchInterval(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getMsgFetchIntervalNormal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setMsgFetchIntervalNormal(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getMsgFetchIntervalLaidback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setMsgFetchIntervalLaidback(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getFaqFetchIntervalNormal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setFaqFetchIntervalNormal(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getFaqFetchIntervalLaidback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setFaqFetchIntervalLaidback(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getChannelsFetchIntervalNormal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setChannelsFetchIntervalNormal(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getChannelsFetchIntervalLaidback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/e;->setChannelsFetchIntervalLaidback(J)V

    :cond_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getMessageMaskingConfig()Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bc;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUnsupportedFragmentConfig()Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/bd;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;)V

    return-void
.end method

.method public static aZ(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string v0, "RC_IS_ACCOUNT_ACTIVE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->as(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->aZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->bE(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;-><init>()V

    :goto_0
    return-object p0
.end method

.method private static bE(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
    .locals 7

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isAccountActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setAccountActive(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->cg()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    :try_start_0
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setEnabledFeatures(Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getSessionTimeoutInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setSessionTimeoutInterval(J)V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getActiveConvWindow()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setActiveConvWindow(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getActiveConvFetchBackoffRatio()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setActiveConvFetchBackoffRatio(D)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bU()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setLaunchDeeplinkFromNotification(Z)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setConversationConfig(Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->doesCsatAutoExpire()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->setCsatAutoExpire(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->cQ()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->setCsatExpiryInterval(J)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setCsatConfig(Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isJwtAuthEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setJwtAuthEnabled(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gk()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setStrictModeEnabled(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gl()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setAuthTimeOutInterval(J)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setUserAuthConfig(Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getRemoteConfigFetchInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setRemoteConfigFetchInterval(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getResponseTimeExpectationsFetchInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setResponseTimeExpectationsFetchInterval(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getActiveConvMinFetchInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setActiveConvMinFetchInterval(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getActiveConvMaxFetchInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setActiveConvMaxFetchInterval(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMsgFetchIntervalNormal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setMsgFetchIntervalNormal(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMsgFetchIntervalLaidback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setMsgFetchIntervalLaidback(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getFaqFetchIntervalNormal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setFaqFetchIntervalNormal(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getFaqFetchIntervalLaidback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setFaqFetchIntervalLaidback(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getChannelsFetchIntervalNormal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setChannelsFetchIntervalNormal(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getChannelsFetchIntervalLaidback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setChannelsFetchIntervalLaidback(J)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setRefreshIntervals(Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/bc;->bH(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setMessageMaskingConfig(Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/bd;->bI(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setUnsupportedFragmentConfig(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;)V

    return-object v1
.end method
