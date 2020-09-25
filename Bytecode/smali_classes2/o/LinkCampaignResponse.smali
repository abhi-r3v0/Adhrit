.class public final Lo/LinkCampaignResponse;
.super Lo/Color;

# interfaces
.implements Lo/LinkCampaignResponseJsonAdapter;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-direct {p0, p1, v0}, Lo/Color;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/setOnCtaClick;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/Color;->getInterfaceDescriptor()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onPostMessage(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lo/Color;->onPostMessage(ILandroid/os/Parcel;)V

    return-void
.end method
