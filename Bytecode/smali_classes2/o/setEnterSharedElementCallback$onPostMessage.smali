.class public final Lo/setEnterSharedElementCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getAmount;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEnterSharedElementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$Companion;",
        "",
        "()V",
        "PAYMENT_JUSPAY_SAFE_REQUEST",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 7000
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    iget-object v1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getPayments;->asBinder(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/CreateOrderRequest;)V
    .locals 2

    .line 6000
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    iget-object v1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lo/getPayments;->onMessageChannelReady(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lo/CreateOrderRequest;)V

    return-void
.end method

.method public final asInterface()V
    .locals 2

    .line 9000
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    iget-object v1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getPayments;->ICustomTabsCallback$Stub(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 2

    .line 3000
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    iget-object v1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getPayments;->extraCallback(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public final extraCallback(I)V
    .locals 2

    .line 8000
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    iget-object v1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lo/getPayments;->onNavigationEvent(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    iget-object v1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getPayments;->ICustomTabsCallback(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 5000
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    iget-object v1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getPayments;->onPostMessage(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lo/getRewardsOpeningBalance;)Lo/getRewardsOpeningBalance;

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 4000
    iget-object v0, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    iget-object v1, p0, Lo/setEnterSharedElementCallback$onPostMessage;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lo/getPayments;->onNavigationEvent(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method
