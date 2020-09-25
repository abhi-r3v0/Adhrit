.class public abstract Lcom/google/ads/mediation/AbstractAdViewAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Lo/setPaymentLinkMobile;
.implements Lo/getItems;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/internal/ads/zzatm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/AbstractAdViewAdapter$extraCallback;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$onPostMessage;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$ICustomTabsCallback;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"


# instance fields
.field private zzgw:Lo/getPoints;

.field private zzgx:Lo/getRewardsOpeningBalance;

.field private zzgy:Lo/getRewardsEarned;

.field private zzgz:Landroid/content/Context;

.field private zzha:Lo/getRewardsOpeningBalance;

.field private zzhb:Lo/getPayments;

.field private final zzhc:Lo/getAmount;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/setEnterSharedElementCallback$onPostMessage;

    invoke-direct {v0, p0}, Lo/setEnterSharedElementCallback$onPostMessage;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhc:Lo/getAmount;

    return-void
.end method

.method private final zza(Landroid/content/Context;Lo/StatementSource;Landroid/os/Bundle;Landroid/os/Bundle;)Lo/StatementResponse$RewardDetails$RewardPoints;
    .locals 4

    new-instance v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;

    invoke-direct {v0}, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;-><init>()V

    invoke-interface {p2}, Lo/StatementSource;->onPostMessage()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1000
    iget-object v2, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-virtual {v2, v1}, Lo/WheelSlabJsonAdapter;->extraCallback(Ljava/util/Date;)V

    :cond_0
    invoke-interface {p2}, Lo/StatementSource;->ICustomTabsCallback()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2000
    iget-object v2, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-virtual {v2, v1}, Lo/WheelSlabJsonAdapter;->ICustomTabsCallback(I)V

    :cond_1
    invoke-interface {p2}, Lo/StatementSource;->extraCallback()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3000
    iget-object v3, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-virtual {v3, v2}, Lo/WheelSlabJsonAdapter;->extraCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lo/StatementSource;->onMessageChannelReady()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4000
    iget-object v2, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-virtual {v2, v1}, Lo/WheelSlabJsonAdapter;->extraCallback(Landroid/location/Location;)V

    :cond_3
    invoke-interface {p2}, Lo/StatementSource;->ICustomTabsCallback$Stub()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {p1}, Lo/ControlStatementRepo$TransactionItem;->ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5000
    iget-object v1, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-virtual {v1, p1}, Lo/WheelSlabJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p2}, Lo/StatementSource;->onNavigationEvent()I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6

    invoke-interface {p2}, Lo/StatementSource;->onNavigationEvent()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 6000
    :goto_1
    iget-object p1, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-virtual {p1, v1}, Lo/WheelSlabJsonAdapter;->onMessageChannelReady(Z)V

    :cond_6
    invoke-interface {p2}, Lo/StatementSource;->onTransact()Z

    move-result p1

    .line 7000
    iget-object p2, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-virtual {p2, p1}, Lo/WheelSlabJsonAdapter;->extraCallback(Z)V

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 8000
    iget-object p3, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-virtual {p3, p2, p1}, Lo/WheelSlabJsonAdapter;->onMessageChannelReady(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class p3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "_emulatorLiveAds"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Lo/WheelSlabJsonAdapter;->onNavigationEvent(Ljava/lang/String;)V

    .line 9000
    :cond_7
    new-instance p1, Lo/StatementResponse$RewardDetails$RewardPoints;

    invoke-direct {p1, v0, v2}, Lo/StatementResponse$RewardDetails$RewardPoints;-><init>(Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;B)V

    return-object p1
.end method

.method public static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhb:Lo/getPayments;

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lo/getRewardsOpeningBalance;)Lo/getRewardsOpeningBalance;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    return-object p1
.end method

.method public static synthetic zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getRewardsOpeningBalance;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    return-object p0
.end method


# virtual methods
.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    return-object v0
.end method

