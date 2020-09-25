.class public final Lo/DefaultImageHeaderParser$Reader$EndOfFileException;
.super Lo/handles;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/DefaultImageHeaderParser$Reader$EndOfFileException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:[I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:[I

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException$5;

    invoke-direct {v0}, Lo/DefaultImageHeaderParser$Reader$EndOfFileException$5;-><init>()V

    sput-object v0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[I[I)V
    .locals 1

    const-string v0, "MLLT"

    .line 40
    invoke-direct {p0, v0}, Lo/handles;-><init>(Ljava/lang/String;)V

    .line 41
    iput p1, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->extraCallback:I

    .line 42
    iput p2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onPostMessage:I

    .line 43
    iput p3, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onMessageChannelReady:I

    .line 44
    iput-object p4, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->ICustomTabsCallback:[I

    .line 45
    iput-object p5, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onNavigationEvent:[I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "MLLT"

    .line 50
    invoke-direct {p0, v0}, Lo/handles;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->extraCallback:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onPostMessage:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onMessageChannelReady:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->ICustomTabsCallback:[I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onNavigationEvent:[I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    check-cast p1, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    .line 67
    iget v2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->extraCallback:I

    iget v3, p1, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onPostMessage:I

    iget v3, p1, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onPostMessage:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onMessageChannelReady:I

    iget v3, p1, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onMessageChannelReady:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->ICustomTabsCallback:[I

    iget-object v3, p1, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->ICustomTabsCallback:[I

    .line 70
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onNavigationEvent:[I

    iget-object p1, p1, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onNavigationEvent:[I

    .line 71
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 77
    iget v0, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->extraCallback:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget v1, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onPostMessage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget v1, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onMessageChannelReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object v1, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->ICustomTabsCallback:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v1, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onNavigationEvent:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 89
    iget p2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget p2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget p2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object p2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->ICustomTabsCallback:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 93
    iget-object p2, p0, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;->onNavigationEvent:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
