.class public final Lo/GradientType;
.super Lo/UserAuthConfig;

# interfaces
.implements Lo/MoshiGradientTypeAdapter;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.flags.IFlagProvider"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/UserAuthConfig;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBooleanFlagValue(Ljava/lang/String;ZI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lo/UserAuthConfig;->ICustomTabsCallback()Landroid/os/Parcel;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-static {v0, p2}, Lo/setStrictModeEnabled;->onMessageChannelReady(Landroid/os/Parcel;Z)V

    .line 10
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, p1, v0}, Lo/UserAuthConfig;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lo/setStrictModeEnabled;->ICustomTabsCallback(Landroid/os/Parcel;)Z

    move-result p2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final getIntFlagValue(Ljava/lang/String;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lo/UserAuthConfig;->ICustomTabsCallback()Landroid/os/Parcel;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    .line 19
    invoke-virtual {p0, p1, v0}, Lo/UserAuthConfig;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final getLongFlagValue(Ljava/lang/String;JI)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lo/UserAuthConfig;->ICustomTabsCallback()Landroid/os/Parcel;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 26
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    .line 27
    invoke-virtual {p0, p1, v0}, Lo/UserAuthConfig;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-wide p2
.end method

.method public final getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lo/UserAuthConfig;->ICustomTabsCallback()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    .line 35
    invoke-virtual {p0, p1, v0}, Lo/UserAuthConfig;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final init(Lo/getEventName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lo/UserAuthConfig;->ICustomTabsCallback()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lo/setStrictModeEnabled;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lo/UserAuthConfig;->onMessageChannelReady(ILandroid/os/Parcel;)V

    return-void
.end method
