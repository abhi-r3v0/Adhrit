.class public abstract Lo/SlotMachinePlayResponseJsonAdapter;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/SpinDetail;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static onNavigationEvent(Landroid/os/IBinder;)Lo/SpinDetail;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/SpinDetail;

    if-eqz v1, :cond_1

    check-cast v0, Lo/SpinDetail;

    return-object v0

    :cond_1
    new-instance v0, Lo/SlotMachineResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/SlotMachineResponseJsonAdapter;-><init>(Landroid/os/IBinder;)V

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

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->extraCommand()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/SpinTheWheelResponseJsonAdapter;

    if-eqz p4, :cond_1

    move-object p4, p2

    check-cast p4, Lo/SpinTheWheelResponseJsonAdapter;

    goto :goto_0

    :cond_1
    new-instance p4, Lo/SpinTheWheelResponse;

    invoke-direct {p4, p1}, Lo/SpinTheWheelResponse;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p4}, Lo/SlotMachinePlayResponseJsonAdapter;->onPostMessage(Lo/SpinTheWheelResponseJsonAdapter;)V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->t_()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p2}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->ICustomTabsCallback(Z)V

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->INotificationSideChannel$Default()Lo/PendingUsers;

    move-result-object p1

    goto/16 :goto_9

    :pswitch_6
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->INotificationSideChannel$Stub()Lo/StatisticsItemJsonAdapter;

    move-result-object p1

    goto/16 :goto_9

    :pswitch_7
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->setDefaultImpl()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_8
    sget-object p1, Lo/UserWinningStatisticsJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/UserWinningStatisticsJsonAdapter;

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->onPostMessage(Lo/UserWinningStatisticsJsonAdapter;)V

    goto/16 :goto_8

    :pswitch_9
    sget-object p1, Lo/WinLuckyNumberResponseJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/WinLuckyNumberResponseJsonAdapter;

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->extraCallback(Lo/WinLuckyNumberResponseJsonAdapter;)V

    goto/16 :goto_8

    :pswitch_a
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->validateRelationship()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object p1

    goto/16 :goto_9

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->onPostMessage(Landroid/os/IBinder;)Lo/CredProtectResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->extraCallback(Lo/CredProtectResponseJsonAdapter;)V

    goto/16 :goto_8

    :pswitch_d
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->IPostMessageService()Z

    move-result p1

    goto/16 :goto_7

    :pswitch_e
    invoke-static {p2}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->onPostMessage(Z)V

    goto/16 :goto_8

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/TemplatePropertiesMachineJsonAdapter;

    if-eqz p4, :cond_3

    move-object p4, p2

    check-cast p4, Lo/TemplatePropertiesMachineJsonAdapter;

    goto :goto_1

    :cond_3
    new-instance p4, Lo/TemplatePropertiesSlotMachine;

    invoke-direct {p4, p1}, Lo/TemplatePropertiesSlotMachine;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p0, p4}, Lo/SlotMachinePlayResponseJsonAdapter;->onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V

    goto/16 :goto_8

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/ParentEntity;

    if-eqz p4, :cond_5

    move-object p4, p2

    check-cast p4, Lo/ParentEntity;

    goto :goto_2

    :cond_5
    new-instance p4, Lo/PayoutClaimSlotMachineResponseJsonAdapter;

    invoke-direct {p4, p1}, Lo/PayoutClaimSlotMachineResponseJsonAdapter;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0, p4}, Lo/SlotMachinePlayResponseJsonAdapter;->ICustomTabsCallback(Lo/ParentEntity;)V

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/setNumberOfPie;->extraCallback(Landroid/os/IBinder;)Lo/setStartingAngle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->extraCallback(Lo/setStartingAngle;)V

    goto/16 :goto_8

    :pswitch_12
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->w_()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/setShowCropOverlay;->onMessageChannelReady(Landroid/os/IBinder;)Lo/setFlippedHorizontally;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/SlotMachinePlayResponseJsonAdapter;->onPostMessage(Lo/setFlippedHorizontally;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/setMultiTouchEnabled;->onNavigationEvent(Landroid/os/IBinder;)Lo/setMaxCropResultSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->onPostMessage(Lo/setMaxCropResultSize;)V

    goto/16 :goto_8

    :pswitch_15
    sget-object p1, Lo/setCurrentItem$default;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCurrentItem$default;

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->ICustomTabsCallback(Lo/setCurrentItem$default;)V

    goto/16 :goto_8

    :pswitch_16
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy()Lo/setCurrentItem$default;

    move-result-object p1

    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    :pswitch_17
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->updateVisuals()V

    goto/16 :goto_8

    :pswitch_18
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->requestPostMessageChannel()V

    goto/16 :goto_8

    :pswitch_19
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->IconCompatParcelizer()V

    goto :goto_8

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/StatisticsItemJsonAdapter;

    if-eqz p4, :cond_7

    move-object p4, p2

    check-cast p4, Lo/StatisticsItemJsonAdapter;

    goto :goto_5

    :cond_7
    new-instance p4, Lo/SpinTheWheelResponse_TemplatePropertiesJsonAdapter;

    invoke-direct {p4, p1}, Lo/SpinTheWheelResponse_TemplatePropertiesJsonAdapter;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-virtual {p0, p4}, Lo/SlotMachinePlayResponseJsonAdapter;->extraCallback(Lo/StatisticsItemJsonAdapter;)V

    goto :goto_8

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/PendingUsers;

    if-eqz p4, :cond_9

    move-object p4, p2

    check-cast p4, Lo/PendingUsers;

    goto :goto_6

    :cond_9
    new-instance p4, Lo/PendingUsersJsonAdapter;

    invoke-direct {p4, p1}, Lo/PendingUsersJsonAdapter;-><init>(Landroid/os/IBinder;)V

    :goto_6
    invoke-virtual {p0, p4}, Lo/SlotMachinePlayResponseJsonAdapter;->onPostMessage(Lo/PendingUsers;)V

    goto :goto_8

    :pswitch_1c
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->postMessage()V

    goto :goto_8

    :pswitch_1d
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->mayLaunchUrl()V

    goto :goto_8

    :pswitch_1e
    sget-object p1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setLastItem;

    invoke-virtual {p0, p1}, Lo/SlotMachinePlayResponseJsonAdapter;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result p1

    goto :goto_7

    :pswitch_1f
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->warmup()Z

    move-result p1

    :goto_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    goto :goto_a

    :pswitch_20
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->newSession()V

    :goto_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :pswitch_21
    invoke-virtual {p0}, Lo/SlotMachinePlayResponseJsonAdapter;->ICustomTabsService()Lo/getEventName;

    move-result-object p1

    :goto_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_a
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
