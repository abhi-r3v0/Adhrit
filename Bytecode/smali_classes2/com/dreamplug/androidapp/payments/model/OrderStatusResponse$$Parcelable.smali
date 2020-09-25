.class public Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable;
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
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private orderStatusResponse$$0:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable$4;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable$4;-><init>()V

    sput-object v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable;->orderStatusResponse$$0:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;
    .locals 17

    move-object/from16 v0, p1

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2034
    iget-object v2, v0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 2042
    iget-object v2, v0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    if-ne v2, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    .line 2059
    iget-object v0, v0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 96
    check-cast v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    return-object v0

    .line 94
    :cond_2
    new-instance v0, Lorg/parceler/ParcelerRuntimeException;

    const-string v1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {v0, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3038
    :cond_3
    sget-object v2, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    .line 3053
    iget-object v5, v0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v2, v0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v12, 0x0

    if-gez v4, :cond_4

    move-object v13, v12

    goto :goto_2

    .line 111
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_5

    .line 113
    invoke-static/range {p0 .. p1}, Lcom/dreamplug/androidapp/payments/model/OrderItem$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/payments/model/OrderItem;

    move-result-object v15

    .line 114
    invoke-virtual {v13, v15}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 118
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_7

    :cond_6
    move-object v3, v12

    goto :goto_4

    .line 123
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v3, v4, :cond_6

    .line 125
    invoke-static/range {p0 .. p1}, Lcom/dreamplug/androidapp/payments/model/OrderPayment$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    move-result-object v14

    .line 126
    invoke-virtual {v12, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 130
    :goto_4
    invoke-static/range {p0 .. p1}, Lcom/dreamplug/androidapp/payments/model/OrderAttributes$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    move-result-object v14

    .line 132
    invoke-static/range {p0 .. p1}, Lcom/dreamplug/androidapp/payments/model/RefundAccount$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    move-result-object v15

    .line 134
    new-instance v12, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-object v4, v12

    move/from16 v16, v1

    move-object v1, v12

    move-object v12, v13

    move-object v13, v3

    invoke-direct/range {v4 .. v15}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/payments/model/OrderAttributes;Lcom/dreamplug/androidapp/payments/model/RefundAccount;)V

    .line 135
    invoke-virtual {v0, v2, v1}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    move/from16 v2, v16

    .line 137
    invoke-virtual {v0, v2, v1}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v1
.end method

.method public static write(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 4

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

    add-int/lit8 v0, v0, -0x1

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getReference_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getUser_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getAmount()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getEnd_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/androidapp/payments/model/OrderItem;

    .line 64
    invoke-static {v2, p1, p2, p3}, Lcom/dreamplug/androidapp/payments/model/OrderItem$$Parcelable;->write(Lcom/dreamplug/androidapp/payments/model/OrderItem;Landroid/os/Parcel;ILo/compareLeafValues;)V

    goto :goto_0

    .line 67
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    .line 72
    invoke-static {v1, p1, p2, p3}, Lcom/dreamplug/androidapp/payments/model/OrderPayment$$Parcelable;->write(Lcom/dreamplug/androidapp/payments/model/OrderPayment;Landroid/os/Parcel;ILo/compareLeafValues;)V

    goto :goto_2

    .line 75
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getAttributes()Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/payments/model/OrderAttributes$$Parcelable;->write(Lcom/dreamplug/androidapp/payments/model/OrderAttributes;Landroid/os/Parcel;ILo/compareLeafValues;)V

    .line 76
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getRefundAccount()Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/payments/model/RefundAccount$$Parcelable;->write(Lcom/dreamplug/androidapp/payments/model/RefundAccount;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable;->orderStatusResponse$$0:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable;->getParcel()Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable;->orderStatusResponse$$0:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse$$Parcelable;->write(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
