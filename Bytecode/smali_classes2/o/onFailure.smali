.class public final Lo/onFailure;
.super Lo/Color;

# interfaces
.implements Lo/Actionable;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener"

    invoke-direct {p0, p1, v0}, Lo/Color;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/DataItemBackgroundJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/Color;->getInterfaceDescriptor()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lo/Color;->onPostMessage(ILandroid/os/Parcel;)V

    return-void
.end method
