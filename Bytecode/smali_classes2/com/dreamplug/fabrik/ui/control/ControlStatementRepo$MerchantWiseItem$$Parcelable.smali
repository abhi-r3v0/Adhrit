.class public Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private merchantWiseItem$$0:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable$3;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable$3;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable;->merchantWiseItem$$0:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;
    .locals 12

    .line 80
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

    .line 85
    check-cast p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;

    return-object p0

    .line 83
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

    .line 89
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    .line 94
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_5

    const/4 p0, 0x0

    move-object v11, p0

    goto :goto_3

    .line 99
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v2, v3, :cond_6

    .line 101
    invoke-static {p0, p1}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    move-result-object v11

    .line 102
    invoke-virtual {v4, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move-object v11, v4

    .line 106
    :goto_3
    new-instance p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;-><init>(Ljava/lang/String;IDLjava/lang/String;ZLjava/util/ArrayList;)V

    .line 107
    invoke-virtual {p1, v1, p0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 109
    invoke-virtual {p1, v0, p0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;Landroid/os/Parcel;ILo/compareLeafValues;)V
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
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;->getValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;->getCategorised()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;->getListTransaction()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;->getListTransaction()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;->getListTransaction()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    .line 63
    invoke-static {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;Landroid/os/Parcel;ILo/compareLeafValues;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable;->merchantWiseItem$$0:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable;->merchantWiseItem$$0:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$MerchantWiseItem;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
