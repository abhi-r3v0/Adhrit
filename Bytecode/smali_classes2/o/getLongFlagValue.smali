.class public final Lo/getLongFlagValue;
.super Lo/HttpDataSource$InvalidContentTypeException;
.source ""

# interfaces
.implements Lo/getScopesForConnectionlessNonSignIn;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/HttpDataSource$InvalidContentTypeException;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getEventName;Lo/getStringFlagValue;)[Lo/setDatabaseUrl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lo/HttpDataSource$InvalidContentTypeException;->onMessageChannelReady()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lo/RawResourceDataSource$RawResourceDataSourceException;->onPostMessage(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {v0, p2}, Lo/RawResourceDataSource$RawResourceDataSourceException;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lo/HttpDataSource$InvalidContentTypeException;->extraCallback(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    sget-object p2, Lo/setDatabaseUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lo/setDatabaseUrl;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final onPostMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lo/HttpDataSource$InvalidContentTypeException;->onMessageChannelReady()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    .line 18
    invoke-virtual {p0, v1, v0}, Lo/HttpDataSource$InvalidContentTypeException;->ICustomTabsCallback(ILandroid/os/Parcel;)V

    return-void
.end method
