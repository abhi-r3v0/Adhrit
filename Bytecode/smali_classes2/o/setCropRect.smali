.class public abstract Lo/setCropRect;
.super Lo/ContactReverseSyncResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field protected final ICustomTabsCallback:Ljava/lang/Object;

.field protected final extraCallback:Landroid/content/Context;

.field protected final onMessageChannelReady:Lo/setOnCropWindowChangedListener;

.field protected final onNavigationEvent:Ljava/lang/Object;

.field protected final onPostMessage:Lo/GreetingCampaignCodeRequest;

.field protected onTransact:Lo/setOnCtaClick;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/setOnCropWindowChangedListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ContactReverseSyncResponse;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setCropRect;->ICustomTabsCallback:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setCropRect;->onNavigationEvent:Ljava/lang/Object;

    iput-object p1, p0, Lo/setCropRect;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/setCropRect;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget-object p1, p2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iput-object p1, p0, Lo/setCropRect;->onTransact:Lo/setOnCtaClick;

    iput-object p3, p0, Lo/setCropRect;->onMessageChannelReady:Lo/setOnCropWindowChangedListener;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method protected abstract onMessageChannelReady(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzabk;
        }
    .end annotation
.end method

.method protected abstract onNavigationEvent(I)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
.end method

.method public final onPostMessage()V
    .locals 5

    iget-object v0, p0, Lo/setCropRect;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AdRendererBackgroundTask started."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setCropRect;->onPostMessage:Lo/GreetingCampaignCodeRequest;

    iget v1, v1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lo/setCropRect;->onMessageChannelReady(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzabk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabk;->onNavigationEvent()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabk;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabk;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lo/setCropRect;->onTransact:Lo/setOnCtaClick;

    if-nez v1, :cond_2

    new-instance v1, Lo/setOnCtaClick;

    invoke-direct {v1, v2}, Lo/setOnCtaClick;-><init>(I)V

    :goto_2
    iput-object v1, p0, Lo/setCropRect;->onTransact:Lo/setOnCtaClick;

    goto :goto_3

    :cond_2
    new-instance v1, Lo/setOnCtaClick;

    iget-object v3, p0, Lo/setCropRect;->onTransact:Lo/setOnCtaClick;

    iget-wide v3, v3, Lo/setOnCtaClick;->asBinder:J

    invoke-direct {v1, v2, v3, v4}, Lo/setOnCtaClick;-><init>(IJ)V

    goto :goto_2

    :goto_3
    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v3, Lo/setOnSetImageUriCompleteListener;

    invoke-direct {v3, p0}, Lo/setOnSetImageUriCompleteListener;-><init>(Lo/setCropRect;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Lo/setCropRect;->onNavigationEvent(I)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v1

    sget-object v2, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v3, Lo/setOnSetCropOverlayMovedListener;

    invoke-direct {v3, p0, v1}, Lo/setOnSetCropOverlayMovedListener;-><init>(Lo/setCropRect;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
