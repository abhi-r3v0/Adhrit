.class public final Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;
.super Lo/RiverForeGroundWorker;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/setPaymentLinkWeb;


# direct methods
.method public constructor <init>(Lo/setPaymentLinkWeb;)V
    .locals 0

    invoke-direct {p0}, Lo/RiverForeGroundWorker;-><init>()V

    iput-object p1, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    return-void
.end method


# virtual methods
.method public final E_()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->ICustomTabsService()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/getEventName;)V
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lo/setPaymentLinkWeb;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/getEventName;Lo/getEventName;Lo/getEventName;)V
    .locals 1

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3}, Lo/setPaymentLinkWeb;->ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->onTransact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->ICustomTabsCallback$Stub$Proxy()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->updateVisuals()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final asInterface()D
    .locals 2

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->asInterface()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->asInterface()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final extraCallback()Lo/enableDarkMode;
    .locals 6

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->ICustomTabsCallback$Stub()Lo/getFinanceCharges$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/getFinanceCharges$onPostMessage;->extraCallback()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lo/getFinanceCharges$onPostMessage;->onNavigationEvent()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lo/getFinanceCharges$onPostMessage;->ICustomTabsCallback()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final extraCallback(Lo/getEventName;)V
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lo/setPaymentLinkWeb;->onPostMessage(Landroid/view/View;)V

    return-void
.end method

.method public final extraCommand()Z
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->mayLaunchUrl()Z

    move-result v0

    return v0
.end method

.method public final newSession()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->getInterfaceDescriptor()Lo/getRewardsClosingBalance;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->getInterfaceDescriptor()Lo/getRewardsClosingBalance;

    move-result-object v0

    invoke-virtual {v0}, Lo/getRewardsClosingBalance;->onMessageChannelReady()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getFinanceCharges$onPostMessage;

    new-instance v3, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;

    invoke-virtual {v2}, Lo/getFinanceCharges$onPostMessage;->extraCallback()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lo/getFinanceCharges$onPostMessage;->onNavigationEvent()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Lo/getFinanceCharges$onPostMessage;->ICustomTabsCallback()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->asBinder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->warmup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final postMessage()V
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->postMessage()V

    return-void
.end method

.method public final requestPostMessageChannel()Z
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->extraCommand()Z

    move-result v0

    return v0
.end method

.method public final updateVisuals()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/CredUpiPresenter$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setPaymentLinkWeb;

    invoke-virtual {v0}, Lo/setPaymentLinkWeb;->requestPostMessageChannel()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()Lo/credProtectDeactivated;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
