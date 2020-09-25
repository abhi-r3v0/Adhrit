.class public final Lo/AppBarLayout$BaseBehavior;
.super Lo/ConversationsResponse;
.source ""

# interfaces
.implements Lo/setStatusBarForeground;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/ConversationsResponse;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setCounterTextAppearance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x12

    .line 99
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setStartIconVisible;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 60
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xd

    .line 61
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;ZLo/setCounterTextAppearance;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lo/setCounterTextAppearance;",
            ")",
            "Ljava/util/List<",
            "Lo/setError;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    invoke-static {v0, p3}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    .line 67
    invoke-static {v0, p4}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xe

    .line 68
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 69
    sget-object p2, Lo/setError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final extraCallback(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 46
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final extraCallback(Lo/setCounterTextAppearance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    .line 15
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final extraCallback(Lo/zzir;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 18
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 21
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setCounterTextAppearance;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 49
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    .line 50
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 55
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 56
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xc

    .line 57
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/zzir;Lo/setCounterTextAppearance;)V
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
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/setStartIconVisible;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x11

    .line 93
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 94
    sget-object p2, Lo/setStartIconVisible;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;Lo/setCounterTextAppearance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 103
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x13

    .line 104
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/setCounterTextAppearance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 107
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    .line 108
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 10
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/zzir;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 35
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 36
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 37
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lo/setError;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    invoke-static {v0, p4}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    const/16 p1, 0xf

    .line 77
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 78
    sget-object p2, Lo/setError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/setCounterTextAppearance;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/setCounterTextAppearance;",
            ")",
            "Ljava/util/List<",
            "Lo/setStartIconVisible;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    invoke-static {v0, p3}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x10

    .line 85
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 86
    sget-object p2, Lo/setStartIconVisible;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final onPostMessage(Lo/setCounterTextAppearance;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCounterTextAppearance;",
            "Z)",
            "Ljava/util/List<",
            "Lo/setError;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 29
    invoke-static {v0, p2}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    const/4 p1, 0x7

    .line 30
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->onPostMessage(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 31
    sget-object p2, Lo/setError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final onPostMessage(Lo/setCounterTextAppearance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 24
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    .line 25
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method
