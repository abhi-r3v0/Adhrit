.class public final Lo/sendAdRevenue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendAdRevenue$extraCallback;,
        Lo/sendAdRevenue$onPostMessage;,
        Lo/sendAdRevenue$onMessageChannelReady;
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
.field final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field final onMessageChannelReady:Lo/setPosition;

.field private final onPostMessage:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setDeviceTrackingDisabled;Lo/setPosition;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPosition;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 45
    check-cast p1, Lo/setDeviceTrackingDisabled;

    iput-object p1, p0, Lo/sendAdRevenue;->onPostMessage:Lo/setDeviceTrackingDisabled;

    .line 46
    iput-object p2, p0, Lo/sendAdRevenue;->onMessageChannelReady:Lo/setPosition;

    if-eqz p3, :cond_0

    .line 47
    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lo/sendAdRevenue;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void

    .line 2215
    :cond_0
    throw v0

    .line 1215
    :cond_1
    throw v0
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 8
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

    .line 53
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v3

    .line 54
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 2228
    iget-object v6, v0, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    .line 55
    new-instance v7, Lo/sendAdRevenue$onMessageChannelReady;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/sendAdRevenue$onMessageChannelReady;-><init>(Lo/sendAdRevenue;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/performOnAppAttribution;Lo/setPreinstallAttribution;)V

    .line 58
    instance-of p1, v6, Lo/setSharingFilter;

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Lo/sendAdRevenue$extraCallback;

    check-cast v6, Lo/setSharingFilter;

    invoke-direct {p1, p0, v7, v6, p2}, Lo/sendAdRevenue$extraCallback;-><init>(Lo/sendAdRevenue;Lo/sendAdRevenue$onMessageChannelReady;Lo/setSharingFilter;Lo/setPreinstallAttribution;)V

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lo/sendAdRevenue$onPostMessage;

    invoke-direct {p1, p0, v7}, Lo/sendAdRevenue$onPostMessage;-><init>(Lo/sendAdRevenue;Lo/sendAdRevenue$onMessageChannelReady;)V

    .line 65
    :goto_0
    iget-object v0, p0, Lo/sendAdRevenue;->onPostMessage:Lo/setDeviceTrackingDisabled;

    invoke-interface {v0, p1, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
