.class public abstract Lo/ReferredPersonResponse;
.super Lo/getTransformToApply;
.source ""

# interfaces
.implements Lo/RewardDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.ICertData"

    .line 1
    invoke-direct {p0, v0}, Lo/getTransformToApply;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/os/IBinder;)Lo/RewardDetails;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lo/RewardDetails;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lo/RewardDetails;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lo/getMerchantName;

    invoke-direct {v0, p0}, Lo/getMerchantName;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final onPostMessage(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lo/ReferredPersonResponse;->onMessageChannelReady()I

    move-result p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lo/ReferredPersonResponse;->onPostMessage()Lo/getEventName;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lo/access$402;->onPostMessage(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p2
.end method
