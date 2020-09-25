.class public Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable;
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
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private rewardDetails$$0:Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable$5;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable$5;-><init>()V

    sput-object v0, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable;->rewardDetails$$0:Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;
    .locals 38

    move-object/from16 v0, p1

    .line 107
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

    .line 112
    check-cast v0, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;

    return-object v0

    .line 110
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

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_4

    const/16 v18, 0x1

    goto :goto_1

    :cond_4
    const/16 v18, 0x0

    .line 129
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v33, 0x0

    if-gez v5, :cond_5

    move-object/from16 v3, v33

    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 149
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_7

    move-object/from16 v37, v33

    goto :goto_3

    .line 157
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v37, v4

    .line 160
    :goto_3
    new-instance v4, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;

    move-object v5, v4

    move-object/from16 v33, v3

    invoke-direct/range {v5 .. v37}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 161
    invoke-virtual {v0, v2, v4}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 163
    invoke-virtual {v0, v1, v4}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v4
.end method

.method public static write(Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;Landroid/os/Parcel;ILo/compareLeafValues;)V
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
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getMerchantName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getParentCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getLogoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getBackgroundImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getFarmBackgroundImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getFarmTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getFarmDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getTemplateType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getDisplayPriority()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getNoTncCheck()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getCurrency()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getComputedMaxValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getPerceivedValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getPerceivedValueCurrency()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getStartTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getEndTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getRedemptionType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getTags()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getRewardId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getExpiryString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getShowStoreAssociations()Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getShowStoreAssociations()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getStoreAssociationSubHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getStoreAssociationHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getValueType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getIosCardAspectRatio()Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_3

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 90
    :cond_3
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;->getIosCardAspectRatio()Ljava/lang/Double;

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

.method public getParcel()Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable;->rewardDetails$$0:Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable;->getParcel()Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable;->rewardDetails$$0:Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails$$Parcelable;->write(Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
