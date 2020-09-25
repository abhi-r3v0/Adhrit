.class final Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$Callback$StubApi21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private extraCallback:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady$onPostMessage;->extraCallback:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady$onPostMessage;->extraCallback:Landroid/os/IBinder;

    return-object v0
.end method

.method public final extraCallback([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lo/MediaSessionCompat$Callback$StubApi21$onMessageChannelReady$onPostMessage;->extraCallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    throw p1
.end method
