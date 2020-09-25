.class public final Lo/getInBitmapString;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/getInBitmapString;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getInBitmapString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:I

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lo/getInBitmapString$1;

    invoke-direct {v0}, Lo/getInBitmapString$1;-><init>()V

    sput-object v0, Lo/getInBitmapString;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getInBitmapString;->ICustomTabsCallback:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getInBitmapString;->onMessageChannelReady:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/getInBitmapString;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lo/getInBitmapString;

    invoke-virtual {p0, p1}, Lo/getInBitmapString;->onMessageChannelReady(Lo/getInBitmapString;)I

    move-result p1

    return p1
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

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    check-cast p1, Lo/getInBitmapString;

    .line 79
    iget v2, p0, Lo/getInBitmapString;->ICustomTabsCallback:I

    iget v3, p1, Lo/getInBitmapString;->ICustomTabsCallback:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/getInBitmapString;->onMessageChannelReady:I

    iget v3, p1, Lo/getInBitmapString;->onMessageChannelReady:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/getInBitmapString;->onPostMessage:I

    iget p1, p1, Lo/getInBitmapString;->onPostMessage:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 86
    iget v0, p0, Lo/getInBitmapString;->ICustomTabsCallback:I

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget v1, p0, Lo/getInBitmapString;->onMessageChannelReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget v1, p0, Lo/getInBitmapString;->onPostMessage:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady(Lo/getInBitmapString;)I
    .locals 2

    .line 96
    iget v0, p0, Lo/getInBitmapString;->ICustomTabsCallback:I

    iget v1, p1, Lo/getInBitmapString;->ICustomTabsCallback:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 98
    iget v0, p0, Lo/getInBitmapString;->onMessageChannelReady:I

    iget v1, p1, Lo/getInBitmapString;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 100
    iget v0, p0, Lo/getInBitmapString;->onPostMessage:I

    iget p1, p1, Lo/getInBitmapString;->onPostMessage:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lo/getInBitmapString;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/getInBitmapString;->onMessageChannelReady:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getInBitmapString;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 115
    iget p2, p0, Lo/getInBitmapString;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p2, p0, Lo/getInBitmapString;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget p2, p0, Lo/getInBitmapString;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
