.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;
.super Lo/getRewardType;

# interfaces
.implements Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;
.implements Lo/getAvailableCreditLimit$onPostMessage;
.implements Lo/getCurrentPurchaseValue$onNavigationEvent;
.implements Lo/getCurrentPurchaseValue$onPostMessage;
.implements Lo/getTotalCreditLimit$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asBinder"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/getClientAuthTokenExpiry;

.field private final onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lo/getClientAuthTokenExpiry;)V
    .locals 0

    invoke-direct {p0}, Lo/getRewardType;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lo/getClientAuthTokenExpiry;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/getAvailableCreditLimit;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$extraCallback;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$extraCallback;-><init>(Lo/getAvailableCreditLimit;)V

    invoke-interface {v0, v1, v2}, Lo/getClientAuthTokenExpiry;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/setClientAuthToken;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthTokenExpiry;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final extraCallback(Lo/getCurrentPurchaseValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lo/getClientAuthTokenExpiry;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/getCurrentPurchaseValue;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/getTotalCreditLimit;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$onPostMessage;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$onPostMessage;-><init>(Lo/getTotalCreditLimit;)V

    invoke-interface {v0, v1, v2}, Lo/getClientAuthTokenExpiry;->ICustomTabsCallback(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/setPaymentLinkWeb;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthTokenExpiry;->onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/StatementResponse$StatementDetails$AccountSummary;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$ICustomTabsCallback;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/AbstractAdViewAdapter$ICustomTabsCallback;-><init>(Lo/StatementResponse$StatementDetails$AccountSummary;)V

    invoke-interface {v0, v1, v2}, Lo/getClientAuthTokenExpiry;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/setClientAuthToken;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/getCurrentPurchaseValue;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1, p2}, Lo/getClientAuthTokenExpiry;->onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lo/getCurrentPurchaseValue;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthTokenExpiry;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final onTransact()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthTokenExpiry;->ICustomTabsCallback(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final u_()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onMessageChannelReady:Lo/getClientAuthTokenExpiry;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$asBinder;->onPostMessage:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthTokenExpiry;->extraCallback(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method
