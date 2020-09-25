.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lo/TemplatePropertiesSlotMachineJsonAdapter;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/TemplatePropertiesSlotMachineJsonAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdLoaderBuilder(Lo/getEventName;Ljava/lang/String;Lo/BankAccountData;I)Lo/ReelSymbol;
    .locals 6

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance v4, Lo/DataListJsonAdapter;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsService(Landroid/content/Context;)Z

    move-result p1

    const v0, 0xbdfcb8

    const/4 v2, 0x1

    invoke-direct {v4, v0, p4, v2, p1}, Lo/DataListJsonAdapter;-><init>(IIZZ)V

    new-instance p1, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;

    invoke-static {v1}, Lo/StatementPeriod;->extraCallback(Landroid/content/Context;)Lo/StatementPeriod;

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo/CreditScoreIntroFragment$animateScoreValue$$inlined$apply$lambda$1$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    return-object p1
.end method

.method public createAdOverlay(Lo/getEventName;)Lo/Database_Impl;
    .locals 3

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onNavigationEvent(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lo/FeatureResponseModelJsonAdapter;

    invoke-direct {v0, p1}, Lo/FeatureResponseModelJsonAdapter;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->getInterfaceDescriptor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    new-instance v0, Lo/FeatureResponseModelJsonAdapter;

    invoke-direct {v0, p1}, Lo/FeatureResponseModelJsonAdapter;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_1
    new-instance v1, Lo/MaintenanceManager$attach$2;

    invoke-direct {v1, p1, v0}, Lo/MaintenanceManager$attach$2;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    :cond_2
    new-instance v0, Lo/RewardCountModelJsonAdapter;

    invoke-direct {v0, p1}, Lo/RewardCountModelJsonAdapter;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_3
    new-instance v0, Lo/RecentCount;

    invoke-direct {v0, p1}, Lo/RecentCount;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_4
    new-instance v0, Lo/GemIntroDetailsJsonAdapter;

    invoke-direct {v0, p1}, Lo/GemIntroDetailsJsonAdapter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createBannerAdManager(Lo/getEventName;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;I)Lo/SpinDetail;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance v5, Lo/DataListJsonAdapter;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsService(Landroid/content/Context;)Z

    move-result p1

    const v0, 0xbdfcb8

    const/4 v2, 0x1

    invoke-direct {v5, v0, p5, v2, p1}, Lo/DataListJsonAdapter;-><init>(IIZZ)V

    new-instance p1, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;

    invoke-static {v1}, Lo/StatementPeriod;->extraCallback(Landroid/content/Context;)Lo/StatementPeriod;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    return-object p1
.end method

.method public createInAppPurchaseManager(Lo/getEventName;)Lo/setFlippedVertically;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createInterstitialAdManager(Lo/getEventName;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;I)Lo/SpinDetail;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    new-instance v5, Lo/DataListJsonAdapter;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsService(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    const v2, 0xbdfcb8

    invoke-direct {v5, v2, p5, v0, p1}, Lo/DataListJsonAdapter;-><init>(IIZZ)V

    iget-object p1, p2, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    const-string p5, "reward_mb"

    invoke-virtual {p5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p5, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, p5}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase$2:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p5

    invoke-virtual {p5, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    new-instance p1, Lo/TargetNav;

    invoke-static {v1}, Lo/StatementPeriod;->extraCallback(Landroid/content/Context;)Lo/StatementPeriod;

    move-result-object p2

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, v5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/TargetNav;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    return-object p1

    :cond_3
    new-instance p1, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-static {v1}, Lo/StatementPeriod;->extraCallback(Landroid/content/Context;)Lo/StatementPeriod;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    return-object p1
.end method

.method public createNativeAdViewDelegate(Lo/getEventName;Lo/getEventName;)Lo/relaunch;
    .locals 1

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance v0, Lo/showErrorLayout;

    invoke-direct {v0, p1, p2}, Lo/showErrorLayout;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v0
.end method

.method public createNativeAdViewHolderDelegate(Lo/getEventName;Lo/getEventName;Lo/getEventName;)Lo/updateProfilePicture;
    .locals 1

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    new-instance v0, Lo/refundAccountDataUpdated;

    invoke-direct {v0, p1, p2, p3}, Lo/refundAccountDataUpdated;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public createRewardedVideoAd(Lo/getEventName;Lo/BankAccountData;I)Lo/CredProtectResponse;
    .locals 4

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lo/DataListJsonAdapter;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {p1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsService(Landroid/content/Context;)Z

    move-result v1

    const v2, 0xbdfcb8

    const/4 v3, 0x1

    invoke-direct {v0, v2, p3, v3, v1}, Lo/DataListJsonAdapter;-><init>(IIZZ)V

    new-instance p3, Lo/PayoutInstrumentJsonAdapter;

    invoke-static {p1}, Lo/StatementPeriod;->extraCallback(Landroid/content/Context;)Lo/StatementPeriod;

    move-result-object v1

    invoke-direct {p3, p1, v1, p2, v0}, Lo/PayoutInstrumentJsonAdapter;-><init>(Landroid/content/Context;Lo/StatementPeriod;Lo/BankAccountData;Lo/DataListJsonAdapter;)V

    return-object p3
.end method

.method public createSearchAdManager(Lo/getEventName;Lo/setCurrentItem$default;Ljava/lang/String;I)Lo/SpinDetail;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lo/DataListJsonAdapter;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {p1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsService(Landroid/content/Context;)Z

    move-result v1

    const v2, 0xbdfcb8

    const/4 v3, 0x1

    invoke-direct {v0, v2, p4, v3, v1}, Lo/DataListJsonAdapter;-><init>(IIZZ)V

    new-instance p4, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {p4, p1, p2, p3, v0}, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/DataListJsonAdapter;)V

    return-object p4
.end method

.method public getMobileAdsSettingsManager(Lo/getEventName;)Lo/TrophySectionCards;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMobileAdsSettingsManagerWithClientJarVersion(Lo/getEventName;I)Lo/TrophySectionCards;
    .locals 4

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lo/DataListJsonAdapter;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {p1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsService(Landroid/content/Context;)Z

    move-result v1

    const v2, 0xbdfcb8

    const/4 v3, 0x1

    invoke-direct {v0, v2, p2, v3, v1}, Lo/DataListJsonAdapter;-><init>(IIZZ)V

    invoke-static {p1, v0}, Lo/getDobGiven;->extraCallback(Landroid/content/Context;Lo/DataListJsonAdapter;)Lo/getDobGiven;

    move-result-object p1

    return-object p1
.end method
