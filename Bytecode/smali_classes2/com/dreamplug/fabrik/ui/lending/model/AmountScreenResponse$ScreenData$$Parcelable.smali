.class public Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private screenData$$0:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable$2;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable$2;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;->screenData$$0:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 158
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2034
    iget-object v4, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

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

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    .line 2059
    iget-object v0, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 163
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    return-object v0

    .line 161
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

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-gez v7, :cond_4

    const/4 v10, 0x0

    goto :goto_3

    .line 172
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v10, v6

    .line 175
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 176
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gez v6, :cond_6

    const/4 v14, 0x0

    goto :goto_4

    .line 183
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v14, v6

    .line 186
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gez v6, :cond_7

    const/16 v16, 0x0

    goto :goto_5

    .line 192
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v16, v6

    .line 195
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gez v6, :cond_8

    const/4 v7, 0x0

    goto :goto_7

    .line 201
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v6, :cond_9

    .line 203
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/lending/model/Experiments;

    invoke-virtual {v7, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 207
    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_a

    const/4 v6, 0x0

    goto :goto_9

    .line 216
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v5, :cond_b

    .line 218
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-virtual {v6, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 222
    :cond_b
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_c

    const/16 v24, 0x0

    goto :goto_a

    .line 227
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v24, v5

    .line 230
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_d

    const/16 v25, 0x0

    goto :goto_b

    .line 235
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v25, v5

    .line 238
    :goto_b
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_e

    const/16 v27, 0x0

    goto :goto_c

    .line 244
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v27, v2

    .line 247
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_f

    const/16 v28, 0x0

    goto :goto_d

    .line 252
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v28, v2

    .line 255
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_10

    const/16 v29, 0x0

    goto :goto_e

    .line 260
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v29, v2

    .line 263
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_11

    const/16 v30, 0x0

    goto :goto_10

    .line 268
    :cond_11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v2, :cond_12

    .line 270
    invoke-static/range {p0 .. p1}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;

    move-result-object v9

    .line 271
    invoke-virtual {v5, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_12
    move-object/from16 v30, v5

    .line 275
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_13

    const/16 v31, 0x0

    goto :goto_12

    .line 280
    :cond_13
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v2, :cond_14

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_14
    move-object/from16 v31, v8

    .line 286
    :goto_12
    invoke-static/range {p0 .. p1}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    move-result-object v32

    .line 288
    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    move-object v9, v0

    move-object/from16 v18, v7

    move-object/from16 v23, v6

    invoke-direct/range {v9 .. v32}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;)V

    .line 289
    invoke-virtual {v1, v4, v0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 291
    invoke-virtual {v1, v3, v0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;Landroid/os/Parcel;ILo/compareLeafValues;)V
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
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getShowKyc()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getShowKyc()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getExitIntent()Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getLoc_instrument_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getInterest_rate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_4

    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getInterest_rate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 75
    :goto_2
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getIdentifier_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getExperiments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getExperiments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getExperiments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/Experiments;

    .line 81
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_3

    .line 84
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getNext_screen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getPrevious_screen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getSub_title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getBottom_cta()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    .line 89
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 91
    :cond_7
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getBottom_cta()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getBottom_cta()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    .line 93
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_5

    .line 96
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_9

    .line 97
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 99
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_7
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getMin_limit()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_a

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 105
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getMin_limit()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 108
    :goto_8
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getInterestInfo()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 109
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getMax_limit()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_b

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 112
    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getMax_limit()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 115
    :goto_9
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getDefault_value()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_c

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 118
    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getDefault_value()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 121
    :goto_a
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getNo_of_breaks_in_amount()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_d

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 124
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getNo_of_breaks_in_amount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    :goto_b
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getProgressiveDial()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 130
    :cond_e
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getProgressiveDial()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getProgressiveDial()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;

    .line 132
    invoke-static {v2, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;Landroid/os/Parcel;ILo/compareLeafValues;)V

    goto :goto_c

    .line 135
    :cond_f
    :goto_d
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getCollapsed()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 138
    :cond_10
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getCollapsed()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getCollapsed()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_e

    .line 143
    :cond_11
    :goto_f
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getCenter()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;->screenData$$0:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;->screenData$$0:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
