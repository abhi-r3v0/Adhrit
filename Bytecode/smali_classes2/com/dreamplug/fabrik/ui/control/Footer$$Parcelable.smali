.class public Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/control/Footer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private footer$$0:Lcom/dreamplug/fabrik/ui/control/Footer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable$1;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable$1;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/Footer;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;->footer$$0:Lcom/dreamplug/fabrik/ui/control/Footer;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/Footer;
    .locals 6

    .line 71
    const-class v0, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2034
    iget-object v2, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

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
    iget-object p0, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    .line 2059
    iget-object p0, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 76
    check-cast p0, Lcom/dreamplug/fabrik/ui/control/Footer;

    return-object p0

    .line 74
    :cond_2
    new-instance p0, Lorg/parceler/ParcelerRuntimeException;

    const-string p1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {p0, p1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3038
    :cond_3
    sget-object v2, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    .line 3053
    iget-object v3, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v2, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lo/getTargetScrollPosition;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lo/getTargetScrollPosition;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lo/getTargetScrollPosition;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    .line 84
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/Footer;

    invoke-direct {v0, v3, v4, v5, p0}, Lcom/dreamplug/fabrik/ui/control/Footer;-><init>(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V

    .line 85
    invoke-virtual {p1, v2, v0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 87
    invoke-virtual {p1, v1, v0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/control/Footer;Landroid/os/Parcel;ILo/compareLeafValues;)V
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
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/Footer;->getText1()Lo/getTargetScrollPosition;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/Footer;->getText2()Lo/getTargetScrollPosition;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/Footer;->getText3()Lo/getTargetScrollPosition;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/Footer;->getCta1()Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/fabrik/ui/control/Footer;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;->footer$$0:Lcom/dreamplug/fabrik/ui/control/Footer;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/control/Footer;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;->footer$$0:Lcom/dreamplug/fabrik/ui/control/Footer;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/control/Footer$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/Footer;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
