.class public final Lo/sendDeepLinkData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendDeepLinkData$onPostMessage;
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
.field private final extraCallback:Lo/getInstallReferrer;

.field private final onMessageChannelReady:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/endConnection;

.field private final onPostMessage:Lo/getInstallReferrer;


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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lo/sendDeepLinkData;->onPostMessage:Lo/getInstallReferrer;

    .line 45
    iput-object p2, p0, Lo/sendDeepLinkData;->extraCallback:Lo/getInstallReferrer;

    .line 46
    iput-object p3, p0, Lo/sendDeepLinkData;->onNavigationEvent:Lo/endConnection;

    .line 47
    iput-object p4, p0, Lo/sendDeepLinkData;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 8
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

    .line 1057
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onTransact()Lo/getHostPrefix$onMessageChannelReady;

    move-result-object v0

    .line 1340
    iget v0, v0, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    .line 1057
    sget-object v1, Lo/getHostPrefix$onMessageChannelReady;->onNavigationEvent:Lo/getHostPrefix$onMessageChannelReady;

    .line 2340
    iget v1, v1, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    if-lt v0, v1, :cond_0

    const-string v0, "disk"

    const-string v1, "nil-result_write"

    .line 1059
    invoke-interface {p2, v0, v1}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 1060
    invoke-interface {p1, p2, v0}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void

    .line 1063
    :cond_0
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 3205
    iget-boolean v0, v0, Lo/getHostPrefix;->warmup:Z

    if-eqz v0, :cond_1

    .line 1064
    new-instance v0, Lo/sendDeepLinkData$onPostMessage;

    iget-object v4, p0, Lo/sendDeepLinkData;->onPostMessage:Lo/getInstallReferrer;

    iget-object v5, p0, Lo/sendDeepLinkData;->extraCallback:Lo/getInstallReferrer;

    iget-object v6, p0, Lo/sendDeepLinkData;->onNavigationEvent:Lo/endConnection;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lo/sendDeepLinkData$onPostMessage;-><init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;B)V

    move-object p1, v0

    .line 1075
    :cond_1
    iget-object v0, p0, Lo/sendDeepLinkData;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    invoke-interface {v0, p1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
