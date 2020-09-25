.class public final Lo/getCard_logo_url;
.super Lo/getLogo_url;
.source ""

# interfaces
.implements Lo/CommonBankListResponse$BanksDetail;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/getLogo_url;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/getBgColor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lo/getLogo_url;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-static {v0, p2}, Lo/setBanks;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 10
    invoke-virtual {p0, p1, v0}, Lo/getLogo_url;->onMessageChannelReady(ILandroid/os/Parcel;)V

    return-void
.end method
