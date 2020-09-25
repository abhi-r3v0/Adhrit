.class public final Lo/Registry$MissingComponentException;
.super Lo/handles;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/Registry$MissingComponentException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extraCallback:I

.field public final onMessageChannelReady:[B

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lo/Registry$MissingComponentException$2;

    invoke-direct {v0}, Lo/Registry$MissingComponentException$2;-><init>()V

    sput-object v0, Lo/Registry$MissingComponentException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "APIC"

    .line 48
    invoke-direct {p0, v0}, Lo/handles;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/Registry$MissingComponentException;->onNavigationEvent:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/Registry$MissingComponentException;->onPostMessage:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Registry$MissingComponentException;->extraCallback:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lo/Registry$MissingComponentException;->onMessageChannelReady:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 1

    const-string v0, "APIC"

    .line 40
    invoke-direct {p0, v0}, Lo/handles;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lo/Registry$MissingComponentException;->onNavigationEvent:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lo/Registry$MissingComponentException;->onPostMessage:Ljava/lang/String;

    .line 43
    iput p3, p0, Lo/Registry$MissingComponentException;->extraCallback:I

    .line 44
    iput-object p4, p0, Lo/Registry$MissingComponentException;->onMessageChannelReady:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    check-cast p1, Lo/Registry$MissingComponentException;

    .line 64
    iget v2, p0, Lo/Registry$MissingComponentException;->extraCallback:I

    iget v3, p1, Lo/Registry$MissingComponentException;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/Registry$MissingComponentException;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/Registry$MissingComponentException;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/Registry$MissingComponentException;->onPostMessage:Ljava/lang/String;

    iget-object v3, p1, Lo/Registry$MissingComponentException;->onPostMessage:Ljava/lang/String;

    .line 65
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/Registry$MissingComponentException;->onMessageChannelReady:[B

    iget-object p1, p1, Lo/Registry$MissingComponentException;->onMessageChannelReady:[B

    .line 66
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 72
    iget v0, p0, Lo/Registry$MissingComponentException;->extraCallback:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v1, p0, Lo/Registry$MissingComponentException;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lo/Registry$MissingComponentException;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v1, p0, Lo/Registry$MissingComponentException;->onMessageChannelReady:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/handles;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Registry$MissingComponentException;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Registry$MissingComponentException;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 88
    iget-object p2, p0, Lo/Registry$MissingComponentException;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lo/Registry$MissingComponentException;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget p2, p0, Lo/Registry$MissingComponentException;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object p2, p0, Lo/Registry$MissingComponentException;->onMessageChannelReady:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
