.class public Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;
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
        "Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private linkingData$$0:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable$5;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable$5;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;->linkingData$$0:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;
    .locals 9

    .line 91
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

    .line 96
    check-cast p0, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    return-object p0

    .line 94
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

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_4

    move-object v5, v4

    goto :goto_2

    .line 105
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_5

    .line 107
    const-class v7, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-virtual {v5, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 111
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_6

    move-object v6, v4

    goto :goto_4

    .line 116
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_7

    .line 118
    invoke-static {p0, p1}, Lcom/dreamplug/fabrik/ui/control/helper/FeaturePitch$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/helper/FeaturePitch;

    move-result-object v8

    .line 119
    invoke-virtual {v6, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 123
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_8

    goto :goto_6

    .line 128
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    if-ge v2, v3, :cond_9

    .line 130
    invoke-static {p0, p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason$$Parcelable;->read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    move-result-object v7

    .line 131
    invoke-virtual {v4, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 135
    :cond_9
    :goto_6
    new-instance p0, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    invoke-direct {p0, v5, v6, v4}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 136
    invoke-virtual {p1, v1, p0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 138
    invoke-virtual {p1, v0, p0}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static write(Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 3

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

    add-int/lit8 v0, v0, -0x1

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getCandidateInstrument()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getCandidateInstrument()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getCandidateInstrument()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 58
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getFeaturePitch()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getFeaturePitch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getFeaturePitch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/control/helper/FeaturePitch;

    .line 66
    invoke-static {v2, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/helper/FeaturePitch$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/helper/FeaturePitch;Landroid/os/Parcel;ILo/compareLeafValues;)V

    goto :goto_2

    .line 69
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getLinkingReason()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getLinkingReason()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getLinkingReason()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    .line 74
    invoke-static {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;Landroid/os/Parcel;ILo/compareLeafValues;)V

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;->linkingData$$0:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;->getParcel()Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;->linkingData$$0:Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData$$Parcelable;->write(Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
