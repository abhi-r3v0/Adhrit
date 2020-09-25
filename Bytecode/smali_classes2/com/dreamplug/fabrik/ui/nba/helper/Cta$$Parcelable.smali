.class public Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cta$$0:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable$5;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable$5;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;->cta$$0:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/nba/helper/Cta;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 77
    const-class v2, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;

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

    .line 82
    check-cast v0, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    return-object v0

    .line 80
    :cond_2
    new-instance v0, Lorg/parceler/ParcelerRuntimeException;

    const-string v1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {v0, v1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3038
    :cond_3
    sget-object v4, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    .line 3053
    iget-object v5, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v4, v1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/dreamplug/fabrik/ui/nba/helper/Flow;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lo/getTargetScrollPosition;

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 96
    new-instance v0, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/Flow;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v4, v0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {v1, v3, v0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Landroid/os/Parcel;ILo/compareLeafValues;)V
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

    add-int/lit8 p3, p3, -0x1

    .line 52
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getDeeplink()Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getFlow()Lcom/dreamplug/fabrik/ui/nba/helper/Flow;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTitle()Lo/getTargetScrollPosition;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getBorderColor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTag()Ljava/lang/String;

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

.method public getParcel()Lcom/dreamplug/fabrik/ui/nba/helper/Cta;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;->cta$$0:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;->cta$$0:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
