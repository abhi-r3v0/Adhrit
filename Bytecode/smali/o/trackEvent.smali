.class public final Lo/trackEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/trackEvent$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/endConnection;

.field private final onMessageChannelReady:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;",
            "Lo/endConnection;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/trackEvent;->onNavigationEvent:Lo/getReferrerClickTimestampSeconds;

    .line 37
    iput-object p2, p0, Lo/trackEvent;->extraCallback:Lo/endConnection;

    .line 38
    iput-object p3, p0, Lo/trackEvent;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    .line 47
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    .line 48
    invoke-interface {p2}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    move-result-object v2

    .line 1228
    iget-object v3, v1, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    if-eqz v3, :cond_4

    .line 52
    invoke-interface {v3}, Lo/performOnAppAttribution;->onMessageChannelReady()Lo/invalidateSpanInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "PostprocessedBitmapMemoryCacheProducer"

    .line 56
    invoke-interface {v0, p2, v4}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 57
    iget-object v5, p0, Lo/trackEvent;->extraCallback:Lo/endConnection;

    .line 58
    invoke-interface {v5, v1, v2}, Lo/endConnection;->onNavigationEvent(Lo/getHostPrefix;Ljava/lang/Object;)Lo/invalidateSpanInfo;

    move-result-object v8

    .line 59
    iget-object v1, p0, Lo/trackEvent;->onNavigationEvent:Lo/getReferrerClickTimestampSeconds;

    invoke-interface {v1, v8}, Lo/getReferrerClickTimestampSeconds;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;

    move-result-object v1

    const-string v2, "cached_value_found"

    const/4 v5, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_2

    .line 64
    invoke-interface {v0, p2, v4}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5033
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v12}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v5, "true"

    .line 5034
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5035
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 61
    :cond_1
    invoke-interface {v0, p2, v4, v5}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    invoke-interface {v0, p2, v4, v12}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    const-string v0, "memory_bitmap"

    const-string v2, "postprocessed"

    .line 68
    invoke-interface {p2, v0, v2}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 69
    invoke-interface {p1, p2}, Lo/waitForCustomerUserId;->extraCallback(F)V

    .line 70
    invoke-interface {p1, v1, v12}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    .line 71
    invoke-virtual {v1}, Lo/getRootAlpha;->close()V

    return-void

    .line 73
    :cond_2
    instance-of v9, v3, Lo/setSharingFilter;

    .line 75
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    .line 5209
    iget-boolean v11, v1, Lo/getHostPrefix;->ICustomTabsService:Z

    .line 76
    new-instance v1, Lo/trackEvent$ICustomTabsCallback;

    iget-object v10, p0, Lo/trackEvent;->onNavigationEvent:Lo/getReferrerClickTimestampSeconds;

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lo/trackEvent$ICustomTabsCallback;-><init>(Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;ZLo/getReferrerClickTimestampSeconds;Z)V

    .line 82
    invoke-interface {v0, p2, v4}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8033
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v12}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "false"

    .line 8034
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8035
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 79
    :cond_3
    invoke-interface {v0, p2, v4, v5}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    iget-object p1, p0, Lo/trackEvent;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    invoke-interface {p1, v1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void

    .line 53
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/trackEvent;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    invoke-interface {v0, p1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
