.class public final Lo/FreshchatImageLoader;
.super Lo/setPointerColor;

# interfaces
.implements Lo/isTeamMemberInfoVisible;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-direct {p0, p1, v0}, Lo/setPointerColor;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/isResponseExpectationEnabled;Lo/setCurrency;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setPointerColor;->ICustomTabsCallback()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lo/FileUtils$RenameException;->onPostMessage(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lo/FileUtils$RenameException;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lo/setPointerColor;->onPostMessage(ILandroid/os/Parcel;)V

    return-void
.end method