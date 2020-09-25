.class final Lo/onReset$mayLaunchUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "addCardResponse",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/onReset;


# direct methods
.method constructor <init>(Lo/onReset;)V
    .locals 0

    iput-object p1, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 71
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 1502
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 1503
    iget-object v0, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1503
    check-cast v3, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    invoke-static {v0, v3}, Lo/onReset;->onPostMessage(Lo/onReset;Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;)V

    .line 1504
    iget-object v0, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onTransact(Lo/onReset;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v3}, Lo/onReset;->asBinder(Lo/onReset;)Lo/takeContentChanged;

    move-result-object v3

    const-string v4, "cred_protect_bottom_sheet"

    invoke-virtual {v3, v0, v4}, Lo/takeContentChanged;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_0
    iget-object v0, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->asBinder(Lo/onReset;)Lo/takeContentChanged;

    move-result-object v0

    .line 2017
    iget-object v0, v0, Lo/takeContentChanged;->onNavigationEvent:Lo/setActive;

    .line 1505
    iget-object v3, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    check-cast v3, Lo/toLegacyStreamType;

    new-instance v4, Lo/onReset$mayLaunchUrl$3;

    invoke-direct {v4, p0}, Lo/onReset$mayLaunchUrl$3;-><init>(Lo/onReset$mayLaunchUrl;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v3, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 1510
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v0, Lo/setTrackTintMode;->cancel:Lo/getCollapseContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 4000
    sget-object v3, Lo/setTrackTintMode;->cancel:Lo/getCollapseContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1511
    iget-object v0, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->extraCallback(Lo/onReset;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "verify_card_result_successful"

    goto :goto_0

    :cond_1
    const-string v3, "add_card_result_successful"

    .line 1512
    :goto_0
    iget-object v4, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    .line 4009
    iget-object v5, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1512
    check-cast v5, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_5

    new-instance v5, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    .line 5009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1512
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-direct {v5, p1}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    goto :goto_3

    :cond_5
    move-object v5, v2

    :goto_3
    invoke-static {v4, v5}, Lo/onReset;->extraCallback(Lo/onReset;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    .line 1511
    invoke-static {v0, v3, p1}, Lo/onReset;->onNavigationEvent(Lo/onReset;Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    move-result-object p1

    .line 5012
    sget-object v0, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1514
    sget-object p1, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance p1, Lo/moveView;

    iget-object v0, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->extraCallback(Lo/onReset;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "verify_card"

    goto :goto_4

    :cond_6
    const-string v0, "add_card"

    :goto_4
    iget-object v3, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v3}, Lo/onReset;->onTransact(Lo/onReset;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-direct {p1, v0, v2}, Lo/moveView;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    .line 1515
    sget-object p1, Lo/onStopLoading;->onNavigationEvent:Lo/onStopLoading;

    invoke-static {v1}, Lo/onStopLoading;->onNavigationEvent(Z)V

    return-void

    .line 1517
    :cond_8
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_c

    .line 1518
    iget-object v0, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->ICustomTabsCallback$Stub$Proxy(Lo/onReset;)Lo/dataToString;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1519
    :cond_9
    iget-object v0, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onNavigationEvent(Lo/onReset;)Lo/stopLoading;

    move-result-object v0

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 6014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1519
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_a
    move-object p1, v2

    :goto_5
    invoke-interface {v0, p1, v1}, Lo/stopLoading;->onNavigationEvent(Ljava/lang/String;Z)V

    .line 1520
    iget-object p1, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {p1}, Lo/onReset;->extraCallback(Lo/onReset;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "verify_card_result_unsuccessful"

    goto :goto_6

    :cond_b
    const-string v0, "add_card_result_unsuccessful"

    :goto_6
    iget-object v1, p0, Lo/onReset$mayLaunchUrl;->extraCallback:Lo/onReset;

    invoke-static {v1, v2}, Lo/onReset;->extraCallback(Lo/onReset;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/onReset;->onNavigationEvent(Lo/onReset;Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1521
    sget-object p1, Lo/onStopLoading;->onNavigationEvent:Lo/onStopLoading;

    const/4 p1, 0x0

    invoke-static {p1}, Lo/onStopLoading;->onNavigationEvent(Z)V

    :cond_c
    return-void
.end method
