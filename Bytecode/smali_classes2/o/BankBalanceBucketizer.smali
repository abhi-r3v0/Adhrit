.class public abstract Lo/BankBalanceBucketizer;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/Info;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->updateVisuals()Lo/LiveCallbackWrapper;

    move-result-object p1

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->mayLaunchUrl()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object p1

    goto/16 :goto_a

    :pswitch_2
    invoke-static {p2}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/BankBalanceBucketizer;->onMessageChannelReady(Z)V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->newSession()Lo/openGameRewards;

    move-result-object p1

    goto/16 :goto_a

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lo/Cta_FlowJsonAdapter;->ICustomTabsCallback(Landroid/os/IBinder;)Lo/Cta$Flow;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lo/BankBalanceBucketizer;->onPostMessage(Lo/getEventName;Lo/Cta$Flow;Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->ICustomTabsService()Z

    move-result p1

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/BankBalanceBucketizer;->onMessageChannelReady(Lo/getEventName;)V

    goto/16 :goto_8

    :pswitch_7
    sget-object p1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setLastItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lo/BankBalanceBucketizer;->onPostMessage(Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->B_()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->warmup()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->ICustomTabsCallback$Stub$Proxy()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    :pswitch_b
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->asInterface()Lo/TrackBalanceConfigsJsonAdapter;

    move-result-object p1

    goto/16 :goto_a

    :pswitch_c
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->ICustomTabsCallback$Stub()Lo/RawBankAccountJsonAdapter;

    move-result-object p1

    goto/16 :goto_a

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object v2

    sget-object p1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lo/setLastItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_1
    move-object v6, p4

    goto :goto_2

    :cond_0
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lo/PromotionalCardsJsonAdapter;

    if-eqz v0, :cond_1

    check-cast p4, Lo/PromotionalCardsJsonAdapter;

    goto :goto_1

    :cond_1
    new-instance p4, Lo/IntroInfoJsonAdapter;

    invoke-direct {p4, p1}, Lo/IntroInfoJsonAdapter;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :goto_2
    sget-object p1, Lo/activateCredProtect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lo/activateCredProtect;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lo/BankBalanceBucketizer;->extraCallback(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;Lo/activateCredProtect;Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_e
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->onRelationshipValidationResult()Z

    move-result p1

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    goto/16 :goto_d

    :pswitch_f
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->onTransact()V

    goto/16 :goto_8

    :pswitch_10
    sget-object p1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setLastItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/BankBalanceBucketizer;->extraCallback(Lo/setLastItem;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object v1

    sget-object p1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lo/setLastItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/Cta_FlowJsonAdapter;->ICustomTabsCallback(Landroid/os/IBinder;)Lo/Cta$Flow;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lo/BankBalanceBucketizer;->onPostMessage(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Lo/Cta$Flow;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_12
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->onPostMessage()V

    goto/16 :goto_8

    :pswitch_13
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->onMessageChannelReady()V

    goto/16 :goto_8

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object v2

    sget-object p1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lo/setLastItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_4
    move-object v6, p4

    goto :goto_5

    :cond_2
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/PromotionalCardsJsonAdapter;

    if-eqz p4, :cond_3

    move-object p4, p2

    check-cast p4, Lo/PromotionalCardsJsonAdapter;

    goto :goto_4

    :cond_3
    new-instance p4, Lo/IntroInfoJsonAdapter;

    invoke-direct {p4, p1}, Lo/IntroInfoJsonAdapter;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :goto_5
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lo/BankBalanceBucketizer;->onNavigationEvent(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    goto :goto_8

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object v2

    sget-object p1, Lo/setCurrentItem$default;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lo/setCurrentItem$default;

    sget-object p1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lo/setLastItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    :goto_6
    move-object v7, p4

    goto :goto_7

    :cond_4
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/PromotionalCardsJsonAdapter;

    if-eqz p4, :cond_5

    move-object p4, p2

    check-cast p4, Lo/PromotionalCardsJsonAdapter;

    goto :goto_6

    :cond_5
    new-instance p4, Lo/IntroInfoJsonAdapter;

    invoke-direct {p4, p1}, Lo/IntroInfoJsonAdapter;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    :goto_7
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lo/BankBalanceBucketizer;->onMessageChannelReady(Lo/getEventName;Lo/setCurrentItem$default;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    goto :goto_8

    :pswitch_16
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->ICustomTabsCallback()V

    goto :goto_8

    :pswitch_17
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->extraCallback()V

    :goto_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object p1

    sget-object v1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lo/setLastItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_9

    :cond_6
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lo/PromotionalCardsJsonAdapter;

    if-eqz v0, :cond_7

    check-cast p4, Lo/PromotionalCardsJsonAdapter;

    goto :goto_9

    :cond_7
    new-instance p4, Lo/IntroInfoJsonAdapter;

    invoke-direct {p4, p2}, Lo/IntroInfoJsonAdapter;-><init>(Landroid/os/IBinder;)V

    :goto_9
    invoke-virtual {p0, p1, v1, v2, p4}, Lo/BankBalanceBucketizer;->extraCallback(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    goto :goto_8

    :pswitch_19
    invoke-virtual {p0}, Lo/BankBalanceBucketizer;->onNavigationEvent()Lo/getEventName;

    move-result-object p1

    :goto_a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_d

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/getEventName$onPostMessage;->extraCallback(Landroid/os/IBinder;)Lo/getEventName;

    move-result-object v2

    sget-object p1, Lo/setCurrentItem$default;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lo/setCurrentItem$default;

    sget-object p1, Lo/setLastItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lo/setLastItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    :goto_b
    move-object v6, p4

    goto :goto_c

    :cond_8
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/PromotionalCardsJsonAdapter;

    if-eqz p4, :cond_9

    move-object p4, p2

    check-cast p4, Lo/PromotionalCardsJsonAdapter;

    goto :goto_b

    :cond_9
    new-instance p4, Lo/IntroInfoJsonAdapter;

    invoke-direct {p4, p1}, Lo/IntroInfoJsonAdapter;-><init>(Landroid/os/IBinder;)V

    goto :goto_b

    :goto_c
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lo/BankBalanceBucketizer;->onPostMessage(Lo/getEventName;Lo/setCurrentItem$default;Lo/setLastItem;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    goto :goto_8

    :goto_d
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
