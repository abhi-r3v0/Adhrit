.class final Lo/getAttributionId$2;
.super Lo/validateAndTrackInAppPurchase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAttributionId;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/validateAndTrackInAppPurchase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/unregisterConversionListener;

.field private synthetic onMessageChannelReady:Lo/setPreinstallAttribution;

.field private synthetic onNavigationEvent:Lo/getAttributionId;

.field private synthetic onPostMessage:Lo/waitForCustomerUserId;


# direct methods
.method constructor <init>(Lo/getAttributionId;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/waitForCustomerUserId;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lo/getAttributionId$2;->onNavigationEvent:Lo/getAttributionId;

    iput-object p6, p0, Lo/getAttributionId$2;->ICustomTabsCallback:Lo/unregisterConversionListener;

    iput-object p7, p0, Lo/getAttributionId$2;->onMessageChannelReady:Lo/setPreinstallAttribution;

    iput-object p8, p0, Lo/getAttributionId$2;->onPostMessage:Lo/waitForCustomerUserId;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/validateAndTrackInAppPurchase;-><init>(Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lo/getAttributionId$2;->ICustomTabsCallback:Lo/unregisterConversionListener;

    iget-object v0, p0, Lo/getAttributionId$2;->onMessageChannelReady:Lo/setPreinstallAttribution;

    const-string v1, "BackgroundThreadHandoffProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    iget-object p1, p0, Lo/getAttributionId$2;->onNavigationEvent:Lo/getAttributionId;

    .line 1016
    iget-object p1, p1, Lo/getAttributionId;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    .line 42
    iget-object v0, p0, Lo/getAttributionId$2;->onPostMessage:Lo/waitForCustomerUserId;

    iget-object v1, p0, Lo/getAttributionId$2;->onMessageChannelReady:Lo/setPreinstallAttribution;

    invoke-interface {p1, v0, v1}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
