.class public final Lo/reportTrackSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/reportTrackSession$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getTranslateY;

.field private final extraCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/CustomVersionedParcelable;

.field private final onNavigationEvent:Lo/getInstallReferrer;

.field private final onPostMessage:Lo/endConnection;


# direct methods
.method public constructor <init>(Lo/getInstallReferrer;Lo/endConnection;Lo/CustomVersionedParcelable;Lo/getTranslateY;Lo/setDeviceTrackingDisabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getInstallReferrer;",
            "Lo/endConnection;",
            "Lo/CustomVersionedParcelable;",
            "Lo/getTranslateY;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lo/reportTrackSession;->onNavigationEvent:Lo/getInstallReferrer;

    .line 67
    iput-object p2, p0, Lo/reportTrackSession;->onPostMessage:Lo/endConnection;

    .line 68
    iput-object p3, p0, Lo/reportTrackSession;->onMessageChannelReady:Lo/CustomVersionedParcelable;

    .line 69
    iput-object p4, p0, Lo/reportTrackSession;->ICustomTabsCallback:Lo/getTranslateY;

    .line 70
    iput-object p5, p0, Lo/reportTrackSession;->extraCallback:Lo/setDeviceTrackingDisabled;

    return-void
.end method

.method static ICustomTabsCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;ZI)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/unregisterConversionListener;",
            "Lo/setPreinstallAttribution;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PartialDiskCacheProducer"

    .line 185
    invoke-interface {p0, p1, v0}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "cached_value_found"

    if-eqz p2, :cond_1

    .line 191
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "encodedImageSize"

    .line 189
    invoke-static {p0, p1, p3, p2}, Lo/getLocalMatrix;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 195
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 5033
    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 5034
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5035
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/reportTrackSession;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V
    .locals 9

    .line 5161
    new-instance v8, Lo/reportTrackSession$onNavigationEvent;

    iget-object v2, p0, Lo/reportTrackSession;->onNavigationEvent:Lo/getInstallReferrer;

    iget-object v4, p0, Lo/reportTrackSession;->onMessageChannelReady:Lo/CustomVersionedParcelable;

    iget-object v5, p0, Lo/reportTrackSession;->ICustomTabsCallback:Lo/getTranslateY;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lo/reportTrackSession$onNavigationEvent;-><init>(Lo/waitForCustomerUserId;Lo/getInstallReferrer;Lo/invalidateSpanInfo;Lo/CustomVersionedParcelable;Lo/getTranslateY;Lo/getCardBackgroundColor;B)V

    .line 5170
    iget-object p0, p0, Lo/reportTrackSession;->extraCallback:Lo/setDeviceTrackingDisabled;

    invoke-interface {p0, v8, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 1205
    iget-boolean v1, v0, Lo/getHostPrefix;->warmup:Z

    if-nez v1, :cond_0

    .line 77
    iget-object v0, p0, Lo/reportTrackSession;->extraCallback:Lo/setDeviceTrackingDisabled;

    invoke-interface {v0, p1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void

    .line 81
    :cond_0
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v1

    const-string v2, "PartialDiskCacheProducer"

    invoke-interface {v1, p2, v2}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 2150
    iget-object v0, v0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 1213
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fresco_partial"

    const-string/jumbo v2, "true"

    .line 1214
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1215
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lo/reportTrackSession;->onPostMessage:Lo/endConnection;

    .line 86
    invoke-interface {p2}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    .line 85
    invoke-interface {v1, v0}, Lo/endConnection;->extraCallback(Landroid/net/Uri;)Lo/invalidateSpanInfo;

    move-result-object v7

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 89
    iget-object v1, p0, Lo/reportTrackSession;->onNavigationEvent:Lo/getInstallReferrer;

    .line 90
    invoke-virtual {v1, v7, v0}, Lo/getInstallReferrer;->onNavigationEvent(Lo/invalidateSpanInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/getDrawerToggleDelegate;

    move-result-object v1

    .line 3102
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v4

    .line 3103
    new-instance v8, Lo/reportTrackSession$4;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lo/reportTrackSession$4;-><init>(Lo/reportTrackSession;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;)V

    .line 3672
    sget-object p1, Lo/getDrawerToggleDelegate;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v8, p1}, Lo/getDrawerToggleDelegate;->extraCallback(Lo/getDelegate;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;

    .line 4201
    new-instance p1, Lo/reportTrackSession$1;

    invoke-direct {p1, v0}, Lo/reportTrackSession$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    return-void
.end method
