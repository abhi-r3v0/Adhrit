.class public Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/currency/ClickReference;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clickReference$$0:Lcom/dreamplug/fabrik/ui/currency/ClickReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable$2;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable$2;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/currency/ClickReference;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;->clickReference$$0:Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/currency/ClickReference;
    .locals 9

    .line 81
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

    .line 86
    check-cast p0, Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    return-object p0

    .line 84
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

    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_4

    const/4 p0, 0x0

    goto :goto_3

    .line 97
    :cond_4
    new-instance v6, Ljava/util/HashMap;

    if-ltz v5, :cond_8

    const/4 v7, 0x3

    if-ge v5, v7, :cond_5

    add-int/lit8 v7, v5, 0x1

    goto :goto_1

    :cond_5
    const/high16 v7, 0x40000000    # 2.0f

    if-ge v5, v7, :cond_6

    int-to-float v7, v5

    const/high16 v8, 0x3f400000    # 0.75f

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_1

    :cond_6
    const v7, 0x7fffffff

    :goto_1
    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    :goto_2
    if-ge v2, v5, :cond_7

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 101
    invoke-virtual {v6, v7, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move-object p0, v6

    .line 105
    :goto_3
    new-instance v2, Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    invoke-direct {v2, v3, v4, p0}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    invoke-virtual {p1, v1, v2}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 108
    invoke-virtual {p1, v0, v2}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v2

    .line 4042
    :cond_8
    new-instance p0, Lorg/parceler/ParcelerRuntimeException;

    const-string p1, "Expected size must be non-negative"

    invoke-direct {p0, p1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/currency/ClickReference;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 1

    .line 51
    invoke-virtual {p3, p0}, Lo/compareLeafValues;->onNavigationEvent(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 53
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

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;->getUsageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;->getMeta()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_1

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;->getMeta()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/currency/ClickReference;->getMeta()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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

.method public getParcel()Lcom/dreamplug/fabrik/ui/currency/ClickReference;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;->clickReference$$0:Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;->clickReference$$0:Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/currency/ClickReference$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/currency/ClickReference;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
