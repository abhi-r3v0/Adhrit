.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;
.super Lo/getRewardType;

# interfaces
.implements Lo/getCardLimits;
.implements Lo/zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final extraCallback:Lo/StatementSourceJsonAdapter;

.field private final onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lo/StatementSourceJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/getRewardType;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->extraCallback:Lo/StatementSourceJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->extraCallback:Lo/StatementSourceJsonAdapter;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/StatementSourceJsonAdapter;->ICustomTabsCallback(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->extraCallback:Lo/StatementSourceJsonAdapter;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lo/StatementSourceJsonAdapter;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    return-void
.end method

.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->extraCallback:Lo/StatementSourceJsonAdapter;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/StatementSourceJsonAdapter;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->extraCallback:Lo/StatementSourceJsonAdapter;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/StatementSourceJsonAdapter;->onNavigationEvent(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->extraCallback:Lo/StatementSourceJsonAdapter;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/StatementSourceJsonAdapter;->onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->extraCallback:Lo/StatementSourceJsonAdapter;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1, p2}, Lo/StatementSourceJsonAdapter;->onPostMessage(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u_()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->extraCallback:Lo/StatementSourceJsonAdapter;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$onNavigationEvent;->onMessageChannelReady:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/StatementSourceJsonAdapter;->extraCallback(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method
