.class public abstract Lo/CardFinalPaymentData$$Parcelable$onPostMessage;
.super Lo/getTransformToApply;
.source ""

# interfaces
.implements Lo/CardFinalPaymentData$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CardFinalPaymentData$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lo/getTransformToApply;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 15
    sget-object v1, Lo/getTotal_count;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lo/access$402;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/getTotal_count;

    .line 16
    invoke-virtual {p0, p1, v0, p2}, Lo/CardFinalPaymentData$$Parcelable$onPostMessage;->onNavigationEvent(ILandroid/os/IBinder;Lo/getTotal_count;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 10
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lo/access$402;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 11
    invoke-virtual {p0, p1, p2}, Lo/CardFinalPaymentData$$Parcelable$onPostMessage;->onMessageChannelReady(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lo/access$402;->extraCallback(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lo/CardFinalPaymentData$$Parcelable$onPostMessage;->onNavigationEvent(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 19
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
