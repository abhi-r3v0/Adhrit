.class public final Lo/Glide;
.super Lo/handles;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/Glide;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:J

.field private final asBinder:[Lo/handles;

.field public final extraCallback:J

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lo/Glide$5;

    invoke-direct {v0}, Lo/Glide$5;-><init>()V

    sput-object v0, Lo/Glide;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "CHAP"

    .line 58
    invoke-direct {p0, v0}, Lo/handles;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/Glide;->onNavigationEvent:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Glide;->onMessageChannelReady:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Glide;->onPostMessage:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/Glide;->extraCallback:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/Glide;->ICustomTabsCallback:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    new-array v1, v0, [Lo/handles;

    iput-object v1, p0, Lo/Glide;->asBinder:[Lo/handles;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 67
    iget-object v2, p0, Lo/Glide;->asBinder:[Lo/handles;

    const-class v3, Lo/handles;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lo/handles;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lo/handles;)V
    .locals 1

    const-string v0, "CHAP"

    .line 48
    invoke-direct {p0, v0}, Lo/handles;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lo/Glide;->onNavigationEvent:Ljava/lang/String;

    .line 50
    iput p2, p0, Lo/Glide;->onMessageChannelReady:I

    .line 51
    iput p3, p0, Lo/Glide;->onPostMessage:I

    .line 52
    iput-wide p4, p0, Lo/Glide;->extraCallback:J

    .line 53
    iput-wide p6, p0, Lo/Glide;->ICustomTabsCallback:J

    .line 54
    iput-object p8, p0, Lo/Glide;->asBinder:[Lo/handles;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    check-cast p1, Lo/Glide;

    .line 94
    iget v2, p0, Lo/Glide;->onMessageChannelReady:I

    iget v3, p1, Lo/Glide;->onMessageChannelReady:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/Glide;->onPostMessage:I

    iget v3, p1, Lo/Glide;->onPostMessage:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lo/Glide;->extraCallback:J

    iget-wide v4, p1, Lo/Glide;->extraCallback:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lo/Glide;->ICustomTabsCallback:J

    iget-wide v4, p1, Lo/Glide;->ICustomTabsCallback:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lo/Glide;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/Glide;->onNavigationEvent:Ljava/lang/String;

    .line 98
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/Glide;->asBinder:[Lo/handles;

    iget-object p1, p1, Lo/Glide;->asBinder:[Lo/handles;

    .line 99
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 105
    iget v0, p0, Lo/Glide;->onMessageChannelReady:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget v1, p0, Lo/Glide;->onPostMessage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-wide v1, p0, Lo/Glide;->extraCallback:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-wide v1, p0, Lo/Glide;->ICustomTabsCallback:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v1, p0, Lo/Glide;->onNavigationEvent:Ljava/lang/String;

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

    .line 115
    iget-object p2, p0, Lo/Glide;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget p2, p0, Lo/Glide;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget p2, p0, Lo/Glide;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-wide v0, p0, Lo/Glide;->extraCallback:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-wide v0, p0, Lo/Glide;->ICustomTabsCallback:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-object p2, p0, Lo/Glide;->asBinder:[Lo/handles;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object p2, p0, Lo/Glide;->asBinder:[Lo/handles;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 122
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
