.class public final Lo/Health_ServiceStatusJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private final synthetic onPostMessage:Lcom/google/android/gms/internal/ads/zzzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lo/Health_ServiceStatusJsonAdapter;->onPostMessage:Lcom/google/android/gms/internal/ads/zzzv;

    iput-object p2, p0, Lo/Health_ServiceStatusJsonAdapter;->ICustomTabsCallback:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lo/getParcel;->onMessageChannelReady()Lo/CampaignIntroDetailsJsonAdapter;

    iget-object v0, p0, Lo/Health_ServiceStatusJsonAdapter;->onPostMessage:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzv;->onPostMessage(Lcom/google/android/gms/internal/ads/zzzv;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lo/Health_ServiceStatusJsonAdapter;->ICustomTabsCallback:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/CampaignIntroDetailsJsonAdapter;->extraCallback(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
