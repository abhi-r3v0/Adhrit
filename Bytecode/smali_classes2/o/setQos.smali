.class public final Lo/setQos;
.super Ljava/lang/Object;

# interfaces
.implements Lo/GemIntroDetails;


# instance fields
.field private final synthetic ICustomTabsCallback:Lcom/google/android/gms/internal/ads/zzzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzv;)V
    .locals 0

    iput-object p1, p0, Lo/setQos;->ICustomTabsCallback:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRelationshipValidationResult()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setQos;->ICustomTabsCallback:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzv;->ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzzv;)Lo/getClientAuthToken;

    move-result-object v0

    iget-object v1, p0, Lo/setQos;->ICustomTabsCallback:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0, v1}, Lo/getClientAuthToken;->onMessageChannelReady(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onTransact()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final v_()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final z_()V
    .locals 2

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setQos;->ICustomTabsCallback:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzv;->ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzzv;)Lo/getClientAuthToken;

    move-result-object v0

    iget-object v1, p0, Lo/setQos;->ICustomTabsCallback:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0, v1}, Lo/getClientAuthToken;->extraCallback(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
