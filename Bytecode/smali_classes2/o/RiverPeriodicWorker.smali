.class public abstract Lo/RiverPeriodicWorker;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/TrackBalanceConfigsJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lo/RiverPeriodicWorker;->onPostMessage(Lo/getEventName;Lo/getEventName;Lo/getEventName;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->mayLaunchUrl()Lo/getEventName;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->newSession()Lo/getEventName;

    move-result-object p1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->ICustomTabsCallback$Stub$Proxy()Lo/credProtectDeactivated;

    move-result-object p1

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->warmup()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object p1

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->D_()Lo/getEventName;

    move-result-object p1

    goto :goto_2

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/RiverPeriodicWorker;->onMessageChannelReady(Lo/getEventName;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->ICustomTabsService()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_4

    :pswitch_9
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->ICustomTabsCallback$Stub()Z

    move-result p1

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->asInterface()Z

    move-result p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    goto :goto_4

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/RiverPeriodicWorker;->ICustomTabsCallback(Lo/getEventName;)V

    goto :goto_1

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/RiverPeriodicWorker;->extraCallback(Lo/getEventName;)V

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->onRelationshipValidationResult()V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4

    :pswitch_e
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->onTransact()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :pswitch_f
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :pswitch_10
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_4

    :pswitch_11
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :pswitch_12
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->onPostMessage()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_4

    :pswitch_13
    invoke-virtual {p0}, Lo/RiverPeriodicWorker;->extraCallback()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
