.class public final Lo/getAttributionId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/isTrackingStopped;


# direct methods
.method public constructor <init>(Lo/setDeviceTrackingDisabled;Lo/isTrackingStopped;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;",
            "Lo/isTrackingStopped;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    check-cast p1, Lo/setDeviceTrackingDisabled;

    iput-object p1, p0, Lo/getAttributionId;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    .line 27
    iput-object p2, p0, Lo/getAttributionId;->extraCallback:Lo/isTrackingStopped;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "TT;>;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 36
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v6

    .line 37
    new-instance v9, Lo/getAttributionId$2;

    const-string v5, "BackgroundThreadHandoffProducer"

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, p2

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lo/getAttributionId$2;-><init>(Lo/getAttributionId;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/waitForCustomerUserId;)V

    .line 53
    new-instance p1, Lo/getAttributionId$5;

    invoke-direct {p1, p0, v9}, Lo/getAttributionId$5;-><init>(Lo/getAttributionId;Lo/validateAndTrackInAppPurchase;)V

    invoke-interface {p2, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    .line 62
    iget-object p1, p0, Lo/getAttributionId;->extraCallback:Lo/isTrackingStopped;

    invoke-interface {p1, v9}, Lo/isTrackingStopped;->extraCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 66
    throw p1
.end method
