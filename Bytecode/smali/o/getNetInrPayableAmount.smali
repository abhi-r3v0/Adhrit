.class public final Lo/getNetInrPayableAmount;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getNetInrPayableAmount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ICustomTabsCallback:I

.field private onMessageChannelReady:Landroid/os/Bundle;

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/setNetInrPayableAmount;

    invoke-direct {v0}, Lo/setNetInrPayableAmount;-><init>()V

    sput-object v0, Lo/getNetInrPayableAmount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/getNetInrPayableAmount;->onPostMessage:I

    .line 3
    iput p2, p0, Lo/getNetInrPayableAmount;->ICustomTabsCallback:I

    .line 4
    iput-object p3, p0, Lo/getNetInrPayableAmount;->onMessageChannelReady:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 11
    iget v1, p0, Lo/getNetInrPayableAmount;->onPostMessage:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 2039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3008
    iget v1, p0, Lo/getNetInrPayableAmount;->ICustomTabsCallback:I

    const/4 v3, 0x2

    .line 3039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object v1, p0, Lo/getNetInrPayableAmount;->onMessageChannelReady:Landroid/os/Bundle;

    const/4 v3, 0x3

    .line 18
    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 5013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
