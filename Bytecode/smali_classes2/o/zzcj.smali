.class public final Lo/zzcj;
.super Lo/getAuthTimeOutInterval;

# interfaces
.implements Lo/zzcl;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-direct {p0, p1, v0}, Lo/getAuthTimeOutInterval;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/getAuthTimeOutInterval;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/getRawJsonOfUnsupportedType;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lo/getAuthTimeOutInterval;->ICustomTabsCallback(ILandroid/os/Parcel;)V

    return-void
.end method
