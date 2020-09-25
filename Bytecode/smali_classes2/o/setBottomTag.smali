.class public final Lo/setBottomTag;
.super Lo/getPrimaryButtonText;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getPrimaryButtonText<",
        "Lo/setBottomBarItemClick;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;)V
    .locals 7

    const/16 v3, 0xa6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lo/getPrimaryButtonText;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/setBottomBarItemClick;

    if-eqz v1, :cond_1

    check-cast v0, Lo/setBottomBarItemClick;

    return-object v0

    :cond_1
    new-instance v0, Lo/setupBottomBarItems;

    invoke-direct {v0, p1}, Lo/setupBottomBarItems;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final extraCallback()Lo/setBottomBarItemClick;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lo/getPrimaryButtonText;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/setBottomBarItemClick;

    return-object v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.HTTP"

    return-object v0
.end method
