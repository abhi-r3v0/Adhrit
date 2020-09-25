.class final Lo/sendAdRevenue$onMessageChannelReady$1;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendAdRevenue$onMessageChannelReady;-><init>(Lo/sendAdRevenue;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/performOnAppAttribution;Lo/setPreinstallAttribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/sendAdRevenue$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/sendAdRevenue$onMessageChannelReady;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/sendAdRevenue$onMessageChannelReady$1;->onPostMessage:Lo/sendAdRevenue$onMessageChannelReady;

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 106
    iget-object v0, p0, Lo/sendAdRevenue$onMessageChannelReady$1;->onPostMessage:Lo/sendAdRevenue$onMessageChannelReady;

    .line 1272
    invoke-virtual {v0}, Lo/sendAdRevenue$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2020
    iget-object v0, v0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1273
    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method
