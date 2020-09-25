.class public final Lo/CardCtaItem$$Parcelable;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/CardCtaItem$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/ControlPayment$$Parcelable;

    invoke-direct {v0}, Lo/ControlPayment$$Parcelable;-><init>()V

    sput-object v0, Lo/CardCtaItem$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput p1, p0, Lo/CardCtaItem$$Parcelable;->onPostMessage:I

    .line 3
    iput-object p2, p0, Lo/CardCtaItem$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 8
    instance-of v2, p1, Lo/CardCtaItem$$Parcelable;

    if-nez v2, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    check-cast p1, Lo/CardCtaItem$$Parcelable;

    .line 11
    iget v2, p1, Lo/CardCtaItem$$Parcelable;->onPostMessage:I

    iget v3, p0, Lo/CardCtaItem$$Parcelable;->onPostMessage:I

    if-ne v2, v3, :cond_4

    iget-object p1, p1, Lo/CardCtaItem$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/CardCtaItem$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_2

    .line 1001
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lo/CardCtaItem$$Parcelable;->onPostMessage:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 12
    iget v0, p0, Lo/CardCtaItem$$Parcelable;->onPostMessage:I

    iget-object v1, p0, Lo/CardCtaItem$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 15
    iget v1, p0, Lo/CardCtaItem$$Parcelable;->onPostMessage:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 2039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object v1, p0, Lo/CardCtaItem$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 4013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
