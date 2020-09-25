.class public final Lo/setControllerShowTimeoutMs;
.super Lo/ConversationsResponse;
.source ""

# interfaces
.implements Lo/setControllerHideOnTouch;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-direct {p0, p1, v0}, Lo/ConversationsResponse;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x17

    .line 123
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-static {v0, p3}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x9

    .line 60
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final clearMeasurementEnabled(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x2b

    .line 216
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x18

    .line 128
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final generateEventId(Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x16

    .line 118
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getAppInstanceId(Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x14

    .line 110
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getCachedAppInstanceId(Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 105
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x13

    .line 106
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    invoke-static {v0, p3}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xa

    .line 66
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getCurrentScreenClass(Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x11

    .line 98
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getCurrentScreenName(Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x10

    .line 94
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getGmpAppId(Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x15

    .line 114
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getMaxUserProperties(Ljava/lang/String;Lo/setShowBuffering;)V
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
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    .line 44
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getTestFlag(Lo/setShowBuffering;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x26

    .line 200
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLo/setShowBuffering;)V
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
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    invoke-static {v0, p3}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    .line 38
    invoke-static {v0, p4}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 39
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final initForTests(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/16 p1, 0x25

    .line 195
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final initialize(Lo/getEventName;Lo/setStatusCode;J)V
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
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final isDataCollectionEnabled(Lo/setShowBuffering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 207
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x28

    .line 208
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    invoke-static {v0, p3}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 13
    invoke-static {v0, p4}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    .line 14
    invoke-static {v0, p5}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    .line 15
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x2

    .line 16
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lo/setShowBuffering;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    invoke-static {v0, p3}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 22
    invoke-static {v0, p4}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 23
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x3

    .line 24
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final logHealthData(ILjava/lang/String;Lo/getEventName;Lo/getEventName;Lo/getEventName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    invoke-static {v0, p3}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 177
    invoke-static {v0, p4}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 178
    invoke-static {v0, p5}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x21

    .line 179
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityCreated(Lo/getEventName;Landroid/os/Bundle;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 142
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 143
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1b

    .line 144
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityDestroyed(Lo/getEventName;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 148
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1c

    .line 149
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityPaused(Lo/getEventName;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 153
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1d

    .line 154
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityResumed(Lo/getEventName;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 158
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1e

    .line 159
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Lo/getEventName;Lo/setShowBuffering;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 163
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 164
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1f

    .line 165
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityStarted(Lo/getEventName;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 132
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x19

    .line 133
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityStopped(Lo/getEventName;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 137
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1a

    .line 138
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final performAction(Landroid/os/Bundle;Lo/setShowBuffering;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 169
    invoke-static {v0, p2}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 170
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x20

    .line 171
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final registerOnMeasurementEventListener(Lo/getConversations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x23

    .line 187
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final resetAnalyticsData(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0xc

    .line 75
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 52
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 53
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x8

    .line 54
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setConsent(Landroid/os/Bundle;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 220
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x2c

    .line 221
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setCurrentScreen(Lo/getEventName;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 87
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0xf

    .line 90
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setDataCollectionEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 203
    invoke-static {v0, p1}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    const/16 p1, 0x27

    .line 204
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x2a

    .line 212
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setEventInterceptor(Lo/getConversations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x22

    .line 183
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setInstanceIdProvider(Lo/setConversations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x12

    .line 102
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setMeasurementEnabled(ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 69
    invoke-static {v0, p1}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    .line 70
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0xb

    .line 71
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0xd

    .line 79
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0xe

    .line 83
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x7

    .line 49
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;Lo/getEventName;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    invoke-static {v0, p3}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 30
    invoke-static {v0, p4}, Lo/cS;->extraCallback(Landroid/os/Parcel;Z)V

    .line 31
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x4

    .line 32
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final unregisterOnMeasurementEventListener(Lo/getConversations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lo/ConversationsResponse;->onPostMessage()Landroid/os/Parcel;

    move-result-object v0

    .line 190
    invoke-static {v0, p1}, Lo/cS;->ICustomTabsCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x24

    .line 191
    invoke-virtual {p0, p1, v0}, Lo/ConversationsResponse;->extraCallback(ILandroid/os/Parcel;)V

    return-void
.end method
