.class public abstract Lo/TrophySectionsCardsResponse;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/TrophySectionsResponseJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static onNavigationEvent(Landroid/os/IBinder;)Lo/TrophySectionsResponseJsonAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/TrophySectionsResponseJsonAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lo/TrophySectionsResponseJsonAdapter;

    return-object v0

    :cond_1
    new-instance v0, Lo/TrophySectionsCardsResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/TrophySectionsCardsResponseJsonAdapter;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->newSession()Z

    move-result p1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->onTransact()Lo/TrophySectionJsonAdapter;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->ICustomTabsCallback$Stub()Z

    move-result p1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->extraCallback()F

    move-result p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/TrophySectionJsonAdapter;

    if-eqz p4, :cond_1

    move-object p1, p2

    check-cast p1, Lo/TrophySectionJsonAdapter;

    goto :goto_0

    :cond_1
    new-instance p2, Lo/UserWinningStatistics;

    invoke-direct {p2, p1}, Lo/UserWinningStatistics;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lo/TrophySectionsCardsResponse;->onNavigationEvent(Lo/TrophySectionJsonAdapter;)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->onRelationshipValidationResult()F

    move-result p1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->asInterface()F

    move-result p1

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_4

    :pswitch_7
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->ICustomTabsCallback()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :pswitch_8
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->onMessageChannelReady()Z

    move-result p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    goto :goto_4

    :pswitch_9
    invoke-static {p2}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/TrophySectionsCardsResponse;->onPostMessage(Z)V

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->onNavigationEvent()V

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0}, Lo/TrophySectionsCardsResponse;->onPostMessage()V

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
