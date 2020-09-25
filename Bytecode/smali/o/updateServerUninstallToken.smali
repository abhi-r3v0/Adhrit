.class public final Lo/updateServerUninstallToken;
.super Lo/enableLocationCollection;
.source ""


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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lo/enableLocationCollection;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V

    return-void
.end method


# virtual methods
.method protected final extraCallback(Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;Z)Lo/waitForCustomerUserId;
    .locals 0
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

    return-object p1
.end method

.method protected final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapMemoryCacheGetProducer"

    return-object v0
.end method

.method protected final onPostMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "pipe_ui"

    return-object v0
.end method
