.class public final Lo/setPhoneNumber;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPhoneNumber$onMessageChannelReady;
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
.field private final ICustomTabsCallback:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final onNavigationEvent:Lo/getInstallReferrer;

.field private final onPostMessage:Lo/getInstallReferrer;

.field private final onRelationshipValidationResult:Lo/isReady;
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
.method public constructor <init>(Lo/getReferrerClickTimestampSeconds;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/isReady;Lo/isReady;Lo/setDeviceTrackingDisabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/getInstallReferrer;",
            "Lo/getInstallReferrer;",
            "Lo/endConnection;",
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;",
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lo/setPhoneNumber;->ICustomTabsCallback:Lo/getReferrerClickTimestampSeconds;

    .line 45
    iput-object p2, p0, Lo/setPhoneNumber;->onPostMessage:Lo/getInstallReferrer;

    .line 46
    iput-object p3, p0, Lo/setPhoneNumber;->onNavigationEvent:Lo/getInstallReferrer;

    .line 47
    iput-object p4, p0, Lo/setPhoneNumber;->extraCallback:Lo/endConnection;

    .line 48
    iput-object p5, p0, Lo/setPhoneNumber;->onRelationshipValidationResult:Lo/isReady;

    .line 49
    iput-object p6, p0, Lo/setPhoneNumber;->onTransact:Lo/isReady;

    .line 50
    iput-object p7, p0, Lo/setPhoneNumber;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    return-void
.end method


# virtual methods
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

    const-string v0, "BitmapProbeProducer"

    .line 58
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 61
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v1

    .line 62
    invoke-interface {v1, p2, v0}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 63
    new-instance v11, Lo/setPhoneNumber$onMessageChannelReady;

    iget-object v5, p0, Lo/setPhoneNumber;->ICustomTabsCallback:Lo/getReferrerClickTimestampSeconds;

    iget-object v6, p0, Lo/setPhoneNumber;->onPostMessage:Lo/getInstallReferrer;

    iget-object v7, p0, Lo/setPhoneNumber;->onNavigationEvent:Lo/getInstallReferrer;

    iget-object v8, p0, Lo/setPhoneNumber;->extraCallback:Lo/endConnection;

    iget-object v9, p0, Lo/setPhoneNumber;->onRelationshipValidationResult:Lo/isReady;

    iget-object v10, p0, Lo/setPhoneNumber;->onTransact:Lo/isReady;

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lo/setPhoneNumber$onMessageChannelReady;-><init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getReferrerClickTimestampSeconds;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/isReady;Lo/isReady;)V

    const/4 p1, 0x0

    .line 74
    invoke-interface {v1, p2, v0, p1}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 78
    iget-object p1, p0, Lo/setPhoneNumber;->onMessageChannelReady:Lo/setDeviceTrackingDisabled;

    invoke-interface {p1, v11, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    .line 79
    invoke-static {}, Lo/setHostName;->onPostMessage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 84
    throw p1
.end method
