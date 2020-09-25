.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;
.super Lo/getRewardType;

# interfaces
.implements Lo/zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field private final onNavigationEvent:Lo/getClientAuthToken;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lo/getClientAuthToken;)V
    .locals 0

    invoke-direct {p0}, Lo/getRewardType;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->onNavigationEvent:Lo/getClientAuthToken;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->onNavigationEvent:Lo/getClientAuthToken;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthToken;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->onNavigationEvent:Lo/getClientAuthToken;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lo/getClientAuthToken;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void
.end method

.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->onNavigationEvent:Lo/getClientAuthToken;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthToken;->extraCallback(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->onNavigationEvent:Lo/getClientAuthToken;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthToken;->onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->onNavigationEvent:Lo/getClientAuthToken;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthToken;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final u_()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->onNavigationEvent:Lo/getClientAuthToken;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onMessageChannelReady;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getClientAuthToken;->ICustomTabsCallback(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
