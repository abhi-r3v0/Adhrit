.class public final Lo/StringRepoDatabase_Impl;
.super Lo/BankBalanceBucketizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lo/AppsFlyerLibCore$e;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Lo/BankBalanceBucketizer;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Lo/AppsFlyerLibCore$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNETWORK_EXTRAS;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/set<",
            "TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/set;Lo/AppsFlyerLibCore$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/set<",
            "TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;TNETWORK_EXTRAS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/BankBalanceBucketizer;-><init>()V

    iput-object p1, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    iput-object p2, p0, Lo/StringRepoDatabase_Impl;->extraCallback:Lo/AppsFlyerLibCore$e;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TSERVER_PARAMETERS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    :cond_1
    iget-object p2, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    invoke-interface {p2}, Lo/set;->getServerParametersType()Ljava/lang/Class;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/google/ads/mediation/MediationServerParameters;

    invoke-virtual {p3, p1}, Lcom/google/ads/mediation/MediationServerParameters;->ICustomTabsCallback(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p3

    :catchall_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method private static extraCallback(Lo/setLastItem;)Z
    .locals 0

    iget-boolean p0, p0, Lo/setLastItem;->onTransact:Z

    if-nez p0, :cond_1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final B_()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final ICustomTabsCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    invoke-interface {v0}, Lo/set;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final ICustomTabsCallback$Stub()Lo/RawBankAccountJsonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final ICustomTabsService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final asInterface()Lo/TrackBalanceConfigsJsonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final extraCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v1, :cond_1

    const-string v1, "Not a MediationInterstitialAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final extraCallback(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;Lo/activateCredProtect;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getEventName;",
            "Lo/setLastItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/PromotionalCardsJsonAdapter;",
            "Lo/activateCredProtect;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final extraCallback(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lo/StringRepoDatabase_Impl;->onNavigationEvent(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    return-void
.end method

.method public final extraCallback(Lo/setLastItem;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final mayLaunchUrl()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final newSession()Lo/openGameRewards;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final onMessageChannelReady(Lo/getEventName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onMessageChannelReady(Lo/getEventName;Lo/setCurrentItem$default;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v1, :cond_1

    const-string p1, "Not a MediationBannerAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_1
    const-string v0, "Requesting banner ad from adapter."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    move-object v1, v0

    check-cast v1, Lcom/google/ads/mediation/MediationBannerAdapter;

    new-instance v2, Lo/WishlistUnlikeEntity;

    invoke-direct {v2, p6}, Lo/WishlistUnlikeEntity;-><init>(Lo/PromotionalCardsJsonAdapter;)V

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iget p1, p3, Lo/setLastItem;->asBinder:I

    invoke-direct {p0, p4, p1, p5}, Lo/StringRepoDatabase_Impl;->ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    move-result-object v4

    const/4 p1, 0x6

    new-array p4, p1, [Lo/AppsFlyerLibCore$8;

    sget-object p5, Lo/AppsFlyerLibCore$8;->onMessageChannelReady:Lo/AppsFlyerLibCore$8;

    const/4 p6, 0x0

    aput-object p5, p4, p6

    sget-object p5, Lo/AppsFlyerLibCore$8;->extraCallback:Lo/AppsFlyerLibCore$8;

    const/4 v0, 0x1

    aput-object p5, p4, v0

    const/4 p5, 0x2

    sget-object v0, Lo/AppsFlyerLibCore$8;->onNavigationEvent:Lo/AppsFlyerLibCore$8;

    aput-object v0, p4, p5

    const/4 p5, 0x3

    sget-object v0, Lo/AppsFlyerLibCore$8;->onPostMessage:Lo/AppsFlyerLibCore$8;

    aput-object v0, p4, p5

    const/4 p5, 0x4

    sget-object v0, Lo/AppsFlyerLibCore$8;->ICustomTabsCallback:Lo/AppsFlyerLibCore$8;

    aput-object v0, p4, p5

    const/4 p5, 0x5

    sget-object v0, Lo/AppsFlyerLibCore$8;->asBinder:Lo/AppsFlyerLibCore$8;

    aput-object v0, p4, p5

    :goto_1
    if-ge p6, p1, :cond_3

    aget-object p5, p4, p6

    invoke-virtual {p5}, Lo/AppsFlyerLibCore$8;->onMessageChannelReady()I

    move-result p5

    iget v0, p2, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    if-ne p5, v0, :cond_2

    aget-object p5, p4, p6

    invoke-virtual {p5}, Lo/AppsFlyerLibCore$8;->extraCallback()I

    move-result p5

    iget v0, p2, Lo/setCurrentItem$default;->onNavigationEvent:I

    if-ne p5, v0, :cond_2

    aget-object p1, p4, p6

    goto :goto_2

    :cond_2
    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lo/AppsFlyerLibCore$8;

    iget p4, p2, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    iget p5, p2, Lo/setCurrentItem$default;->onNavigationEvent:I

    iget-object p2, p2, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p4, p5, p2}, Lo/setAmount;->onNavigationEvent(IILjava/lang/String;)Lo/getRewardsExpired;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/AppsFlyerLibCore$8;-><init>(Lo/getRewardsExpired;)V

    :goto_2
    move-object v5, p1

    invoke-static {p3}, Lo/StringRepoDatabase_Impl;->extraCallback(Lo/setLastItem;)Z

    move-result p1

    invoke-static {p3, p1}, Lo/StringRepoResponse;->onNavigationEvent(Lo/setLastItem;Z)Lo/setCustomData;

    move-result-object v6

    iget-object v7, p0, Lo/StringRepoDatabase_Impl;->extraCallback:Lo/AppsFlyerLibCore$e;

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Lo/AppsFlyerLibCore$c;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lo/AppsFlyerLibCore$8;Lo/setCustomData;Lo/AppsFlyerLibCore$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()Lo/getEventName;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v1, :cond_1

    const-string v1, "Not a MediationBannerAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final onNavigationEvent(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    instance-of v1, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v1, :cond_1

    const-string p1, "Not a MediationInterstitialAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_1
    const-string v0, "Requesting interstitial ad from adapter."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lo/StringRepoDatabase_Impl;->onMessageChannelReady:Lo/set;

    move-object v1, v0

    check-cast v1, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    new-instance v2, Lo/WishlistUnlikeEntity;

    invoke-direct {v2, p5}, Lo/WishlistUnlikeEntity;-><init>(Lo/PromotionalCardsJsonAdapter;)V

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iget p1, p2, Lo/setLastItem;->asBinder:I

    invoke-direct {p0, p3, p1, p4}, Lo/StringRepoDatabase_Impl;->ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    move-result-object v4

    invoke-static {p2}, Lo/StringRepoDatabase_Impl;->extraCallback(Lo/setLastItem;)Z

    move-result p1

    invoke-static {p2, p1}, Lo/StringRepoResponse;->onNavigationEvent(Lo/setLastItem;Z)Lo/setCustomData;

    move-result-object v5

    iget-object v6, p0, Lo/StringRepoDatabase_Impl;->extraCallback:Lo/AppsFlyerLibCore$e;

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Lo/AppsFlyerProperties;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lo/setCustomData;Lo/AppsFlyerLibCore$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final onPostMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final onPostMessage(Lo/getEventName;Lo/Cta$Flow;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getEventName;",
            "Lo/Cta$Flow;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onPostMessage(Lo/getEventName;Lo/setCurrentItem$default;Lo/setLastItem;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lo/StringRepoDatabase_Impl;->onMessageChannelReady(Lo/getEventName;Lo/setCurrentItem$default;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Lo/Cta$Flow;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onPostMessage(Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onTransact()V
    .locals 0

    return-void
.end method

.method public final updateVisuals()Lo/LiveCallbackWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final warmup()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
