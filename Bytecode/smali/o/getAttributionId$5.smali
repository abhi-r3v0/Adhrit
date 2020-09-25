.class final Lo/getAttributionId$5;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAttributionId;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/validateAndTrackInAppPurchase;

.field private synthetic onMessageChannelReady:Lo/getAttributionId;


# direct methods
.method constructor <init>(Lo/getAttributionId;Lo/validateAndTrackInAppPurchase;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/getAttributionId$5;->onMessageChannelReady:Lo/getAttributionId;

    iput-object p2, p0, Lo/getAttributionId$5;->ICustomTabsCallback:Lo/validateAndTrackInAppPurchase;

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/getAttributionId$5;->ICustomTabsCallback:Lo/validateAndTrackInAppPurchase;

    invoke-virtual {v0}, Lo/setTrimPathEnd;->ICustomTabsCallback()V

    .line 58
    iget-object v0, p0, Lo/getAttributionId$5;->onMessageChannelReady:Lo/getAttributionId;

    .line 1016
    iget-object v0, v0, Lo/getAttributionId;->extraCallback:Lo/isTrackingStopped;

    .line 58
    iget-object v1, p0, Lo/getAttributionId$5;->ICustomTabsCallback:Lo/validateAndTrackInAppPurchase;

    invoke-interface {v0, v1}, Lo/isTrackingStopped;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method
