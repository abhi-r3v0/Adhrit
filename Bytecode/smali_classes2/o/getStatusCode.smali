.class public final Lo/getStatusCode;
.super Lo/ConversationsResponse;
.source ""

# interfaces
.implements Lo/getConversations;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/ConversationsResponse;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-static {v0, p3}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 11
    invoke-virtual {p0, v1, v0}, Lo/ConversationsResponse;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
