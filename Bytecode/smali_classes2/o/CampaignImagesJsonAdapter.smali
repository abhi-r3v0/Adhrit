.class final Lo/CampaignImagesJsonAdapter;
.super Lo/ContactReverseSyncResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;


# direct methods
.method private constructor <init>(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/CampaignImagesJsonAdapter;->onNavigationEvent:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;Lo/CampaignBenefit;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/CampaignImagesJsonAdapter;-><init>(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 5

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub()Lo/CommonStatementNoHistoryItemHolder$TransactionItem;

    move-result-object v0

    iget-object v1, p0, Lo/CampaignImagesJsonAdapter;->onNavigationEvent:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    iget-object v1, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget v1, v1, Lo/setStatus;->onMessageChannelReady:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem;->onMessageChannelReady(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v1

    iget-object v2, p0, Lo/CampaignImagesJsonAdapter;->onNavigationEvent:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    iget-object v2, v2, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    iget-object v3, p0, Lo/CampaignImagesJsonAdapter;->onNavigationEvent:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    iget-object v3, v3, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget-boolean v3, v3, Lo/setStatus;->ICustomTabsCallback:Z

    iget-object v4, p0, Lo/CampaignImagesJsonAdapter;->onNavigationEvent:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    iget-object v4, v4, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget v4, v4, Lo/setStatus;->onPostMessage:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lo/getAccount_number;->ICustomTabsCallback(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/CampaignIntroDetails;

    invoke-direct {v2, p0, v0}, Lo/CampaignIntroDetails;-><init>(Lo/CampaignImagesJsonAdapter;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
