.class public final Lo/MaintenanceManager$attach$2;
.super Lo/setCropShape;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Z

.field private onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private onPostMessage:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 1

    invoke-direct {p0}, Lo/setCropShape;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/MaintenanceManager$attach$2;->ICustomTabsCallback:Z

    iput-boolean v0, p0, Lo/MaintenanceManager$attach$2;->extraCallback:Z

    iput-object p2, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iput-object p1, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    return-void
.end method

.method private final declared-synchronized extraCallback()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/MaintenanceManager$attach$2;->extraCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    invoke-interface {v0}, Lo/GemIntroDetails;->z_()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/MaintenanceManager$attach$2;->extraCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final ICustomTabsCallback(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lo/MaintenanceManager$attach$2;->ICustomTabsCallback:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lo/MaintenanceManager$attach$2;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/MaintenanceManager$attach$2;->ICustomTabsCallback:Z

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    invoke-interface {v0}, Lo/GemIntroDetails;->onTransact()V

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/MaintenanceManager$attach$2;->extraCallback()V

    :cond_0
    return-void
.end method

.method public final ICustomTabsService()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final asInterface()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final newSession()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/MaintenanceManager$attach$2;->extraCallback()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v1, :cond_1

    :goto_0
    iget-object p1, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    iget-object p1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onNavigationEvent:Lo/zzd;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onNavigationEvent:Lo/zzd;

    invoke-interface {p1}, Lo/zzd;->u_()V

    :cond_3
    iget-object p1, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    invoke-interface {p1}, Lo/GemIntroDetails;->onRelationshipValidationResult()V

    :cond_4
    invoke-static {}, Lo/getParcel;->onPostMessage()Lo/LifeCycleObserverToState;

    iget-object p1, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback:Lo/StatementResponse_WaiverJsonAdapter;

    iget-object v1, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->asInterface:Lo/CountJsonAdapter;

    invoke-static {p1, v0, v1}, Lo/LifeCycleObserverToState;->extraCallback(Landroid/content/Context;Lo/StatementResponse_WaiverJsonAdapter;Lo/CountJsonAdapter;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(Lo/getEventName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onNavigationEvent:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    invoke-interface {v0}, Lo/GemIntroDetails;->v_()V

    :cond_0
    iget-object v0, p0, Lo/MaintenanceManager$attach$2;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/MaintenanceManager$attach$2;->extraCallback()V

    :cond_1
    return-void
.end method

.method public final onTransact()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
