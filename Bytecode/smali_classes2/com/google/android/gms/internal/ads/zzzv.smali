.class public final Lcom/google/android/gms/internal/ads/zzzv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getClientAuthToken;

.field private extraCallback:Landroid/app/Activity;

.field private onMessageChannelReady:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzzv;)Lo/getClientAuthToken;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzv;->ICustomTabsCallback:Lo/getClientAuthToken;

    return-object p0
.end method

.method public static synthetic onPostMessage(Lcom/google/android/gms/internal/ads/zzzv;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzv;->extraCallback:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lo/getClientAuthToken;Landroid/os/Bundle;Lo/StatementSource;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzv;->ICustomTabsCallback:Lo/getClientAuthToken;

    if-nez p2, :cond_0

    const-string p1, "Listener not set for mediation. Returning."

    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    const/4 p4, 0x0

    if-nez p2, :cond_1

    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzv;->ICustomTabsCallback:Lo/getClientAuthToken;

    invoke-interface {p1, p0, p4}, Lo/getClientAuthToken;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_1
    invoke-static {}, Lo/component20;->onMessageChannelReady()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lo/setAnimationEnabled;->onPostMessage(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    const-string p1, "Default browser does not support custom tabs. Bailing out."

    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzv;->ICustomTabsCallback:Lo/getClientAuthToken;

    invoke-interface {p1, p0, p4}, Lo/getClientAuthToken;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_3
    const-string p2, "tab_url"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzv;->ICustomTabsCallback:Lo/getClientAuthToken;

    invoke-interface {p1, p0, p4}, Lo/getClientAuthToken;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_4
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzv;->extraCallback:Landroid/app/Activity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzv;->onMessageChannelReady:Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzv;->ICustomTabsCallback:Lo/getClientAuthToken;

    invoke-interface {p1, p0}, Lo/getClientAuthToken;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final showInterstitial()V
    .locals 9

    new-instance v0, Lo/forceCloseConnection$onNavigationEvent;

    invoke-direct {v0}, Lo/forceCloseConnection$onNavigationEvent;-><init>()V

    invoke-virtual {v0}, Lo/forceCloseConnection$onNavigationEvent;->onPostMessage()Lo/forceCloseConnection;

    move-result-object v0

    iget-object v1, v0, Lo/forceCloseConnection;->ICustomTabsCallback:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzv;->onMessageChannelReady:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v4, Lo/StatementResponse_WaiverJsonAdapter;

    iget-object v0, v0, Lo/forceCloseConnection;->ICustomTabsCallback:Landroid/content/Intent;

    invoke-direct {v4, v0}, Lo/StatementResponse_WaiverJsonAdapter;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v6, Lo/setQos;

    invoke-direct {v6, p0}, Lo/setQos;-><init>(Lcom/google/android/gms/internal/ads/zzzv;)V

    new-instance v8, Lo/DataListJsonAdapter;

    const/4 v1, 0x0

    invoke-direct {v8, v1, v1, v1}, Lo/DataListJsonAdapter;-><init>(IIZ)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/StatementResponse_WaiverJsonAdapter;Lo/zzd;Lo/GemIntroDetails;Lo/CountJsonAdapter;Lo/DataListJsonAdapter;)V

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/Health_ServiceStatusJsonAdapter;

    invoke-direct {v2, p0, v0}, Lo/Health_ServiceStatusJsonAdapter;-><init>(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    return-void
.end method
