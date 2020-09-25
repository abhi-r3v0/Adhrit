.class public final Lo/callAPI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/callAPI$onPostMessage;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/callAPI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:[Lo/callAPI$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lo/callAPI$3;

    invoke-direct {v0}, Lo/callAPI$3;-><init>()V

    sput-object v0, Lo/callAPI;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lo/callAPI$onPostMessage;

    iput-object v0, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 78
    const-class v2, Lo/callAPI$onPostMessage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lo/callAPI$onPostMessage;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/callAPI$onPostMessage;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lo/callAPI$onPostMessage;

    iput-object v0, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    .line 69
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lo/callAPI$onPostMessage;

    .line 71
    iput-object p1, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    return-void
.end method

.method public varargs constructor <init>([Lo/callAPI$onPostMessage;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lo/callAPI$onPostMessage;

    .line 60
    :cond_0
    iput-object p1, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 86
    iget-object v0, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    array-length v0, v0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    check-cast p1, Lo/callAPI;

    .line 135
    iget-object v0, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    iget-object p1, p1, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final varargs extraCallback([Lo/callAPI$onPostMessage;)Lo/callAPI;
    .locals 4

    .line 121
    iget-object v0, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/callAPI$onPostMessage;

    .line 122
    iget-object v1, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    new-instance p1, Lo/callAPI;

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/callAPI$onPostMessage;

    invoke-direct {p1, v0}, Lo/callAPI;-><init>([Lo/callAPI$onPostMessage;)V

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 140
    iget-object v0, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Lo/callAPI;)Lo/callAPI;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 111
    :cond_0
    iget-object p1, p1, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    invoke-virtual {p0, p1}, Lo/callAPI;->extraCallback([Lo/callAPI$onPostMessage;)Lo/callAPI;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(I)Lo/callAPI$onPostMessage;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entries="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 157
    iget-object p2, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object p2, p0, Lo/callAPI;->onMessageChannelReady:[Lo/callAPI$onPostMessage;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 159
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
