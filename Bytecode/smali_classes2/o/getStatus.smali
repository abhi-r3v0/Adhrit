.class final Lo/getStatus;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setMessage;

.field private final synthetic onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;


# direct methods
.method constructor <init>(Lo/setMessage;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lo/getStatus;->ICustomTabsCallback:Lo/setMessage;

    iput-object p2, p0, Lo/getStatus;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lo/getParcel;->onMessageChannelReady()Lo/CampaignIntroDetailsJsonAdapter;

    iget-object v0, p0, Lo/getStatus;->ICustomTabsCallback:Lo/setMessage;

    iget-object v0, v0, Lo/setMessage;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v0, v0, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/getStatus;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/CampaignIntroDetailsJsonAdapter;->extraCallback(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
