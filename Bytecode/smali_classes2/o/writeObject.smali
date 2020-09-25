.class public final Lo/writeObject;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/writeObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onNavigationEvent:Lo/setPaymentItem;

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/BaseEncoding$DecodingException;

    invoke-direct {v0}, Lo/BaseEncoding$DecodingException;-><init>()V

    sput-object v0, Lo/writeObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILo/setPaymentItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/writeObject;->onPostMessage:I

    .line 3
    iput-object p2, p0, Lo/writeObject;->onNavigationEvent:Lo/setPaymentItem;

    return-void
.end method

.method public constructor <init>(Lo/setPaymentItem;)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0, p1}, Lo/writeObject;-><init>(ILo/setPaymentItem;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 8
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 9
    iget v1, p0, Lo/writeObject;->onPostMessage:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 11
    iget-object v1, p0, Lo/writeObject;->onNavigationEvent:Lo/setPaymentItem;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v2, v1, p2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 14
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
