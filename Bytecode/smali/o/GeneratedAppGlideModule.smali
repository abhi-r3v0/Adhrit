.class public final Lo/GeneratedAppGlideModule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/callAPI$onPostMessage;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/GeneratedAppGlideModule;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICustomTabsCallback$Stub:Lo/p$a;

.field private static final asInterface:Lo/p$a;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field private asBinder:I

.field public final extraCallback:J

.field public final onMessageChannelReady:[B

.field public final onNavigationEvent:J

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    const-string v3, "application/id3"

    .line 53
    invoke-static {v2, v3, v0, v1}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;J)Lo/p$a;

    move-result-object v3

    sput-object v3, Lo/GeneratedAppGlideModule;->ICustomTabsCallback$Stub:Lo/p$a;

    const-string v3, "application/x-scte35"

    .line 56
    invoke-static {v2, v3, v0, v1}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;J)Lo/p$a;

    move-result-object v0

    sput-object v0, Lo/GeneratedAppGlideModule;->asInterface:Lo/p$a;

    .line 187
    new-instance v0, Lo/GeneratedAppGlideModule$1;

    invoke-direct {v0}, Lo/GeneratedAppGlideModule$1;-><init>()V

    sput-object v0, Lo/GeneratedAppGlideModule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/GeneratedAppGlideModule;->extraCallback:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/GeneratedAppGlideModule;->onNavigationEvent:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lo/GeneratedAppGlideModule;->onMessageChannelReady:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    .line 96
    iput-wide p3, p0, Lo/GeneratedAppGlideModule;->extraCallback:J

    .line 97
    iput-wide p5, p0, Lo/GeneratedAppGlideModule;->onNavigationEvent:J

    .line 98
    iput-object p7, p0, Lo/GeneratedAppGlideModule;->onMessageChannelReady:[B

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/p$a;
    .locals 5

    .line 112
    iget-object v0, p0, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x578730ab

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x2f712a89

    if-eq v1, v2, :cond_1

    const v2, 0x4db418c9    # 3.776904E8f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "https://developer.apple.com/streaming/emsg-id3"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "https://aomedia.org/emsg/ID3"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "urn:scte:scte35:2014:bin"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_4
    sget-object v0, Lo/GeneratedAppGlideModule;->asInterface:Lo/p$a;

    return-object v0

    .line 115
    :cond_5
    sget-object v0, Lo/GeneratedAppGlideModule;->ICustomTabsCallback$Stub:Lo/p$a;

    return-object v0
.end method

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

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    check-cast p1, Lo/GeneratedAppGlideModule;

    .line 152
    iget-wide v2, p0, Lo/GeneratedAppGlideModule;->extraCallback:J

    iget-wide v4, p1, Lo/GeneratedAppGlideModule;->extraCallback:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lo/GeneratedAppGlideModule;->onNavigationEvent:J

    iget-wide v4, p1, Lo/GeneratedAppGlideModule;->onNavigationEvent:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    .line 154
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    iget-object v3, p1, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    .line 155
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/GeneratedAppGlideModule;->onMessageChannelReady:[B

    iget-object p1, p1, Lo/GeneratedAppGlideModule;->onMessageChannelReady:[B

    .line 156
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 131
    iget v0, p0, Lo/GeneratedAppGlideModule;->asBinder:I

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-object v2, p0, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-wide v1, p0, Lo/GeneratedAppGlideModule;->extraCallback:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-wide v1, p0, Lo/GeneratedAppGlideModule;->onNavigationEvent:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-object v1, p0, Lo/GeneratedAppGlideModule;->onMessageChannelReady:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    iput v0, p0, Lo/GeneratedAppGlideModule;->asBinder:I

    .line 140
    :cond_2
    iget v0, p0, Lo/GeneratedAppGlideModule;->asBinder:I

    return v0
.end method

.method public final onPostMessage()[B
    .locals 1

    .line 126
    invoke-virtual {p0}, Lo/GeneratedAppGlideModule;->ICustomTabsCallback()Lo/p$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GeneratedAppGlideModule;->onMessageChannelReady:[B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EMSG: scheme="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/GeneratedAppGlideModule;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/GeneratedAppGlideModule;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 180
    iget-object p2, p0, Lo/GeneratedAppGlideModule;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lo/GeneratedAppGlideModule;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-wide v0, p0, Lo/GeneratedAppGlideModule;->extraCallback:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget-wide v0, p0, Lo/GeneratedAppGlideModule;->onNavigationEvent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-object p2, p0, Lo/GeneratedAppGlideModule;->onMessageChannelReady:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
