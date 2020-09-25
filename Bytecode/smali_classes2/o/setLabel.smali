.class public final Lo/setLabel;
.super Lo/getAuthTimeOutInterval;

# interfaces
.implements Lo/ButtonFragment;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-direct {p0, p1, v0}, Lo/getAuthTimeOutInterval;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getFragmentType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/getAuthTimeOutInterval;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getRawJsonOfUnsupportedType;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x3b

    invoke-virtual {p0, p1, v0}, Lo/getAuthTimeOutInterval;->onMessageChannelReady(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/getAuthTimeOutInterval;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getRawJsonOfUnsupportedType;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lo/getAuthTimeOutInterval;->onMessageChannelReady(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/getAuthTimeOutInterval;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0}, Lo/getAuthTimeOutInterval;->onNavigationEvent(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lo/getRawJsonOfUnsupportedType;->onPostMessage(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final onNavigationEvent(Lo/getChannelsCustomResponseTimeMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/getAuthTimeOutInterval;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getRawJsonOfUnsupportedType;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x4b

    invoke-virtual {p0, p1, v0}, Lo/getAuthTimeOutInterval;->onMessageChannelReady(ILandroid/os/Parcel;)V

    return-void
.end method
