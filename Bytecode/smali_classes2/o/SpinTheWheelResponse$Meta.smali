.class public abstract Lo/SpinTheWheelResponse$Meta;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/SpinTheWheelResponseJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/os/IBinder;)Lo/SpinTheWheelResponseJsonAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/SpinTheWheelResponseJsonAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lo/SpinTheWheelResponseJsonAdapter;

    return-object v0

    :cond_1
    new-instance v0, Lo/SpinTheWheelResponse;

    invoke-direct {v0, p0}, Lo/SpinTheWheelResponse;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lo/SpinTheWheelResponse$Meta;->ICustomTabsCallback()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
