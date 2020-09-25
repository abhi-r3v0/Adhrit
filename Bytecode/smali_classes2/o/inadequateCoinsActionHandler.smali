.class public abstract Lo/inadequateCoinsActionHandler;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/viesRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeContentAd"

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

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->onPostMessage()Lo/getEventName;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->mayLaunchUrl()Lo/credProtectDeactivated;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lo/inadequateCoinsActionHandler;->onNavigationEvent(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lo/inadequateCoinsActionHandler;->ICustomTabsCallback(Landroid/os/Bundle;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    goto :goto_3

    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lo/inadequateCoinsActionHandler;->onMessageChannelReady(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->asInterface()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object p1

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->postMessage()V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->updateVisuals()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_3

    :pswitch_9
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->onTransact()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->onRelationshipValidationResult()Lo/enableDarkMode;

    move-result-object p1

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->extraCallback()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_3

    :pswitch_e
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_f
    invoke-virtual {p0}, Lo/inadequateCoinsActionHandler;->newSession()Lo/getEventName;

    move-result-object p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_3
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
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
