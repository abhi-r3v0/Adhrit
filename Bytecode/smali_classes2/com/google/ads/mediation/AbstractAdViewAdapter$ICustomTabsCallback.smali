.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$ICustomTabsCallback;
.super Lo/setClientAuthTokenExpiry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/StatementResponse$StatementDetails$AccountSummary;


# direct methods
.method public constructor <init>(Lo/StatementResponse$StatementDetails$AccountSummary;)V
    .locals 2

    invoke-direct {p0}, Lo/setClientAuthTokenExpiry;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$ICustomTabsCallback;->onMessageChannelReady:Lo/StatementResponse$StatementDetails$AccountSummary;

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->onMessageChannelReady()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setClientAuthTokenExpiry;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setClientAuthTokenExpiry;->onPostMessage(Ljava/util/List;)V

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setClientAuthTokenExpiry;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->onPostMessage()Lo/getFinanceCharges$onPostMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setClientAuthTokenExpiry;->extraCallback(Lo/getFinanceCharges$onPostMessage;)V

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->asBinder()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setClientAuthTokenExpiry;->onPostMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->ICustomTabsCallback$Stub()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->ICustomTabsCallback$Stub()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/setClientAuthTokenExpiry;->onPostMessage(D)V

    :cond_0
    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->onTransact()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->onTransact()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setClientAuthTokenExpiry;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->onRelationshipValidationResult()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->onRelationshipValidationResult()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setClientAuthTokenExpiry;->extraCallback(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lo/setClientAuthToken;->onPostMessage()V

    invoke-virtual {p0}, Lo/setClientAuthToken;->onMessageChannelReady()V

    invoke-virtual {p1}, Lo/StatementResponse$StatementDetails$AccountSummary;->asInterface()Lo/getRewardsClosingBalance;

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

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$ICustomTabsCallback;->onMessageChannelReady:Lo/StatementResponse$StatementDetails$AccountSummary;

    invoke-virtual {v0, v1}, Lo/getLastPaymentReceived;->setNativeAd(Lo/getFinanceCharges;)V

    :cond_0
    sget-object v0, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/extraCallback$onNavigationEvent;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$ICustomTabsCallback;->onMessageChannelReady:Lo/StatementResponse$StatementDetails$AccountSummary;

    .line 1000
    invoke-virtual {p1}, Lo/getFinanceCharges;->onNavigationEvent()Ljava/lang/Object;

    const-string p1, "NativeAdViewHolder.setNativeAd containerView doesn\'t exist, returning"

    .line 2000
    invoke-static {p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
