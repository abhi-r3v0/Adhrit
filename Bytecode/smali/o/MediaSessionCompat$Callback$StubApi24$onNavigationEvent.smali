.class public abstract Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$Callback$StubApi24;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$Callback$StubApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent$ICustomTabsCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    .line 19
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "androidx.room.IMultiInstanceInvalidationService"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 75
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p1, p2}, Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;->onMessageChannelReady(I[Ljava/lang/String;)V

    return v0

    .line 64
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady;->onPostMessage(Landroid/os/IBinder;)Lo/MediaSessionCompat$Callback$StubApi21;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;->onNavigationEvent(Lo/MediaSessionCompat$Callback$StubApi21;I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 52
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady;->onPostMessage(Landroid/os/IBinder;)Lo/MediaSessionCompat$Callback$StubApi21;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, p2}, Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;->onMessageChannelReady(Lo/MediaSessionCompat$Callback$StubApi21;Ljava/lang/String;)I

    move-result p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
