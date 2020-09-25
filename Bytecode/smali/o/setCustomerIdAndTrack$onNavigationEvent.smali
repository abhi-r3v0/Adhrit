.class final Lo/setCustomerIdAndTrack$onNavigationEvent;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCustomerIdAndTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getCardBackgroundColor;",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/setPreinstallAttribution;

.field private synthetic onPostMessage:Lo/setCustomerIdAndTrack;


# direct methods
.method private constructor <init>(Lo/setCustomerIdAndTrack;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 0
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

    .line 39
    iput-object p1, p0, Lo/setCustomerIdAndTrack$onNavigationEvent;->onPostMessage:Lo/setCustomerIdAndTrack;

    .line 40
    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 41
    iput-object p3, p0, Lo/setCustomerIdAndTrack$onNavigationEvent;->onMessageChannelReady:Lo/setPreinstallAttribution;

    return-void
.end method

.method synthetic constructor <init>(Lo/setCustomerIdAndTrack;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;B)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lo/setCustomerIdAndTrack$onNavigationEvent;-><init>(Lo/setCustomerIdAndTrack;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 3

    .line 35
    check-cast p1, Lo/getCardBackgroundColor;

    .line 1046
    iget-object v0, p0, Lo/setCustomerIdAndTrack$onNavigationEvent;->onMessageChannelReady:Lo/setPreinstallAttribution;

    invoke-interface {v0}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2166
    :goto_0
    iget-object v1, v0, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 1049
    invoke-static {p1, v1}, Lo/isAttachedToWindow$onMessageChannelReady;->ICustomTabsCallback(Lo/getCardBackgroundColor;Lo/ǃ;)Z

    move-result v1

    if-eqz p1, :cond_3

    if-nez v1, :cond_1

    .line 2193
    iget-boolean v0, v0, Lo/getHostPrefix;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 3020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1052
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    and-int/lit8 p2, p2, -0x2

    .line 4020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1055
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    .line 4425
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    .line 1061
    :cond_4
    iget-object p1, p0, Lo/setCustomerIdAndTrack$onNavigationEvent;->onPostMessage:Lo/setCustomerIdAndTrack;

    .line 5019
    iget-object p1, p1, Lo/setCustomerIdAndTrack;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    .line 5020
    iget-object p2, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1061
    iget-object v0, p0, Lo/setCustomerIdAndTrack$onNavigationEvent;->onMessageChannelReady:Lo/setPreinstallAttribution;

    invoke-interface {p1, p2, v0}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    :cond_5
    return-void
.end method

.method protected final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lo/setCustomerIdAndTrack$onNavigationEvent;->onPostMessage:Lo/setCustomerIdAndTrack;

    .line 1019
    iget-object p1, p1, Lo/setCustomerIdAndTrack;->ICustomTabsCallback:Lo/setDeviceTrackingDisabled;

    .line 1020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 67
    iget-object v1, p0, Lo/setCustomerIdAndTrack$onNavigationEvent;->onMessageChannelReady:Lo/setPreinstallAttribution;

    invoke-interface {p1, v0, v1}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-void
.end method
