.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$extraCallback;
.super Lo/getPaymentLinkIframe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final extraCallback:Lo/getAvailableCreditLimit;


# direct methods
.method public constructor <init>(Lo/getAvailableCreditLimit;)V
    .locals 1

    invoke-direct {p0}, Lo/getPaymentLinkIframe;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$extraCallback;->extraCallback:Lo/getAvailableCreditLimit;

    invoke-virtual {p1}, Lo/getAvailableCreditLimit;->onMessageChannelReady()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/getPaymentLinkIframe;->extraCallback(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getAvailableCreditLimit;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/getPaymentLinkIframe;->onMessageChannelReady(Ljava/util/List;)V

    invoke-virtual {p1}, Lo/getAvailableCreditLimit;->onPostMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/getPaymentLinkIframe;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getAvailableCreditLimit;->ICustomTabsCallback()Lo/getFinanceCharges$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/getAvailableCreditLimit;->ICustomTabsCallback()Lo/getFinanceCharges$onPostMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/getPaymentLinkIframe;->onNavigationEvent(Lo/getFinanceCharges$onPostMessage;)V

    :cond_0
    invoke-virtual {p1}, Lo/getAvailableCreditLimit;->onTransact()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/getPaymentLinkIframe;->onPostMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/getAvailableCreditLimit;->asBinder()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/getPaymentLinkIframe;->onNavigationEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/setClientAuthToken;->onPostMessage()V

    invoke-virtual {p0}, Lo/setClientAuthToken;->onMessageChannelReady()V

    invoke-virtual {p1}, Lo/getAvailableCreditLimit;->ICustomTabsCallback$Stub()Lo/getRewardsClosingBalance;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setClientAuthToken;->extraCallback(Lo/getRewardsClosingBalance;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lo/getLastPaymentReceived;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/getLastPaymentReceived;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$extraCallback;->extraCallback:Lo/getAvailableCreditLimit;

    invoke-virtual {v0, v1}, Lo/getLastPaymentReceived;->setNativeAd(Lo/getFinanceCharges;)V

    :cond_0
    sget-object v0, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/extraCallback$onNavigationEvent;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$extraCallback;->extraCallback:Lo/getAvailableCreditLimit;

    .line 1000
    invoke-virtual {p1}, Lo/getFinanceCharges;->onNavigationEvent()Ljava/lang/Object;

    const-string p1, "NativeAdViewHolder.setNativeAd containerView doesn\'t exist, returning"

    .line 2000
    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
