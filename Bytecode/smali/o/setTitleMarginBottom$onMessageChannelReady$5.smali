.class final Lo/setTitleMarginBottom$onMessageChannelReady$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTitleMarginBottom$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

.field private synthetic onMessageChannelReady:Lo/setTitleMarginBottom$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/setTitleMarginBottom$onMessageChannelReady;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginBottom$onMessageChannelReady$5;->onMessageChannelReady:Lo/setTitleMarginBottom$onMessageChannelReady;

    iput-object p2, p0, Lo/setTitleMarginBottom$onMessageChannelReady$5;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1631
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v0, Lo/setTrackTintMode;->cancel:Lo/getCollapseContentDescription;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4000
    sget-object v1, Lo/setTrackTintMode;->cancel:Lo/getCollapseContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1633
    iget-object v0, p0, Lo/setTitleMarginBottom$onMessageChannelReady$5;->onMessageChannelReady:Lo/setTitleMarginBottom$onMessageChannelReady;

    iget-object v0, v0, Lo/setTitleMarginBottom$onMessageChannelReady;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/setTitleMarginBottom;->onPostMessage(Lo/setTitleMarginBottom;J)V

    .line 1634
    iget-object v0, p0, Lo/setTitleMarginBottom$onMessageChannelReady$5;->onMessageChannelReady:Lo/setTitleMarginBottom$onMessageChannelReady;

    iget-object v0, v0, Lo/setTitleMarginBottom$onMessageChannelReady;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->ICustomTabsCallback(Lo/setTitleMarginBottom;)Lo/getTitleMarginStart;

    move-result-object v0

    invoke-static {v0}, Lo/getTitleMarginStart;->onPostMessage(Lo/getTitleMarginStart;)V

    .line 1635
    iget-object v0, p0, Lo/setTitleMarginBottom$onMessageChannelReady$5;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 4009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1635
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-direct {v1, v0}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1636
    :goto_0
    iget-object v0, p0, Lo/setTitleMarginBottom$onMessageChannelReady$5;->onMessageChannelReady:Lo/setTitleMarginBottom$onMessageChannelReady;

    iget-object v0, v0, Lo/setTitleMarginBottom$onMessageChannelReady;->ICustomTabsCallback:Lo/setTitleMarginBottom;

    invoke-static {v0, v1}, Lo/setTitleMarginBottom;->onMessageChannelReady(Lo/setTitleMarginBottom;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "onboard_verify_successful"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    move-result-object v0

    .line 4012
    sget-object v1, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
