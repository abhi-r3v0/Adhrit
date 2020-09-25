.class public final Lo/WishlistUnlikeDatabase;
.super Lo/RiverPeriodicWorker;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onPostMessage:Lo/getPaymentLinkIframe;


# direct methods
.method public constructor <init>(Lo/getPaymentLinkIframe;)V
    .locals 0

    invoke-direct {p0}, Lo/RiverPeriodicWorker;-><init>()V

    iput-object p1, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    return-void
.end method


# virtual methods
.method public final D_()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/setClientAuthToken;->ICustomTabsCallback$Stub()Landroid/view/View;

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

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/getPaymentLinkIframe;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/getEventName;)V
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lo/setClientAuthToken;->onNavigationEvent(Landroid/view/View;)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/setClientAuthToken;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/credProtectDeactivated;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ICustomTabsService()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/setClientAuthToken;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final asInterface()Z
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/setClientAuthToken;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/getPaymentLinkIframe;->warmup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Lo/getEventName;)V
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lo/setClientAuthToken;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method

.method public final mayLaunchUrl()Lo/getEventName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final newSession()Lo/getEventName;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/setClientAuthToken;->asBinder()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/getPaymentLinkIframe;->newSession()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/getEventName;)V
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lo/setClientAuthToken;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method public final onNavigationEvent()Lo/enableDarkMode;
    .locals 6

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/getPaymentLinkIframe;->ICustomTabsService()Lo/getFinanceCharges$onPostMessage;

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

.method public final onPostMessage()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/getPaymentLinkIframe;->getInterfaceDescriptor()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPostMessage(Lo/getEventName;Lo/getEventName;Lo/getEventName;)V
    .locals 1

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3}, Lo/setClientAuthToken;->ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/setClientAuthToken;->asInterface()V

    return-void
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/getPaymentLinkIframe;->mayLaunchUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/setClientAuthToken;->onRelationshipValidationResult()Lo/getRewardsClosingBalance;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WishlistUnlikeDatabase;->onPostMessage:Lo/getPaymentLinkIframe;

    invoke-virtual {v0}, Lo/setClientAuthToken;->onRelationshipValidationResult()Lo/getRewardsClosingBalance;

    move-result-object v0

    invoke-virtual {v0}, Lo/getRewardsClosingBalance;->onMessageChannelReady()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
