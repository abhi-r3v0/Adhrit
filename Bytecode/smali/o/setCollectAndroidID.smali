.class public final Lo/setCollectAndroidID;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCollectAndroidID$ICustomTabsCallback;
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
.field private final ICustomTabsCallback:Lo/endConnection;

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

.field private final onNavigationEvent:Lo/getInstallReferrer;

.field private final onPostMessage:Lo/isReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/isReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/isReady;Lo/isReady;Lo/setDeviceTrackingDisabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getInstallReferrer;",
            "Lo/getInstallReferrer;",
            "Lo/endConnection;",
            "Lo/isReady;",
            "Lo/isReady;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/setCollectAndroidID;->extraCallback:Lo/getInstallReferrer;

    .line 39
    iput-object p2, p0, Lo/setCollectAndroidID;->onNavigationEvent:Lo/getInstallReferrer;

    .line 40
    iput-object p3, p0, Lo/setCollectAndroidID;->ICustomTabsCallback:Lo/endConnection;

    .line 41
    iput-object p4, p0, Lo/setCollectAndroidID;->onPostMessage:Lo/isReady;

    .line 42
    iput-object p5, p0, Lo/setCollectAndroidID;->onTransact:Lo/isReady;

    .line 43
    iput-object p6, p0, Lo/setCollectAndroidID;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 11
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

    const-string v0, "EncodedProbeProducer"

    .line 50
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 53
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v1

    .line 54
    invoke-interface {v1, p2, v0}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 55
    new-instance v10, Lo/setCollectAndroidID$ICustomTabsCallback;

    iget-object v5, p0, Lo/setCollectAndroidID;->extraCallback:Lo/getInstallReferrer;

    iget-object v6, p0, Lo/setCollectAndroidID;->onNavigationEvent:Lo/getInstallReferrer;

    iget-object v7, p0, Lo/setCollectAndroidID;->ICustomTabsCallback:Lo/endConnection;

    iget-object v8, p0, Lo/setCollectAndroidID;->onPostMessage:Lo/isReady;

    iget-object v9, p0, Lo/setCollectAndroidID;->onTransact:Lo/isReady;

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lo/setCollectAndroidID$ICustomTabsCallback;-><init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/isReady;Lo/isReady;)V

    const/4 p1, 0x0

    .line 65
    invoke-interface {v1, p2, v0, p1}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 69
    iget-object p1, p0, Lo/setCollectAndroidID;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    invoke-interface {p1, v10, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    .line 70
    invoke-static {}, Lo/setHostName;->onPostMessage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 75
    throw p1
.end method
