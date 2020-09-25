.class public final Lo/getObject;
.super Lo/setPayments;


# instance fields
.field private final synthetic extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/getObject;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-direct {p0}, Lo/setPayments;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/getObject;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getRewardsOpeningBalance;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getObject;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getObject;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getRewardsOpeningBalance;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    invoke-virtual {v0}, Lo/WinDetailsItem;->extraCallback()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lo/getObject;->extraCallback:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v1}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lo/getPayments;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/getPayments;->onPostMessage(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
