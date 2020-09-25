.class public Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private existingAccount$$0:Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable$4;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable$4;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;->existingAccount$$0:Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;
    .locals 19

    move-object/from16 v0, p1

    .line 90
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

    .line 95
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;

    return-object v0

    .line 93
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

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_4

    const/4 v3, 0x0

    move-object v11, v3

    goto :goto_2

    .line 110
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v3, v4, :cond_5

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 123
    new-instance v3, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;

    move-object v4, v3

    invoke-direct/range {v4 .. v18}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v2, v3}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {v0, v1, v3}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v3
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 1

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

    add-int/lit8 p2, p2, -0x1

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getAccount_reference()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getAccount_number()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getAccount_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getExternal_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getIfsc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getInstrument_capabilities()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getInstrument_capabilities()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getInstrument_capabilities()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 66
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getInstrument_source_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getInstrument_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getIssuer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getIssuer_code()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getLending_verification_status()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;->getUser_id()Ljava/lang/String;

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

.method public getParcel()Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;->existingAccount$$0:Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;->existingAccount$$0:Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
