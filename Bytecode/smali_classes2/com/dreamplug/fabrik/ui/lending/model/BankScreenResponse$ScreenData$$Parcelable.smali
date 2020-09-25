.class public Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private screenData$$0:Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable$1;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;->screenData$$0:Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 105
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2034
    iget-object v4, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 2042
    iget-object v0, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-nez v5, :cond_2

    .line 2059
    iget-object v0, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;

    return-object v0

    .line 108
    :cond_2
    new-instance v0, Lorg/parceler/ParcelerRuntimeException;

    const-string v1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {v0, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3038
    :cond_3
    sget-object v4, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    .line 3053
    iget-object v7, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v4, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    .line 116
    invoke-static/range {p0 .. p1}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$Cta$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$Cta;

    move-result-object v9

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v10, 0x0

    if-gez v6, :cond_4

    move-object v11, v10

    goto :goto_2

    .line 123
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_5

    .line 125
    invoke-static/range {p0 .. p1}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;

    move-result-object v13

    .line 126
    invoke-virtual {v11, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 130
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gez v6, :cond_6

    move-object v12, v10

    goto :goto_4

    .line 135
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v5, v6, :cond_7

    .line 137
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 141
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gez v6, :cond_8

    move-object v13, v10

    goto :goto_5

    .line 147
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v13, v6

    .line 150
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 154
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_9

    move-object/from16 v20, v10

    goto :goto_6

    .line 161
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v20, v0

    .line 164
    :goto_6
    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;

    move-object v6, v0

    move-object v10, v11

    move-object v11, v12

    move-object v12, v5

    invoke-direct/range {v6 .. v20}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$Cta;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    invoke-virtual {v1, v4, v0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 167
    invoke-virtual {v1, v3, v0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;Landroid/os/Parcel;ILo/compareLeafValues;)V
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

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getExitIntent()Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getCta()Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$Cta;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$Cta$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$Cta;Landroid/os/Parcel;ILo/compareLeafValues;)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getExisting_accounts()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getExisting_accounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getExisting_accounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;

    .line 61
    invoke-static {v3, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ExistingAccount;Landroid/os/Parcel;ILo/compareLeafValues;)V

    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getSupported_banks()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_3

    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getSupported_banks()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getSupported_banks()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 69
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 72
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getHeader()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getId()Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_5

    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 76
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    :goto_4
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getIdentifier_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getNext_screen()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getPrevious_screen()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getSub_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getCustom()Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getVersion()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_6

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 88
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;->getVersion()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;->screenData$$0:Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;->screenData$$0:Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/lending/model/BankScreenResponse$ScreenData;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
