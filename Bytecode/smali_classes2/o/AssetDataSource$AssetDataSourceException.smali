.class public final Lo/AssetDataSource$AssetDataSourceException;
.super Lo/setApplyEmbeddedFontSizes;

# interfaces
.implements Lo/setVideoComponent;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    invoke-direct {p0, p1, v0}, Lo/setApplyEmbeddedFontSizes;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/setAllowMultipleOverrides;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setApplyEmbeddedFontSizes;->onNavigationEvent()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/setFractionalTextSize;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lo/setApplyEmbeddedFontSizes;->onMessageChannelReady(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setApplyEmbeddedFontSizes;->onNavigationEvent()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lo/setApplyEmbeddedFontSizes;->onMessageChannelReady(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onPostMessage(Lo/setAllowMultipleOverrides;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setApplyEmbeddedFontSizes;->onNavigationEvent()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/setFractionalTextSize;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lo/setApplyEmbeddedFontSizes;->onMessageChannelReady(ILandroid/os/Parcel;)V

    return-void
.end method
