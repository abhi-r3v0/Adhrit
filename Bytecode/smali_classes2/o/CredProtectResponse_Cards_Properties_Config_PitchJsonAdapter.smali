.class public abstract Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/CredProtectResponseJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static onPostMessage(Landroid/os/IBinder;)Lo/CredProtectResponseJsonAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/CredProtectResponseJsonAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lo/CredProtectResponseJsonAdapter;

    return-object v0

    :cond_1
    new-instance v0, Lo/CredProtectResponse_CardsJsonAdapter;

    invoke-direct {v0, p0}, Lo/CredProtectResponse_CardsJsonAdapter;-><init>(Landroid/os/IBinder;)V

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
    invoke-virtual {p0}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->ICustomTabsCallback$Stub()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->onMessageChannelReady(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->onMessageChannelReady()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardItem"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz p4, :cond_1

    move-object p1, p2

    check-cast p1, Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    goto :goto_0

    :cond_1
    new-instance p2, Lo/CredProtectResponse$Cards$Properties;

    invoke-direct {p2, p1}, Lo/CredProtectResponse$Cards$Properties;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->onPostMessage(Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->onNavigationEvent()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->ICustomTabsCallback()V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->onPostMessage()V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lo/CredProtectResponse_Cards_Properties_Config_PitchJsonAdapter;->extraCallback()V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
