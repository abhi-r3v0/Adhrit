.class public Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transactionItem$$0:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable$1;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;->transactionItem$$0:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;
    .locals 14

    .line 85
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

    .line 90
    check-cast p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    return-object p0

    .line 88
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

    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 96
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 97
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 98
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v9, 0x0

    if-gez v2, :cond_4

    move-object v10, v9

    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v10, v2

    .line 106
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_5

    move-object v11, v9

    goto :goto_2

    .line 111
    :cond_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v11, v2

    .line 114
    :goto_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 115
    invoke-static {p0, p1}, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    move-result-object p0

    .line 117
    new-instance v13, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    move-object v2, v13

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, p0

    invoke-direct/range {v2 .. v12}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;-><init>(Ljava/lang/String;DJILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/currency/ClickReference;)V

    .line 118
    invoke-virtual {p1, v1, v13}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p1, v0, v13}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v13
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;Landroid/os/Parcel;ILo/compareLeafValues;)V
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
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getTxn_time()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getColorSectionPos()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getEntryType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getEntryType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getSpendType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getSpendType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getCurrencyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;->getClickReference()Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/currency/ClickReference;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;->transactionItem$$0:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;->transactionItem$$0:Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
