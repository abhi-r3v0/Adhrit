.class public Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private swipeActionProperties$$0:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable$1;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;->swipeActionProperties$$0:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;
    .locals 6

    .line 77
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

    .line 82
    check-cast p0, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    return-object p0

    .line 80
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

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    .line 91
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v3, :cond_5

    .line 93
    const-class v5, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object p0, v4

    .line 97
    :goto_2
    new-instance v2, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    invoke-direct {v2, p0}, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;-><init>(Ljava/util/List;)V

    .line 98
    invoke-virtual {p1, v1, v2}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 100
    invoke-virtual {p1, v0, v2}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v2
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 2

    .line 50
    invoke-virtual {p3, p0}, Lo/compareLeafValues;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
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

    .line 54
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;->getCtas()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_1

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;->getCtas()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;->getCtas()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 60
    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

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

.method public getParcel()Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;->swipeActionProperties$$0:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;->swipeActionProperties$$0:Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/SwipeActionProperties;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
