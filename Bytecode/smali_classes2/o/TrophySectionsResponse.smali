.class public abstract Lo/TrophySectionsResponse;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/TrophySectionJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-direct {p0, v0}, Lo/ClaimedSectionsResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2}, Lo/ClaimedSectionsResponseJsonAdapter;->extraCallback(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/TrophySectionsResponse;->onNavigationEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/TrophySectionsResponse;->onNavigationEvent()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lo/TrophySectionsResponse;->ICustomTabsCallback()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lo/TrophySectionsResponse;->onMessageChannelReady()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lo/TrophySectionsResponse;->onPostMessage()V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
