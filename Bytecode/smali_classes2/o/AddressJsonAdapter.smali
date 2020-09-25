.class public abstract Lo/AddressJsonAdapter;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/Address;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_9

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    const-string v2, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lo/PostRedemptionDetailJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/PostRedemptionDetailJsonAdapter;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/LinkCampaignRequest;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lo/LinkCampaignRequest;

    goto :goto_0

    :cond_2
    new-instance v1, Lo/LinkCampaignRequestJsonAdapter;

    invoke-direct {v1, p2}, Lo/LinkCampaignRequestJsonAdapter;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p1, v1}, Lo/AddressJsonAdapter;->onPostMessage(Lo/PostRedemptionDetailJsonAdapter;Lo/LinkCampaignRequest;)V

    goto :goto_3

    :cond_3
    sget-object p1, Lo/PostRedemptionDetailJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/PostRedemptionDetailJsonAdapter;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/LinkCampaignRequest;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lo/LinkCampaignRequest;

    goto :goto_1

    :cond_5
    new-instance v1, Lo/LinkCampaignRequestJsonAdapter;

    invoke-direct {v1, p2}, Lo/LinkCampaignRequestJsonAdapter;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p0, p1, v1}, Lo/AddressJsonAdapter;->onNavigationEvent(Lo/PostRedemptionDetailJsonAdapter;Lo/LinkCampaignRequest;)V

    goto :goto_3

    :cond_6
    sget-object p1, Lo/setCardBackgroundView;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCardBackgroundView;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/LinkCampaignResponseJsonAdapter;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lo/LinkCampaignResponseJsonAdapter;

    goto :goto_2

    :cond_8
    new-instance v1, Lo/LinkCampaignResponse;

    invoke-direct {v1, p2}, Lo/LinkCampaignResponse;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0, p1, v1}, Lo/AddressJsonAdapter;->extraCallback(Lo/setCardBackgroundView;Lo/LinkCampaignResponseJsonAdapter;)V

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4

    :cond_9
    sget-object p1, Lo/setCardBackgroundView;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onNavigationEvent(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setCardBackgroundView;

    invoke-virtual {p0, p1}, Lo/AddressJsonAdapter;->ICustomTabsCallback(Lo/setCardBackgroundView;)Lo/setOnCtaClick;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lo/ClaimedSectionsResponseJsonAdapter;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_4
    return p4
.end method
