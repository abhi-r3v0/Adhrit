.class public final Lo/getRewardDetails;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getRewardDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:I

.field private extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:[B

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lo/getRewardDetails$4;

    invoke-direct {v0}, Lo/getRewardDetails$4;-><init>()V

    sput-object v0, Lo/getRewardDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getRewardDetails;->onPostMessage:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getRewardDetails;->onMessageChannelReady:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getRewardDetails;->ICustomTabsCallback:I

    .line 83
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/getRewardDetails;->onNavigationEvent:[B

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

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    check-cast p1, Lo/getRewardDetails;

    .line 97
    iget v2, p0, Lo/getRewardDetails;->onPostMessage:I

    iget v3, p1, Lo/getRewardDetails;->onPostMessage:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/getRewardDetails;->onMessageChannelReady:I

    iget v3, p1, Lo/getRewardDetails;->onMessageChannelReady:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/getRewardDetails;->ICustomTabsCallback:I

    iget v3, p1, Lo/getRewardDetails;->ICustomTabsCallback:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/getRewardDetails;->onNavigationEvent:[B

    iget-object p1, p1, Lo/getRewardDetails;->onNavigationEvent:[B

    .line 100
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 111
    iget v0, p0, Lo/getRewardDetails;->extraCallback:I

    if-nez v0, :cond_0

    .line 113
    iget v0, p0, Lo/getRewardDetails;->onPostMessage:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget v1, p0, Lo/getRewardDetails;->onMessageChannelReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget v1, p0, Lo/getRewardDetails;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v1, p0, Lo/getRewardDetails;->onNavigationEvent:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    iput v0, p0, Lo/getRewardDetails;->extraCallback:I

    .line 119
    :cond_0
    iget v0, p0, Lo/getRewardDetails;->extraCallback:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/getRewardDetails;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/getRewardDetails;->onMessageChannelReady:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/getRewardDetails;->ICustomTabsCallback:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getRewardDetails;->onNavigationEvent:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 129
    iget p2, p0, Lo/getRewardDetails;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget p2, p0, Lo/getRewardDetails;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget p2, p0, Lo/getRewardDetails;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object p2, p0, Lo/getRewardDetails;->onNavigationEvent:[B

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 133
    iget-object p2, p0, Lo/getRewardDetails;->onNavigationEvent:[B

    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    return-void
.end method
