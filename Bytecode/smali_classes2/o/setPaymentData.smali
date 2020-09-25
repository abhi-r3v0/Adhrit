.class public final Lo/setPaymentData;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setPaymentData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Z

.field private onMessageChannelReady:Landroid/os/IBinder;

.field private onNavigationEvent:Lo/setReferenceId;

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lo/getGender;

    invoke-direct {v0}, Lo/getGender;-><init>()V

    sput-object v0, Lo/setPaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lo/setReferenceId;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/setPaymentData;->onPostMessage:I

    .line 3
    iput-object p2, p0, Lo/setPaymentData;->onMessageChannelReady:Landroid/os/IBinder;

    .line 4
    iput-object p3, p0, Lo/setPaymentData;->onNavigationEvent:Lo/setReferenceId;

    .line 5
    iput-boolean p4, p0, Lo/setPaymentData;->extraCallback:Z

    .line 6
    iput-boolean p5, p0, Lo/setPaymentData;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lo/setPaymentData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 41
    :cond_1
    check-cast p1, Lo/setPaymentData;

    .line 42
    iget-object v1, p0, Lo/setPaymentData;->onNavigationEvent:Lo/setReferenceId;

    iget-object v3, p1, Lo/setPaymentData;->onNavigationEvent:Lo/setReferenceId;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7012
    iget-object v1, p0, Lo/setPaymentData;->onMessageChannelReady:Landroid/os/IBinder;

    invoke-static {v1}, Lo/setTotalPaid$onMessageChannelReady;->ICustomTabsCallback(Landroid/os/IBinder;)Lo/setTotalPaid;

    move-result-object v1

    .line 8012
    iget-object p1, p1, Lo/setPaymentData;->onMessageChannelReady:Landroid/os/IBinder;

    invoke-static {p1}, Lo/setTotalPaid$onMessageChannelReady;->ICustomTabsCallback(Landroid/os/IBinder;)Lo/setTotalPaid;

    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final extraCallback()Lo/setReferenceId;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/setPaymentData;->onNavigationEvent:Lo/setReferenceId;

    return-object v0
.end method

.method public final onPostMessage()Lo/setTotalPaid;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/setPaymentData;->onMessageChannelReady:Landroid/os/IBinder;

    invoke-static {v0}, Lo/setTotalPaid$onMessageChannelReady;->ICustomTabsCallback(Landroid/os/IBinder;)Lo/setTotalPaid;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 2008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 24
    iget v2, p0, Lo/setPaymentData;->onPostMessage:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 2039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object v2, p0, Lo/setPaymentData;->onMessageChannelReady:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 3015
    iget-object v2, p0, Lo/setPaymentData;->onNavigationEvent:Lo/setReferenceId;

    const/4 v4, 0x3

    .line 28
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3016
    iget-boolean p2, p0, Lo/setPaymentData;->extraCallback:Z

    .line 3020
    invoke-static {p1, v3, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4019
    iget-boolean p2, p0, Lo/setPaymentData;->ICustomTabsCallback:Z

    const/4 v0, 0x5

    .line 4020
    invoke-static {p1, v0, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 6013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
