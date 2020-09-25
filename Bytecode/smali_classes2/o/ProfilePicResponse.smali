.class public abstract Lo/ProfilePicResponse;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/getSignInMethods;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/os/IBinder;)Lo/getSignInMethods;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/getSignInMethods;

    if-eqz v1, :cond_1

    check-cast v0, Lo/getSignInMethods;

    return-object v0

    :cond_1
    new-instance v0, Lo/MainActivity$onCreate$9$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/MainActivity$onCreate$9$$special$$inlined$executeOnResume$1;-><init>(Landroid/os/IBinder;)V

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

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/SlotMachinePlayResponseJsonAdapter;->onNavigationEvent(Landroid/os/IBinder;)Lo/SpinDetail;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/ProfilePicResponse;->onPostMessage(Lo/SpinDetail;Lo/getEventName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
