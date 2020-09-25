.class public Lcom/google/android/gms/auth/api/signin/SignInAccount;
.super Lo/getTags;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/signin/SignInAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public extraCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private onNavigationEvent:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private onPostMessage:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/getUser_id;

    invoke-direct {v0}, Lo/getUser_id;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->extraCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->onNavigationEvent:Ljava/lang/String;

    .line 2007
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->onPostMessage:Ljava/lang/String;

    return-void

    .line 2008
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "8.3 and 8.4 SDKs require non-null userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1008
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "8.3 and 8.4 SDKs require non-null email"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 3008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 3009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->extraCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v4, 0x7

    .line 13
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->onPostMessage:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 4013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
