.class public final Lo/component10;
.super Lo/setBgColor;
.source ""

# interfaces
.implements Lo/getPromise_date;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/setBgColor;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/component11;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lo/setBgColor;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lo/InformationJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 15
    invoke-static {v0, p2}, Lo/InformationJsonAdapter;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x67

    .line 16
    invoke-virtual {p0, p1, v0}, Lo/setBgColor;->onPostMessage(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/component11;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lo/setBgColor;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lo/InformationJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 10
    invoke-static {v0, p2}, Lo/InformationJsonAdapter;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x66

    .line 11
    invoke-virtual {p0, p1, v0}, Lo/setBgColor;->onPostMessage(ILandroid/os/Parcel;)V

    return-void
.end method
