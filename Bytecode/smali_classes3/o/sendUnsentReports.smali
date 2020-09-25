.class public final Lo/sendUnsentReports;
.super Lo/releaseGlows$onMessageChannelReady;

# interfaces
.implements Lo/FirebaseCrashlytics$1;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    invoke-direct {p0, p1, v0}, Lo/releaseGlows$onMessageChannelReady;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/releaseGlows$onMessageChannelReady;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 4000
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lo/releaseGlows$onMessageChannelReady;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/releaseGlows$onMessageChannelReady;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1000
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2000
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lo/releaseGlows$onMessageChannelReady;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/releaseGlows$onMessageChannelReady;->extraCallback()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 3000
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lo/releaseGlows$onMessageChannelReady;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method
