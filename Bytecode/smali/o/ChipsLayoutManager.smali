.class public final Lo/ChipsLayoutManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/callAPI$onPostMessage;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/ChipsLayoutManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:[B

.field public final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lo/ChipsLayoutManager$5;

    invoke-direct {v0}, Lo/ChipsLayoutManager$5;-><init>()V

    sput-object v0, Lo/ChipsLayoutManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/ChipsLayoutManager;->onNavigationEvent:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/ChipsLayoutManager;->onPostMessage:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/ChipsLayoutManager;->onMessageChannelReady:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/ChipsLayoutManager;->extraCallback:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/ChipsLayoutManager;->onTransact:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback$Stub:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lo/ChipsLayoutManager;->onRelationshipValidationResult:[B

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/p$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

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

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    check-cast p1, Lo/ChipsLayoutManager;

    .line 90
    iget v2, p0, Lo/ChipsLayoutManager;->onNavigationEvent:I

    iget v3, p1, Lo/ChipsLayoutManager;->onNavigationEvent:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/ChipsLayoutManager;->ICustomTabsCallback:Ljava/lang/String;

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/ChipsLayoutManager;->onPostMessage:Ljava/lang/String;

    iget-object v3, p1, Lo/ChipsLayoutManager;->onPostMessage:Ljava/lang/String;

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lo/ChipsLayoutManager;->onMessageChannelReady:I

    iget v3, p1, Lo/ChipsLayoutManager;->onMessageChannelReady:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/ChipsLayoutManager;->extraCallback:I

    iget v3, p1, Lo/ChipsLayoutManager;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/ChipsLayoutManager;->onTransact:I

    iget v3, p1, Lo/ChipsLayoutManager;->onTransact:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback$Stub:I

    iget v3, p1, Lo/ChipsLayoutManager;->ICustomTabsCallback$Stub:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/ChipsLayoutManager;->onRelationshipValidationResult:[B

    iget-object p1, p1, Lo/ChipsLayoutManager;->onRelationshipValidationResult:[B

    .line 97
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

    .line 103
    iget v0, p0, Lo/ChipsLayoutManager;->onNavigationEvent:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-object v1, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v1, p0, Lo/ChipsLayoutManager;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget v1, p0, Lo/ChipsLayoutManager;->onMessageChannelReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget v1, p0, Lo/ChipsLayoutManager;->extraCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget v1, p0, Lo/ChipsLayoutManager;->onTransact:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget v1, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v1, p0, Lo/ChipsLayoutManager;->onRelationshipValidationResult:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onPostMessage()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Picture: mimeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ChipsLayoutManager;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 116
    iget p2, p0, Lo/ChipsLayoutManager;->onNavigationEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object p2, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lo/ChipsLayoutManager;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget p2, p0, Lo/ChipsLayoutManager;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget p2, p0, Lo/ChipsLayoutManager;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget p2, p0, Lo/ChipsLayoutManager;->onTransact:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget p2, p0, Lo/ChipsLayoutManager;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object p2, p0, Lo/ChipsLayoutManager;->onRelationshipValidationResult:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
