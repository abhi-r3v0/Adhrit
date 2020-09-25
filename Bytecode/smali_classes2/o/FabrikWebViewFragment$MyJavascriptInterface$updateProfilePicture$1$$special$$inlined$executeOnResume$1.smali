.class public abstract Lo/FabrikWebViewFragment$MyJavascriptInterface$updateProfilePicture$1$$special$$inlined$executeOnResume$1;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static onPostMessage(Landroid/os/IBinder;)Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    if-eqz v1, :cond_1

    check-cast v0, Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    return-object v0

    :cond_1
    new-instance v0, Lo/FabrikWebViewFragment$dismissErrorLayout$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/FabrikWebViewFragment$dismissErrorLayout$$inlined$executeOnResume$1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p1, p4, :cond_2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/openGameRewards;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lo/openGameRewards;

    goto :goto_0

    :cond_1
    new-instance v0, Lo/FabrikWebViewFragment$MyJavascriptInterface$hideLoader$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$hideLoader$1$$special$$inlined$executeOnResume$1;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$updateProfilePicture$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/openGameRewards;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
