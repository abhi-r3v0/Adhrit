.class public abstract Lcom/appsflyer/AppsFlyerLib;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/appsflyer/AppsFlyerLib;
    .locals 1

    .line 21
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract enableFacebookDeferredApplinks(Z)V
.end method

.method public abstract enableLocationCollection(Z)Lcom/appsflyer/AppsFlyerLib;
.end method

.method public abstract getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getAttributionId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getHostName()Ljava/lang/String;
.end method

.method public abstract getHostPrefix()Ljava/lang/String;
.end method

.method public abstract getOutOfStore(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;)Lcom/appsflyer/AppsFlyerLib;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
.end method

.method public abstract isPreInstalledApp(Landroid/content/Context;)Z
.end method

.method public abstract isTrackingStopped()Z
.end method

.method public abstract onPause(Landroid/content/Context;)V
.end method

.method public abstract performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V
.end method

.method public abstract registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
.end method

.method public abstract registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
.end method

.method public abstract reportTrackSession(Landroid/content/Context;)V
.end method

.method public abstract sendAdRevenue(Landroid/content/Context;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendDeepLinkData(Landroid/app/Activity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendPushNotificationData(Landroid/app/Activity;)V
.end method

.method public abstract setAdditionalData(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAndroidIdData(Ljava/lang/String;)V
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setAppInviteOneLink(Ljava/lang/String;)V
.end method

.method public abstract setCollectAndroidID(Z)V
.end method

.method public abstract setCollectIMEI(Z)V
.end method

.method public abstract setCollectOaid(Z)V
.end method

.method public abstract setConsumeAFDeepLinks(Z)V
.end method

.method public abstract setCurrencyCode(Ljava/lang/String;)V
.end method

.method public abstract setCustomerIdAndTrack(Ljava/lang/String;Landroid/content/Context;)V
.end method

.method public abstract setCustomerUserId(Ljava/lang/String;)V
.end method

.method public abstract setDebugLog(Z)V
.end method

.method public abstract setDeviceTrackingDisabled(Z)V
.end method

.method public abstract setExtension(Ljava/lang/String;)V
.end method

.method public abstract setHost(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHostName(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setImeiData(Ljava/lang/String;)V
.end method

.method public abstract setIsUpdate(Z)V
.end method

.method public abstract setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
.end method

.method public abstract setMinTimeBetweenSessions(I)V
.end method

.method public abstract setOaidData(Ljava/lang/String;)V
.end method

.method public varargs abstract setOneLinkCustomDomain([Ljava/lang/String;)V
.end method

.method public abstract setOutOfStore(Ljava/lang/String;)V
.end method

.method public abstract setPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract setPluginDeepLinkData(Landroid/content/Intent;)V
.end method

.method public abstract setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract setResolveDeepLinkURLs([Ljava/lang/String;)V
.end method

.method public varargs abstract setSharingFilter([Ljava/lang/String;)V
.end method

.method public abstract setSharingFilterForAllPartners()V
.end method

.method public varargs abstract setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
.end method

.method public varargs abstract setUserEmails([Ljava/lang/String;)V
.end method

.method public abstract startTracking(Landroid/content/Context;)V
.end method

.method public abstract startTracking(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract startTracking(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/AppsFlyerTrackingRequestListener;)V
.end method

.method public abstract stopTracking(ZLandroid/content/Context;)V
.end method

.method public abstract trackAppLaunch(Landroid/content/Context;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/AppsFlyerTrackingRequestListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/AppsFlyerTrackingRequestListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract trackLocation(Landroid/content/Context;DD)V
.end method

.method public abstract unregisterConversionListener()V
.end method

.method public abstract updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract validateAndTrackInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract waitForCustomerUserId(Z)V
.end method
