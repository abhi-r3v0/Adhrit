.class public final Lo/setPaymentItem;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setPaymentItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:I

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private final onPostMessage:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lo/RewardCategoryResponse;

    invoke-direct {v0}, Lo/RewardCategoryResponse;-><init>()V

    sput-object v0, Lo/setPaymentItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/setPaymentItem;->onMessageChannelReady:I

    .line 3
    iput-object p2, p0, Lo/setPaymentItem;->onPostMessage:Landroid/accounts/Account;

    .line 4
    iput p3, p0, Lo/setPaymentItem;->extraCallback:I

    .line 5
    iput-object p4, p0, Lo/setPaymentItem;->onNavigationEvent:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0, p1, p2, p3}, Lo/setPaymentItem;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
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

    .line 14
    iget v2, p0, Lo/setPaymentItem;->onMessageChannelReady:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 2039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3009
    iget-object v2, p0, Lo/setPaymentItem;->onPostMessage:Landroid/accounts/Account;

    const/4 v4, 0x2

    .line 17
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3010
    iget v2, p0, Lo/setPaymentItem;->extraCallback:I

    const/4 v4, 0x3

    .line 3039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    iget-object v2, p0, Lo/setPaymentItem;->onNavigationEvent:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 23
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 5013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
