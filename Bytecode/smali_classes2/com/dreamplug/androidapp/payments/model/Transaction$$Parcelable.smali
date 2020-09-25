.class public Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable;
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
        "Lcom/dreamplug/androidapp/payments/model/Transaction;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transaction$$0:Lcom/dreamplug/androidapp/payments/model/Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable$2;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable$2;-><init>()V

    sput-object v0, Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/androidapp/payments/model/Transaction;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable;->transaction$$0:Lcom/dreamplug/androidapp/payments/model/Transaction;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/payments/model/Transaction;
    .locals 11

    .line 84
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

    .line 89
    check-cast p0, Lcom/dreamplug/androidapp/payments/model/Transaction;

    return-object p0

    .line 87
    :cond_2
    new-instance p0, Lorg/parceler/ParcelerRuntimeException;

    const-string p1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {p0, p1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3038
    :cond_3
    sget-object v1, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    .line 3053
    iget-object v2, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v1, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v7, 0x0

    if-gez v2, :cond_4

    move-object v8, v7

    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v8, v2

    .line 105
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_5

    move-object v9, v7

    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v9, v2

    .line 113
    :goto_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance v10, Lcom/dreamplug/androidapp/payments/model/Transaction;

    move-object v2, v10

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/dreamplug/androidapp/payments/model/Transaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v1, v10}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 117
    invoke-virtual {p1, v0, v10}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v10
.end method

.method public static write(Lcom/dreamplug/androidapp/payments/model/Transaction;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 3

    .line 48
    invoke-virtual {p3, p0}, Lo/compareLeafValues;->onNavigationEvent(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 50
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

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getReference_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getPaymentMethodType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getAmount()Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_1

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getAmount()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getAmount_refunded()Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_2

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getAmount_refunded()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction;->getPaymentMethod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/androidapp/payments/model/Transaction;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable;->transaction$$0:Lcom/dreamplug/androidapp/payments/model/Transaction;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable;->getParcel()Lcom/dreamplug/androidapp/payments/model/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable;->transaction$$0:Lcom/dreamplug/androidapp/payments/model/Transaction;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/androidapp/payments/model/Transaction$$Parcelable;->write(Lcom/dreamplug/androidapp/payments/model/Transaction;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
