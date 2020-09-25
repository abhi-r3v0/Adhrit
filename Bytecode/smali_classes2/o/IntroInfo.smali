.class public abstract Lo/IntroInfo;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/PromotionalCardsJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static onNavigationEvent(Landroid/os/IBinder;)Lo/PromotionalCardsJsonAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/PromotionalCardsJsonAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lo/PromotionalCardsJsonAdapter;

    return-object v0

    :cond_1
    new-instance v0, Lo/IntroInfoJsonAdapter;

    invoke-direct {v0, p0}, Lo/IntroInfoJsonAdapter;-><init>(Landroid/os/IBinder;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/IntroInfo;->onPostMessage(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lo/IntroInfo;->ICustomTabsCallback$Stub()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$logout$$inlined$executeOnResume$1;->extraCallback(Landroid/os/IBinder;)Lo/openGameRewards;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/IntroInfo;->extraCallback(Lo/openGameRewards;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/IntroInfo;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lo/IntroInfo;->onTransact()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lo/InfoJsonAdapter;

    if-eqz p4, :cond_1

    move-object p1, p2

    check-cast p1, Lo/InfoJsonAdapter;

    goto :goto_0

    :cond_1
    new-instance p2, Lo/SectionDataJsonAdapter;

    invoke-direct {p2, p1}, Lo/SectionDataJsonAdapter;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lo/IntroInfo;->onPostMessage(Lo/InfoJsonAdapter;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lo/IntroInfo;->onPostMessage()V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lo/IntroInfo;->ICustomTabsCallback()V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lo/IntroInfo;->onMessageChannelReady()V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/IntroInfo;->onNavigationEvent(I)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lo/IntroInfo;->onNavigationEvent()V

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lo/IntroInfo;->extraCallback()V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
