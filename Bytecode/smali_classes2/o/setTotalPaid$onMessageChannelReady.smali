.class public abstract Lo/setTotalPaid$onMessageChannelReady;
.super Lo/getTransformToApply;
.source ""

# interfaces
.implements Lo/setTotalPaid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTotalPaid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setTotalPaid$onMessageChannelReady$onMessageChannelReady;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 1
    invoke-direct {p0, v0}, Lo/getTransformToApply;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/os/IBinder;)Lo/setTotalPaid;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lo/setTotalPaid;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lo/setTotalPaid;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lo/setTotalPaid$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setTotalPaid$onMessageChannelReady$onMessageChannelReady;-><init>(Landroid/os/IBinder;)V

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

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 10
    invoke-virtual {p0}, Lo/setTotalPaid$onMessageChannelReady;->onNavigationEvent()Landroid/accounts/Account;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lo/access$402;->onMessageChannelReady(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
