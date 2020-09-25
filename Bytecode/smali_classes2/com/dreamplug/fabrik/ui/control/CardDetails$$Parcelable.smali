.class public Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cardDetails$$0:Lcom/dreamplug/fabrik/ui/control/CardDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable$2;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable$2;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;->cardDetails$$0:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/CardDetails;
    .locals 37

    move-object/from16 v0, p1

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2034
    iget-object v2, v0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

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

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 2059
    iget-object v0, v0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    return-object v0

    .line 114
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

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v20, 0x0

    if-gez v5, :cond_4

    move-object/from16 v21, v20

    goto :goto_3

    .line 139
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v21, v5

    .line 142
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 143
    const-class v5, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v3, p0

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Lcom/dreamplug/fabrik/ui/control/Template;

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 150
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_7

    move-object/from16 v34, v20

    goto :goto_5

    .line 159
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v34, v5

    .line 162
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_8

    move-object/from16 v3, v20

    goto :goto_6

    .line 167
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 170
    :goto_6
    new-instance v5, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-object/from16 p0, v5

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move/from16 v28, v4

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v3

    invoke-direct/range {v5 .. v34}, Lcom/dreamplug/fabrik/ui/control/CardDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/Template;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    move-object/from16 v3, p0

    .line 171
    invoke-virtual {v0, v2, v3}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {v0, v1, v3}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v3
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/control/CardDetails;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 2

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
    iget-object p3, p3, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    .line 52
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getStatus()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand_logo_url()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getCardholder_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getVariant_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getCountry()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getReference_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getFingerprint()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getNfc_enabled()Ljava/lang/Boolean;

    move-result-object p3

    if-nez p3, :cond_1

    const/4 p3, -0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getNfc_enabled()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getUpdated_at()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getTemplate()Lcom/dreamplug/fabrik/ui/control/Template;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getCreated_at()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getCreated_by()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getUpdated_by()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSwipedDirection()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getShowCpi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getShowCertified()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getTemplateIdentifierName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getContext()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSortKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAmount()Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_3

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAmount()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getTransactionDate()Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_4

    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 94
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getTransactionDate()Ljava/lang/Double;

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

.method public getParcel()Lcom/dreamplug/fabrik/ui/control/CardDetails;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;->cardDetails$$0:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;->cardDetails$$0:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/CardDetails;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
