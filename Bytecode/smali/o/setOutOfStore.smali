.class public final Lo/setOutOfStore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/endConnection;

.field private final extraCallback:Lo/getInstallReferrer;

.field private final onMessageChannelReady:Lo/getInstallReferrer;

.field final onNavigationEvent:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getInstallReferrer;",
            "Lo/getInstallReferrer;",
            "Lo/endConnection;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/setOutOfStore;->extraCallback:Lo/getInstallReferrer;

    .line 54
    iput-object p2, p0, Lo/setOutOfStore;->onMessageChannelReady:Lo/getInstallReferrer;

    .line 55
    iput-object p3, p0, Lo/setOutOfStore;->ICustomTabsCallback:Lo/endConnection;

    .line 56
    iput-object p4, p0, Lo/setOutOfStore;->onNavigationEvent:Lo/setDeviceTrackingDisabled;

    return-void
.end method

.method static extraCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;ZI)Ljava/util/Map;
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

    const-string v0, "DiskCacheProducer"

    .line 141
    invoke-interface {p0, p1, v0}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "cached_value_found"

    if-eqz p2, :cond_1

    .line 147
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "encodedImageSize"

    .line 145
    invoke-static {p0, p1, p3, p2}, Lo/getLocalMatrix;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 7033
    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 7034
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7035
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 5
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

    .line 61
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 1205
    iget-boolean v1, v0, Lo/getHostPrefix;->warmup:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2125
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onTransact()Lo/getHostPrefix$onMessageChannelReady;

    move-result-object v0

    .line 2340
    iget v0, v0, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    .line 2125
    sget-object v1, Lo/getHostPrefix$onMessageChannelReady;->onNavigationEvent:Lo/getHostPrefix$onMessageChannelReady;

    .line 3340
    iget v1, v1, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    if-lt v0, v1, :cond_0

    const-string v0, "disk"

    const-string v1, "nil-result_read"

    .line 2127
    invoke-interface {p2, v0, v1}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2128
    invoke-interface {p1, p2, v2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void

    .line 2132
    :cond_0
    iget-object v0, p0, Lo/setOutOfStore;->onNavigationEvent:Lo/setDeviceTrackingDisabled;

    invoke-interface {v0, p1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void

    .line 67
    :cond_1
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v1

    const-string v3, "DiskCacheProducer"

    invoke-interface {v1, p2, v3}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lo/setOutOfStore;->ICustomTabsCallback:Lo/endConnection;

    .line 70
    invoke-interface {p2}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    invoke-interface {v1, v0}, Lo/endConnection;->onPostMessage(Lo/getHostPrefix;)Lo/invalidateSpanInfo;

    move-result-object v1

    .line 4146
    iget-object v0, v0, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    .line 71
    sget-object v3, Lo/getHostPrefix$extraCallback;->onNavigationEvent:Lo/getHostPrefix$extraCallback;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 72
    iget-object v0, p0, Lo/setOutOfStore;->onMessageChannelReady:Lo/getInstallReferrer;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/setOutOfStore;->extraCallback:Lo/getInstallReferrer;

    .line 74
    :goto_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 75
    invoke-virtual {v0, v1, v2}, Lo/getInstallReferrer;->onNavigationEvent(Lo/invalidateSpanInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/getDrawerToggleDelegate;

    move-result-object v0

    .line 5084
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v1

    .line 5085
    new-instance v3, Lo/setOutOfStore$1;

    invoke-direct {v3, p0, v1, p2, p1}, Lo/setOutOfStore$1;-><init>(Lo/setOutOfStore;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/waitForCustomerUserId;)V

    .line 5672
    sget-object p1, Lo/getDrawerToggleDelegate;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, p1}, Lo/getDrawerToggleDelegate;->extraCallback(Lo/getDelegate;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;

    .line 6157
    new-instance p1, Lo/setOutOfStore$4;

    invoke-direct {p1, v2}, Lo/setOutOfStore$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    return-void
.end method
