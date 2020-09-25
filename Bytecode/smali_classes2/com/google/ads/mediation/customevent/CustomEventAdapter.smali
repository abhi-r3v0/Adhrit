.class public final Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$extraCallback;,
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter<",
        "Lo/setItems;",
        "Lo/setOnReceiveCalled;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter<",
        "Lo/setItems;",
        "Lo/setOnReceiveCalled;",
        ">;"
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

.field private onNavigationEvent:Lcom/google/ads/mediation/customevent/CustomEventBanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not instantiate custom event adapter: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lo/setItems;",
            ">;"
        }
    .end annotation

    const-class v0, Lo/setItems;

    return-object v0
.end method

.method public final getBannerView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lo/setOnReceiveCalled;",
            ">;"
        }
    .end annotation

    const-class v0, Lo/setOnReceiveCalled;

    return-object v0
.end method

.method public final bridge synthetic requestBannerAd(Lo/AppsFlyerLibCore$c;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lo/AppsFlyerLibCore$8;Lo/setCustomData;Lo/AppsFlyerLibCore$e;)V
    .locals 0

    check-cast p3, Lo/setOnReceiveCalled;

    check-cast p6, Lo/setItems;

    invoke-virtual/range {p0 .. p6}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestBannerAd(Lo/AppsFlyerLibCore$c;Landroid/app/Activity;Lo/setOnReceiveCalled;Lo/AppsFlyerLibCore$8;Lo/setCustomData;Lo/setItems;)V

    return-void
.end method

.method public final requestBannerAd(Lo/AppsFlyerLibCore$c;Landroid/app/Activity;Lo/setOnReceiveCalled;Lo/AppsFlyerLibCore$8;Lo/setCustomData;Lo/setItems;)V
    .locals 8

    iget-object v0, p3, Lo/setOnReceiveCalled;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->extraCallback(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/CustomEventBanner;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->onNavigationEvent:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    if-nez v0, :cond_0

    sget-object p2, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->extraCallback:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    invoke-interface {p1, p0, p2}, Lo/AppsFlyerLibCore$c;->ICustomTabsCallback(Lcom/google/ads/mediation/MediationBannerAdapter;Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)V

    return-void

    :cond_0
    if-nez p6, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lo/setOnReceiveCalled;->ICustomTabsCallback:Ljava/lang/String;

    .line 1000
    iget-object p6, p6, Lo/setItems;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {p6, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v7, p1

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->onNavigationEvent:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    new-instance v1, Lcom/google/ads/mediation/customevent/CustomEventAdapter$onPostMessage;

    invoke-direct {v1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$onPostMessage;-><init>()V

    iget-object v3, p3, Lo/setOnReceiveCalled;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, p3, Lo/setOnReceiveCalled;->onNavigationEvent:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/google/ads/mediation/customevent/CustomEventBanner;->requestBannerAd(Lo/isOnReceiveCalled;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lo/AppsFlyerLibCore$8;Lo/setCustomData;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic requestInterstitialAd(Lo/AppsFlyerProperties;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lo/setCustomData;Lo/AppsFlyerLibCore$e;)V
    .locals 0

    check-cast p3, Lo/setOnReceiveCalled;

    check-cast p5, Lo/setItems;

    invoke-virtual/range {p0 .. p5}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestInterstitialAd(Lo/AppsFlyerProperties;Landroid/app/Activity;Lo/setOnReceiveCalled;Lo/setCustomData;Lo/setItems;)V

    return-void
.end method

.method public final requestInterstitialAd(Lo/AppsFlyerProperties;Landroid/app/Activity;Lo/setOnReceiveCalled;Lo/setCustomData;Lo/setItems;)V
    .locals 7

    iget-object v0, p3, Lo/setOnReceiveCalled;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->extraCallback(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->onMessageChannelReady:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    if-nez v0, :cond_0

    sget-object p2, Lo/AppsFlyerLibCore$b$ICustomTabsCallback;->extraCallback:Lo/AppsFlyerLibCore$b$ICustomTabsCallback;

    invoke-interface {p1, p0, p2}, Lo/AppsFlyerProperties;->onPostMessage(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lo/AppsFlyerLibCore$b$ICustomTabsCallback;)V

    return-void

    :cond_0
    if-nez p5, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lo/setOnReceiveCalled;->ICustomTabsCallback:Ljava/lang/String;

    .line 2000
    iget-object p5, p5, Lo/setItems;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v6, p1

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->onMessageChannelReady:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    new-instance v1, Lcom/google/ads/mediation/customevent/CustomEventAdapter$extraCallback;

    invoke-direct {v1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$extraCallback;-><init>()V

    iget-object v3, p3, Lo/setOnReceiveCalled;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, p3, Lo/setOnReceiveCalled;->onNavigationEvent:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->requestInterstitialAd(Lo/setFirstLaunchCalled;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lo/setCustomData;Ljava/lang/Object;)V

    return-void
.end method

.method public final showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->onMessageChannelReady:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->showInterstitial()V

    return-void
.end method
