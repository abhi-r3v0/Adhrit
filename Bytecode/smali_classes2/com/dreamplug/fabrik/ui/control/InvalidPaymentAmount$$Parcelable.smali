.class public Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Lo/getMinName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lo/getMinName<",
        "Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private invalidPaymentAmount$$0:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable$1;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable;->invalidPaymentAmount$$0:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;
    .locals 9

    .line 89
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2034
    iget-object v1, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 2042
    iget-object p0, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 2059
    iget-object p0, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 94
    check-cast p0, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    return-object p0

    .line 92
    :cond_2
    new-instance p0, Lorg/parceler/ParcelerRuntimeException;

    const-string p1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {p0, p1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3038
    :cond_3
    sget-object v1, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    .line 3053
    iget-object v4, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v1, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .line 98
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-gez v4, :cond_4

    move-object v6, v5

    goto :goto_3

    .line 104
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v4, :cond_6

    .line 106
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-gez v7, :cond_5

    move-object v7, v5

    goto :goto_2

    .line 111
    :cond_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 113
    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_7

    goto :goto_4

    .line 122
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 125
    :goto_4
    new-instance p0, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    invoke-direct {p0, v3, v6, v5}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;)V

    .line 126
    invoke-virtual {p1, v1, p0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 128
    invoke-virtual {p1, v0, p0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 3

    .line 50
    invoke-virtual {p3, p0}, Lo/compareLeafValues;->onNavigationEvent(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1053
    :cond_0
    iget-object p2, p3, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object p2, p3, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getValue()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getValue()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getValue()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-nez v1, :cond_2

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMinInvalidPaymentAmount()Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_4

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 72
    :cond_4
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMinInvalidPaymentAmount()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable;->invalidPaymentAmount$$0:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable;->invalidPaymentAmount$$0:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
