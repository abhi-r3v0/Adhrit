.class public final Lo/getMethod;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lo/Database;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdOverlayCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/Database;

    if-eqz v1, :cond_1

    check-cast v0, Lo/Database;

    return-object v0

    :cond_1
    new-instance v0, Lo/getOnRequestAdded;

    invoke-direct {v0, p1}, Lo/getOnRequestAdded;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/app/Activity;)Lo/Database_Impl;
    .locals 4

    const-string v0, "Could not create remote AdOverlay."

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    invoke-virtual {p0, p1}, Lo/getMethod;->onNavigationEvent(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Database;

    invoke-interface {p1, v2}, Lo/Database;->onMessageChannelReady(Lo/getEventName;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lo/Database_Impl;

    if-eqz v3, :cond_1

    check-cast v2, Lo/Database_Impl;

    return-object v2

    :cond_1
    new-instance v2, Lo/setAutoZoomEnabled;

    invoke-direct {v2, p1}, Lo/setAutoZoomEnabled;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
