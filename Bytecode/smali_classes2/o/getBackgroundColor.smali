.class public final Lo/getBackgroundColor;
.super Lo/setMaintainAspectRatio;
.source ""

# interfaces
.implements Lo/CardFinalPaymentData$$Parcelable;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/setMaintainAspectRatio;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lo/setMaintainAspectRatio;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-static {v0, p2}, Lo/access$402;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1, v0}, Lo/setMaintainAspectRatio;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lo/setMaintainAspectRatio;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6
    invoke-static {v0, p3}, Lo/access$402;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lo/setMaintainAspectRatio;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/IBinder;Lo/getTotal_count;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lo/setMaintainAspectRatio;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 17
    invoke-static {v0, p3}, Lo/access$402;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1, v0}, Lo/setMaintainAspectRatio;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method
