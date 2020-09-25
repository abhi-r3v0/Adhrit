.class public final Lo/writeReplace;
.super Lo/getTags;
.source ""

# interfaces
.implements Lo/PaymentRequestItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/writeReplace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:I

.field private onMessageChannelReady:I

.field private onPostMessage:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/ComputationException;

    invoke-direct {v0}, Lo/ComputationException;-><init>()V

    sput-object v0, Lo/writeReplace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lo/writeReplace;-><init>(ILandroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/writeReplace;->ICustomTabsCallback:I

    .line 3
    iput p2, p0, Lo/writeReplace;->onMessageChannelReady:I

    .line 4
    iput-object p3, p0, Lo/writeReplace;->onPostMessage:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lo/writeReplace;-><init>(IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 10
    iget v0, p0, Lo/writeReplace;->onMessageChannelReady:I

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lcom/google/android/gms/common/api/Status;->onMessageChannelReady:Lcom/google/android/gms/common/api/Status;

    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->onPostMessage:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 14
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 15
    iget v1, p0, Lo/writeReplace;->ICustomTabsCallback:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 17
    iget v1, p0, Lo/writeReplace;->onMessageChannelReady:I

    const/4 v2, 0x2

    .line 18
    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 20
    iget-object v1, p0, Lo/writeReplace;->onPostMessage:Landroid/content/Intent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 22
    invoke-static {p1, v2, v1, p2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 23
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
