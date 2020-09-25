.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$onPostMessage;
.super Lo/setPaymentLinkWeb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final extraCallback:Lo/getTotalCreditLimit;


# direct methods
.method public constructor <init>(Lo/getTotalCreditLimit;)V
    .locals 1

    invoke-direct {p0}, Lo/setPaymentLinkWeb;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onPostMessage;->extraCallback:Lo/getTotalCreditLimit;

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->onPostMessage()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->onMessageChannelReady(Ljava/util/List;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->onNavigationEvent(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->extraCallback()Lo/getFinanceCharges$onPostMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->onNavigationEvent(Lo/getFinanceCharges$onPostMessage;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->extraCallback(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->asInterface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->asBinder()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->onMessageChannelReady(Ljava/lang/Double;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->onTransact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->onPostMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->asInterface(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->ICustomTabsService()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setPaymentLinkWeb;->onNavigationEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lo/setPaymentLinkWeb;->extraCallback()V

    invoke-virtual {p0}, Lo/setPaymentLinkWeb;->onPostMessage()V

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->ICustomTabsCallback$Stub()Lo/getRewardsClosingBalance;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setPaymentLinkWeb;->onNavigationEvent(Lo/getRewardsClosingBalance;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    instance-of p2, p1, Lo/getAvailableCashLimit;

    if-eqz p2, :cond_0

    check-cast p1, Lo/getAvailableCashLimit;

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onPostMessage;->extraCallback:Lo/getTotalCreditLimit;

    invoke-virtual {p1, p2}, Lo/getAvailableCashLimit;->setNativeAd(Lo/getTotalCreditLimit;)V

    return-void

    :cond_0
    sget-object p2, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/extraCallback$onNavigationEvent;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onPostMessage;->extraCallback:Lo/getTotalCreditLimit;

    .line 1000
    invoke-virtual {p1}, Lo/getTotalCreditLimit;->warmup()Ljava/lang/Object;

    const-string p1, "NativeAdViewHolder.setNativeAd containerView doesn\'t exist, returning"

    .line 2000
    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