.method public getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Lo/Attributes$onNavigationEvent;

    invoke-direct {v0}, Lo/Attributes$onNavigationEvent;-><init>()V

    const/4 v1, 0x1

    .line 19000
    iput v1, v0, Lo/Attributes$onNavigationEvent;->onPostMessage:I

    .line 20000
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v0, v0, Lo/Attributes$onNavigationEvent;->onPostMessage:I

    const-string v2, "capabilities"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getVideoController()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getPoints;->onNavigationEvent()Lo/getRewardsClosingBalance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getRewardsClosingBalance;->onMessageChannelReady()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lo/StatementSource;Ljava/lang/String;Lo/getPayments;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgz:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhb:Lo/getPayments;

    invoke-interface {p4, p0}, Lo/getPayments;->onMessageChannelReady(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhb:Lo/getPayments;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lo/StatementSource;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgz:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhb:Lo/getPayments;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lo/getRewardsOpeningBalance;

    invoke-direct {v1, v0}, Lo/getRewardsOpeningBalance;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    .line 24000
    iget-object v0, v1, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/WinDetailsItem;->onNavigationEvent(Z)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 25000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0, v1}, Lo/WinDetailsItem;->onPostMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzhc:Lo/getAmount;

    .line 26000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0, v1}, Lo/WinDetailsItem;->onNavigationEvent(Lo/getAmount;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    new-instance v1, Lo/getObject;

    invoke-direct {v1, p0}, Lo/getObject;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    .line 27000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0, v1}, Lo/WinDetailsItem;->onMessageChannelReady(Lo/setPayments;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgz:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p3, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lo/StatementSource;Landroid/os/Bundle;Landroid/os/Bundle;)Lo/StatementResponse$RewardDetails$RewardPoints;

    move-result-object p1

    .line 28000
    iget-object p2, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    .line 29000
    iget-object p1, p1, Lo/StatementResponse$RewardDetails$RewardPoints;->onMessageChannelReady:Lo/WinAccessibility;

    .line 28000
    invoke-virtual {p2, p1}, Lo/WinDetailsItem;->onPostMessage(Lo/WinAccessibility;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "AdMobAdapter.loadAd called before initialize."

    .line 0
    invoke-static {p1}, Lo/getText1;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getPoints;->onPostMessage()V

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lo/getRewardsOpeningBalance;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lo/getRewardsOpeningBalance;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgy:Lo/getRewardsEarned;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgy:Lo/getRewardsEarned;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    :cond_3
    return-void
.end method

.method public onImmersiveModeUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lo/getRewardsOpeningBalance;

    if-eqz v0, :cond_0

    .line 16000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0, p1}, Lo/WinDetailsItem;->ICustomTabsCallback(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    if-eqz v0, :cond_1

    .line 17000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0, p1}, Lo/WinDetailsItem;->ICustomTabsCallback(Z)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getPoints;->extraCallback()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getPoints;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lo/StatementSourceJsonAdapter;Landroid/os/Bundle;Lo/getRewardsExpired;Lo/StatementSource;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lo/getPoints;

    invoke-direct {v0, p1}, Lo/getPoints;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    new-instance v1, Lo/getRewardsExpired;

    .line 10000
    iget v2, p4, Lo/getRewardsExpired;->asBinder:I

    .line 11000
    iget p4, p4, Lo/getRewardsExpired;->warmup:I

    invoke-direct {v1, v2, p4}, Lo/getRewardsExpired;-><init>(II)V

    invoke-virtual {v0, v1}, Lo/getPoints;->setAdSize(Lo/getRewardsExpired;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lo/getPoints;->setAdUnitId(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lo/StatementSourceJsonAdapter;)V

    invoke-virtual {p4, v0}, Lo/getPoints;->setAdListener(Lo/getRewardType;)V

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lo/getPoints;

    invoke-direct {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lo/StatementSource;Landroid/os/Bundle;Landroid/os/Bundle;)Lo/StatementResponse$RewardDetails$RewardPoints;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/getPoints;->onPostMessage(Lo/StatementResponse$RewardDetails$RewardPoints;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lo/getClientAuthToken;Landroid/os/Bundle;Lo/StatementSource;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lo/getRewardsOpeningBalance;

    invoke-direct {v0, p1}, Lo/getRewardsOpeningBalance;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lo/getRewardsOpeningBalance;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 12000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0, v1}, Lo/WinDetailsItem;->onPostMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lo/getRewardsOpeningBalance;

    new-instance v1, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lo/getClientAuthToken;)V

    .line 13000
    iget-object p2, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {p2, v1}, Lo/WinDetailsItem;->ICustomTabsCallback(Lo/getRewardType;)V

    iget-object p2, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    check-cast v1, Lo/zzd;

    invoke-virtual {p2, v1}, Lo/WinDetailsItem;->onMessageChannelReady(Lo/zzd;)V

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lo/getRewardsOpeningBalance;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lo/StatementSource;Landroid/os/Bundle;Landroid/os/Bundle;)Lo/StatementResponse$RewardDetails$RewardPoints;

    move-result-object p1

    .line 14000
    iget-object p2, p2, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    .line 15000
    iget-object p1, p1, Lo/StatementResponse$RewardDetails$RewardPoints;->onMessageChannelReady:Lo/WinAccessibility;

    .line 14000
    invoke-virtual {p2, p1}, Lo/WinDetailsItem;->onPostMessage(Lo/WinAccessibility;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lo/getClientAuthTokenExpiry;Landroid/os/Bundle;Lo/getPaymentLinkMobile;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lo/getClientAuthTokenExpiry;)V

    const-string p2, "pubid"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lo/getRewardsEarned$ICustomTabsCallback;

    invoke-direct {v1, p1, p2}, Lo/getRewardsEarned$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lo/getRewardsEarned$ICustomTabsCallback;->extraCallback(Lo/getRewardType;)Lo/getRewardsEarned$ICustomTabsCallback;

    move-result-object p2

    invoke-interface {p4}, Lo/getPaymentLinkMobile;->onRelationshipValidationResult()Lo/getPreviousBalance;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lo/getRewardsEarned$ICustomTabsCallback;->ICustomTabsCallback(Lo/getPreviousBalance;)Lo/getRewardsEarned$ICustomTabsCallback;

    :cond_0
    invoke-interface {p4}, Lo/getPaymentLinkMobile;->asBinder()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lo/getRewardsEarned$ICustomTabsCallback;->extraCallback(Lo/getTotalCreditLimit$onMessageChannelReady;)Lo/getRewardsEarned$ICustomTabsCallback;

    :cond_1
    invoke-interface {p4}, Lo/getPaymentLinkMobile;->asInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lo/getRewardsEarned$ICustomTabsCallback;->onPostMessage(Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;)Lo/getRewardsEarned$ICustomTabsCallback;

    :cond_2
    invoke-interface {p4}, Lo/getPaymentLinkMobile;->warmup()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lo/getRewardsEarned$ICustomTabsCallback;->ICustomTabsCallback(Lo/getAvailableCreditLimit$onPostMessage;)Lo/getRewardsEarned$ICustomTabsCallback;

    :cond_3
    invoke-interface {p4}, Lo/getPaymentLinkMobile;->getInterfaceDescriptor()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4}, Lo/getPaymentLinkMobile;->ICustomTabsCallback$Stub$Proxy()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Lo/getPaymentLinkMobile;->ICustomTabsCallback$Stub$Proxy()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2, v2, v0, v3}, Lo/getRewardsEarned$ICustomTabsCallback;->extraCallback(Ljava/lang/String;Lo/getCurrentPurchaseValue$onPostMessage;Lo/getCurrentPurchaseValue$onNavigationEvent;)Lo/getRewardsEarned$ICustomTabsCallback;

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lo/getRewardsEarned$ICustomTabsCallback;->onPostMessage()Lo/getRewardsEarned;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgy:Lo/getRewardsEarned;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lo/StatementSource;Landroid/os/Bundle;Landroid/os/Bundle;)Lo/StatementResponse$RewardDetails$RewardPoints;

    move-result-object p1

    .line 22000
    iget-object p1, p1, Lo/StatementResponse$RewardDetails$RewardPoints;->onMessageChannelReady:Lo/WinAccessibility;

    .line 23000
    :try_start_0
    iget-object p3, p2, Lo/getRewardsEarned;->onNavigationEvent:Lo/PayoutClaimSlotMachineResponse;

    iget-object p2, p2, Lo/getRewardsEarned;->extraCallback:Landroid/content/Context;

    invoke-static {p2, p1}, Lo/setDigitUpdateListener;->extraCallback(Landroid/content/Context;Lo/WinAccessibility;)Lo/setLastItem;

    move-result-object p1

    invoke-interface {p3, p1}, Lo/PayoutClaimSlotMachineResponse;->onMessageChannelReady(Lo/setLastItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to load ad."

    invoke-static {p2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lo/getRewardsOpeningBalance;

    .line 18000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0}, Lo/WinDetailsItem;->onNavigationEvent()V

    return-void
.end method

.method public showVideo()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzha:Lo/getRewardsOpeningBalance;

    .line 30000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0}, Lo/WinDetailsItem;->onNavigationEvent()V

    return-void
.end method

.method protected abstract zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
