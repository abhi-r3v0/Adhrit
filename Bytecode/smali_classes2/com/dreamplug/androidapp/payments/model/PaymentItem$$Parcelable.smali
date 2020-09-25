.class public Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable;
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
        "Lcom/dreamplug/androidapp/payments/model/PaymentItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private paymentItem$$0:Lcom/dreamplug/androidapp/payments/model/PaymentItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable$1;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/androidapp/payments/model/PaymentItem;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable;->paymentItem$$0:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/payments/model/PaymentItem;
    .locals 13

    .line 90
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

    .line 95
    check-cast p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    return-object p0

    .line 93
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

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_4

    move-object v5, v3

    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v5, v2

    .line 107
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_5

    move-object v6, v3

    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v6, v2

    .line 115
    :goto_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_6

    goto :goto_3

    .line 120
    :cond_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_3
    move-object v7, v3

    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-static {p0, p1}, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v9

    .line 126
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 128
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 129
    new-instance p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, v1, p0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 132
    invoke-virtual {p1, v0, p0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static write(Lcom/dreamplug/androidapp/payments/model/PaymentItem;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 5

    .line 48
    invoke-virtual {p3, p0}, Lo/compareLeafValues;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1053
    :cond_0
    iget-object v0, p3, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object v0, p3, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getMinAmount()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getMinAmount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getTotalAmount()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getTotalAmount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 65
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getCustomAmount()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_3

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getCustomAmount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 71
    :goto_2
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;->write(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Landroid/os/Parcel;ILo/compareLeafValues;)V

    .line 73
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentDueDateWeaklyTyped()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentAmountTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getSource()Ljava/lang/String;

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

.method public getParcel()Lcom/dreamplug/androidapp/payments/model/PaymentItem;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable;->paymentItem$$0:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable;->getParcel()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable;->paymentItem$$0:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem$$Parcelable;->write(Lcom/dreamplug/androidapp/payments/model/PaymentItem;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
