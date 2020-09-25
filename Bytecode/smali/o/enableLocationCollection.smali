.class public Lo/enableLocationCollection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
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
.field private final extraCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/endConnection;


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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/enableLocationCollection;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    .line 38
    iput-object p2, p0, Lo/enableLocationCollection;->onNavigationEvent:Lo/endConnection;

    .line 39
    iput-object p3, p0, Lo/enableLocationCollection;->extraCallback:Lo/setDeviceTrackingDisabled;

    return-void
.end method


# virtual methods
.method protected extraCallback(Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;Z)Lo/waitForCustomerUserId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/invalidateSpanInfo;",
            "Z)",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lo/enableLocationCollection$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/enableLocationCollection$3;-><init>(Lo/enableLocationCollection;Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;Z)V

    return-object v0
.end method

.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 12
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

    .line 47
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 50
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    .line 53
    invoke-interface {p2}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lo/enableLocationCollection;->onNavigationEvent:Lo/endConnection;

    invoke-interface {v3, v1, v2}, Lo/endConnection;->extraCallback(Lo/getHostPrefix;Ljava/lang/Object;)Lo/invalidateSpanInfo;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lo/enableLocationCollection;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    invoke-interface {v2, v1}, Lo/getReferrerClickTimestampSeconds;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "memory_bitmap"

    const/4 v4, 0x0

    const-string v5, "cached_value_found"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    .line 59
    :try_start_1
    invoke-virtual {v2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/AFHelper;

    .line 1189
    invoke-interface {v8}, Lo/AFHelper;->ICustomTabsCallback$Stub()Ljava/util/Map;

    move-result-object v8

    invoke-interface {p2, v8}, Lo/setPreinstallAttribution;->onMessageChannelReady(Ljava/util/Map;)V

    .line 60
    invoke-virtual {v2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/convertToJsonObject;

    invoke-virtual {v8}, Lo/convertToJsonObject;->asBinder()Lo/AFKeystoreWrapper;

    move-result-object v8

    invoke-interface {v8}, Lo/AFKeystoreWrapper;->onPostMessage()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 64
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, p2, v10}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "true"

    .line 2033
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 2034
    invoke-interface {v11, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v6

    .line 62
    :goto_0
    invoke-interface {v0, p2, v9, v10}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, p2, v9, v7}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {p0}, Lo/enableLocationCollection;->onPostMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v3, v9}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 70
    invoke-interface {p1, v9}, Lo/waitForCustomerUserId;->extraCallback(F)V

    :cond_1
    if-eqz v8, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 72
    :goto_1
    invoke-interface {p1, v2, v9}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    .line 73
    invoke-virtual {v2}, Lo/getRootAlpha;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_3

    .line 110
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 79
    :cond_3
    :try_start_2
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onTransact()Lo/getHostPrefix$onMessageChannelReady;

    move-result-object v2

    .line 2340
    iget v2, v2, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    .line 79
    sget-object v8, Lo/getHostPrefix$onMessageChannelReady;->onMessageChannelReady:Lo/getHostPrefix$onMessageChannelReady;

    .line 3340
    iget v8, v8, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "false"

    if-lt v2, v8, :cond_5

    .line 83
    :try_start_3
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4033
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 4034
    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4035
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v6

    .line 81
    :goto_2
    invoke-interface {v0, p2, v1, v2}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1, v4}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {p0}, Lo/enableLocationCollection;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1, v6, v7}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 95
    :cond_5
    :try_start_4
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v2

    .line 4209
    iget-boolean v2, v2, Lo/getHostPrefix;->ICustomTabsService:Z

    .line 94
    invoke-virtual {p0, p1, v1, v2}, Lo/enableLocationCollection;->extraCallback(Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;Z)Lo/waitForCustomerUserId;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lo/enableLocationCollection;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5033
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 5034
    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5035
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 96
    :cond_6
    invoke-interface {v0, p2, v1, v6}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 105
    iget-object v0, p0, Lo/enableLocationCollection;->extraCallback:Lo/setDeviceTrackingDisabled;

    invoke-interface {v0, p1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    .line 106
    invoke-static {}, Lo/setHostName;->onPostMessage()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 111
    throw p1
.end method

.method protected onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapMemoryCacheProducer"

    return-object v0
.end method

.method protected onPostMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "pipe_bg"

    return-object v0
.end method
