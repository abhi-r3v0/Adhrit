.class public final Lo/Registry$NoResultEncoderAvailableException;
.super Lo/handles;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/Registry$NoResultEncoderAvailableException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Z

.field private final onMessageChannelReady:[Lo/handles;

.field public final onNavigationEvent:[Ljava/lang/String;

.field public final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lo/Registry$NoResultEncoderAvailableException$4;

    invoke-direct {v0}, Lo/Registry$NoResultEncoderAvailableException$4;-><init>()V

    sput-object v0, Lo/Registry$NoResultEncoderAvailableException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "CTOC"

    .line 50
    invoke-direct {p0, v0}, Lo/handles;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/Registry$NoResultEncoderAvailableException;->ICustomTabsCallback:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/Registry$NoResultEncoderAvailableException;->onPostMessage:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lo/Registry$NoResultEncoderAvailableException;->extraCallback:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lo/Registry$NoResultEncoderAvailableException;->onNavigationEvent:[Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    new-array v1, v0, [Lo/handles;

    iput-object v1, p0, Lo/Registry$NoResultEncoderAvailableException;->onMessageChannelReady:[Lo/handles;

    :goto_2
    if-ge v2, v0, :cond_2

    .line 58
    iget-object v1, p0, Lo/Registry$NoResultEncoderAvailableException;->onMessageChannelReady:[Lo/handles;

    const-class v3, Lo/handles;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lo/handles;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lo/handles;)V
    .locals 1

    const-string v0, "CTOC"

    .line 40
    invoke-direct {p0, v0}, Lo/handles;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lo/Registry$NoResultEncoderAvailableException;->ICustomTabsCallback:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lo/Registry$NoResultEncoderAvailableException;->onPostMessage:Z

    .line 43
    iput-boolean p3, p0, Lo/Registry$NoResultEncoderAvailableException;->extraCallback:Z

    .line 44
    iput-object p4, p0, Lo/Registry$NoResultEncoderAvailableException;->onNavigationEvent:[Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lo/Registry$NoResultEncoderAvailableException;->onMessageChannelReady:[Lo/handles;

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

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    check-cast p1, Lo/Registry$NoResultEncoderAvailableException;

    .line 85
    iget-boolean v2, p0, Lo/Registry$NoResultEncoderAvailableException;->onPostMessage:Z

    iget-boolean v3, p1, Lo/Registry$NoResultEncoderAvailableException;->onPostMessage:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lo/Registry$NoResultEncoderAvailableException;->extraCallback:Z

    iget-boolean v3, p1, Lo/Registry$NoResultEncoderAvailableException;->extraCallback:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/Registry$NoResultEncoderAvailableException;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/Registry$NoResultEncoderAvailableException;->ICustomTabsCallback:Ljava/lang/String;

    .line 87
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/Registry$NoResultEncoderAvailableException;->onNavigationEvent:[Ljava/lang/String;

    iget-object v3, p1, Lo/Registry$NoResultEncoderAvailableException;->onNavigationEvent:[Ljava/lang/String;

    .line 88
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/Registry$NoResultEncoderAvailableException;->onMessageChannelReady:[Lo/handles;

    iget-object p1, p1, Lo/Registry$NoResultEncoderAvailableException;->onMessageChannelReady:[Lo/handles;

    .line 89
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 95
    iget-boolean v0, p0, Lo/Registry$NoResultEncoderAvailableException;->onPostMessage:Z

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-boolean v1, p0, Lo/Registry$NoResultEncoderAvailableException;->extraCallback:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v1, p0, Lo/Registry$NoResultEncoderAvailableException;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 103
    iget-object p2, p0, Lo/Registry$NoResultEncoderAvailableException;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-boolean p2, p0, Lo/Registry$NoResultEncoderAvailableException;->onPostMessage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-boolean p2, p0, Lo/Registry$NoResultEncoderAvailableException;->extraCallback:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 106
    iget-object p2, p0, Lo/Registry$NoResultEncoderAvailableException;->onNavigationEvent:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lo/Registry$NoResultEncoderAvailableException;->onMessageChannelReady:[Lo/handles;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object p2, p0, Lo/Registry$NoResultEncoderAvailableException;->onMessageChannelReady:[Lo/handles;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 109
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
