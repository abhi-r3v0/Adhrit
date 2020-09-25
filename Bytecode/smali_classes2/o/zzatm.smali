.class public abstract Lo/zzatm;
.super Lo/getClz;

# interfaces
.implements Lo/zzbav$zzb;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    invoke-direct {p0, v0}, Lo/getClz;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static extraCallback(Landroid/os/IBinder;)Lo/zzbav$zzb;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.ILocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/zzbav$zzb;

    if-eqz v1, :cond_1

    check-cast v0, Lo/zzbav$zzb;

    return-object v0

    :cond_1
    new-instance v0, Lo/zzbbu;

    invoke-direct {v0, p0}, Lo/zzbbu;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/getRawJsonOfUnsupportedType;->onPostMessage(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    invoke-virtual {p0, p1}, Lo/zzatm;->onMessageChannelReady(Lcom/google/android/gms/location/LocationAvailability;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/getRawJsonOfUnsupportedType;->onPostMessage(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {p0, p1}, Lo/zzatm;->onMessageChannelReady(Lcom/google/android/gms/location/LocationResult;)V

    :goto_0
    return p3
.end method
