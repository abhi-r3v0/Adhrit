.class public final Lo/SenderListResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementSourceJsonAdapter;
.implements Lo/getClientAuthToken;
.implements Lo/getClientAuthTokenExpiry;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/setClientAuthToken;

.field private extraCallback:Lo/getCurrentPurchaseValue;

.field private onNavigationEvent:Lo/setPaymentLinkWeb;

.field private final onPostMessage:Lo/PromotionalCardsJsonAdapter;


# direct methods
.method public constructor <init>(Lo/PromotionalCardsJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    return-void
.end method

.method private static onPostMessage(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/setPaymentLinkWeb;Lo/setClientAuthToken;)V
    .locals 1

    instance-of p0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lo/getRewardsClosingBalance;

    invoke-direct {p0}, Lo/getRewardsClosingBalance;-><init>()V

    new-instance v0, Lo/AlarmResponseJsonAdapter;

    invoke-direct {v0}, Lo/AlarmResponseJsonAdapter;-><init>()V

    invoke-virtual {p0, v0}, Lo/getRewardsClosingBalance;->onNavigationEvent(Lo/TrophySectionsResponseJsonAdapter;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/setPaymentLinkWeb;->newSession()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lo/setPaymentLinkWeb;->onNavigationEvent(Lo/getRewardsClosingBalance;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lo/setClientAuthToken;->onTransact()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, p0}, Lo/setClientAuthToken;->extraCallback(Lo/getRewardsClosingBalance;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getCurrentPurchaseValue;
    .locals 1

    iget-object v0, p0, Lo/SenderListResponseJsonAdapter;->extraCallback:Lo/getCurrentPurchaseValue;

    return-object v0
.end method

.method public final ICustomTabsCallback(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onPostMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->extraCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->ICustomTabsCallback:Lo/setClientAuthToken;

    iget-object v0, p0, Lo/SenderListResponseJsonAdapter;->onNavigationEvent:Lo/setPaymentLinkWeb;

    iget-object v1, p0, Lo/SenderListResponseJsonAdapter;->extraCallback:Lo/getCurrentPurchaseValue;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->extraCommand()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lo/setClientAuthToken;->onNavigationEvent()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Adapter called onAdImpression."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onTransact()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {v2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/setPaymentLinkWeb;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    iput-object p2, p0, Lo/SenderListResponseJsonAdapter;->onNavigationEvent:Lo/setPaymentLinkWeb;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/SenderListResponseJsonAdapter;->ICustomTabsCallback:Lo/setClientAuthToken;

    invoke-static {p1, p2, v0}, Lo/SenderListResponseJsonAdapter;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/setPaymentLinkWeb;Lo/setClientAuthToken;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onPostMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback()Lo/setClientAuthToken;
    .locals 1

    iget-object v0, p0, Lo/SenderListResponseJsonAdapter;->ICustomTabsCallback:Lo/setClientAuthToken;

    return-object v0
.end method

.method public final extraCallback(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->extraCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->ICustomTabsCallback:Lo/setClientAuthToken;

    iget-object v0, p0, Lo/SenderListResponseJsonAdapter;->onNavigationEvent:Lo/setPaymentLinkWeb;

    iget-object v1, p0, Lo/SenderListResponseJsonAdapter;->extraCallback:Lo/getCurrentPurchaseValue;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->mayLaunchUrl()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lo/setClientAuthToken;->extraCallback()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->extraCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {v2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onMessageChannelReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/getCurrentPurchaseValue;Ljava/lang/String;)V
    .locals 0

    instance-of p1, p2, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    check-cast p2, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;

    invoke-virtual {p2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->onPostMessage()Lo/openGameRewards;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lo/PromotionalCardsJsonAdapter;->extraCallback(Lo/openGameRewards;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Unexpected native custom template ad type."

    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onMessageChannelReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1, p2}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/getCurrentPurchaseValue;)V
    .locals 2

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-interface {p2}, Lo/getCurrentPurchaseValue;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Adapter called onAdLoaded with template id "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    iput-object p2, p0, Lo/SenderListResponseJsonAdapter;->extraCallback:Lo/getCurrentPurchaseValue;

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onPostMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/setClientAuthToken;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    iput-object p2, p0, Lo/SenderListResponseJsonAdapter;->ICustomTabsCallback:Lo/setClientAuthToken;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/SenderListResponseJsonAdapter;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-static {p1, v0, p2}, Lo/SenderListResponseJsonAdapter;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/setPaymentLinkWeb;Lo/setClientAuthToken;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onPostMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage()Lo/setPaymentLinkWeb;
    .locals 1

    iget-object v0, p0, Lo/SenderListResponseJsonAdapter;->onNavigationEvent:Lo/setPaymentLinkWeb;

    return-object v0
.end method

.method public final onPostMessage(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1, p2}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAppEvent."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1, p2, p3}, Lo/PromotionalCardsJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onPostMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1}, Lo/PromotionalCardsJsonAdapter;->onMessageChannelReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .locals 1

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lo/SenderListResponseJsonAdapter;->onPostMessage:Lo/PromotionalCardsJsonAdapter;

    invoke-interface {p1, p2}, Lo/PromotionalCardsJsonAdapter;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
