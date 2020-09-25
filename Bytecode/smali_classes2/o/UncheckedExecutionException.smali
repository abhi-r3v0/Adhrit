.class public final Lo/UncheckedExecutionException;
.super Lo/setEndAngle;
.source ""

# interfaces
.implements Lo/UncheckedTimeoutException;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/setEndAngle;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/writeObject;Lo/CacheLoader$UnsupportedLoadingOperationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lo/setEndAngle;->onNavigationEvent()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lo/setCircleStrokeWidth;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 15
    invoke-static {v0, p2}, Lo/setCircleStrokeWidth;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    .line 16
    invoke-virtual {p0, p1, v0}, Lo/setEndAngle;->ICustomTabsCallback(ILandroid/os/Parcel;)V

    return-void
.end method
