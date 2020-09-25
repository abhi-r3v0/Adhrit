.class final Lo/MediationRewardedVideoAdAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final onMessageChannelReady:[B

.field private final onPostMessage:Lcom/google/android/gms/internal/vision/zzhl;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lo/MediationRewardedVideoAdAdapter;->onMessageChannelReady:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzhl;->onNavigationEvent([B)Lcom/google/android/gms/internal/vision/zzhl;

    move-result-object p1

    iput-object p1, p0, Lo/MediationRewardedVideoAdAdapter;->onPostMessage:Lcom/google/android/gms/internal/vision/zzhl;

    return-void
.end method

.method synthetic constructor <init>(ILo/AdOverlayInfoParcel;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lo/MediationRewardedVideoAdAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lcom/google/android/gms/internal/vision/zzhl;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/MediationRewardedVideoAdAdapter;->onPostMessage:Lcom/google/android/gms/internal/vision/zzhl;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/getMobileAdsSettingsManager;
    .locals 2

    .line 5
    iget-object v0, p0, Lo/MediationRewardedVideoAdAdapter;->onPostMessage:Lcom/google/android/gms/internal/vision/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhl;->ICustomTabsCallback()V

    .line 6
    new-instance v0, Lo/AccountTransferException;

    iget-object v1, p0, Lo/MediationRewardedVideoAdAdapter;->onMessageChannelReady:[B

    invoke-direct {v0, v1}, Lo/AccountTransferException;-><init>([B)V

    return-object v0
.end method
