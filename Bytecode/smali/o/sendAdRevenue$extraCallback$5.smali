.class final Lo/sendAdRevenue$extraCallback$5;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendAdRevenue$extraCallback;-><init>(Lo/sendAdRevenue;Lo/sendAdRevenue$onMessageChannelReady;Lo/setPreinstallAttribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/sendAdRevenue$extraCallback;


# direct methods
.method constructor <init>(Lo/sendAdRevenue$extraCallback;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lo/sendAdRevenue$extraCallback$5;->ICustomTabsCallback:Lo/sendAdRevenue$extraCallback;

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 347
    iget-object v0, p0, Lo/sendAdRevenue$extraCallback$5;->ICustomTabsCallback:Lo/sendAdRevenue$extraCallback;

    .line 1325
    invoke-virtual {v0}, Lo/sendAdRevenue$extraCallback;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lo/sendAdRevenue$extraCallback$5;->ICustomTabsCallback:Lo/sendAdRevenue$extraCallback;

    .line 2020
    iget-object v0, v0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 348
    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method
