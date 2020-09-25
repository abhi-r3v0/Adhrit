.class public final Lo/getEventAppExecutionSignalSize;
.super Lo/writeRawVarint32;
.source ""

# interfaces
.implements Lo/stringToByteString;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeRawVarint32<",
        "Ljava/lang/String;",
        ">;",
        "Lo/stringToByteString;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lo/getEventAppExecutionSignalSize;

    invoke-direct {v0}, Lo/getEventAppExecutionSignalSize;-><init>()V

    .line 67
    invoke-virtual {v0}, Lo/getEventAppExecutionSignalSize;->extraCallback()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 80
    invoke-direct {p0, v0}, Lo/getEventAppExecutionSignalSize;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSignalSize;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lo/writeRawVarint32;-><init>()V

    .line 97
    iput-object p1, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method private static onPostMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 275
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 277
    :cond_0
    instance-of v0, p0, Lo/SessionProtobufHelper;

    if-eqz v0, :cond_1

    .line 278
    check-cast p0, Lo/SessionProtobufHelper;

    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onNavigationEvent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 280
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lo/getEventLogSize;->extraCallback([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;
    .locals 1

    .line 3102
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 3105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3106
    iget-object p1, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3107
    new-instance p1, Lo/getEventAppExecutionSignalSize;

    invoke-direct {p1, v0}, Lo/getEventAppExecutionSignalSize;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 3103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final ICustomTabsCallback()Lo/stringToByteString;
    .locals 1

    .line 1061
    invoke-super {p0}, Lo/writeRawVarint32;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    new-instance v0, Lo/CompositeCreateReportSpiCall;

    invoke-direct {v0, p0}, Lo/CompositeCreateReportSpiCall;-><init>(Lo/stringToByteString;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 2146
    invoke-virtual {p0}, Lo/getEventAppExecutionSignalSize;->onMessageChannelReady()V

    .line 2147
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2148
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lo/getEventAppExecutionSignalSize;->onMessageChannelReady()V

    .line 177
    instance-of v0, p2, Lo/stringToByteString;

    if-eqz v0, :cond_0

    check-cast p2, Lo/stringToByteString;

    .line 178
    invoke-interface {p2}, Lo/stringToByteString;->onNavigationEvent()Ljava/util/List;

    move-result-object p2

    .line 179
    :cond_0
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 180
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lo/getEventAppExecutionSignalSize;->onMessageChannelReady()V

    .line 211
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lo/writeRawVarint32;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final extraCallback(I)Ljava/lang/Object;
    .locals 1

    .line 231
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 3112
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3113
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3114
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3115
    :cond_0
    instance-of v1, v0, Lo/SessionProtobufHelper;

    if-eqz v1, :cond_2

    .line 3116
    check-cast v0, Lo/SessionProtobufHelper;

    .line 3117
    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    .line 3118
    invoke-virtual {v0}, Lo/SessionProtobufHelper;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3119
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 3123
    :cond_2
    check-cast v0, [B

    .line 3124
    invoke-static {v0}, Lo/getEventLogSize;->extraCallback([B)Ljava/lang/String;

    move-result-object v1

    .line 3125
    invoke-static {v0}, Lo/getEventLogSize;->ICustomTabsCallback([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3126
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .line 61
    invoke-super {p0}, Lo/writeRawVarint32;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/SessionProtobufHelper;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lo/getEventAppExecutionSignalSize;->onMessageChannelReady()V

    .line 218
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic onPostMessage()Z
    .locals 1

    .line 61
    invoke-super {p0}, Lo/writeRawVarint32;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .line 1202
    invoke-virtual {p0}, Lo/getEventAppExecutionSignalSize;->onMessageChannelReady()V

    .line 1203
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 1204
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 1205
    invoke-static {p1}, Lo/getEventAppExecutionSignalSize;->onPostMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lo/writeRawVarint32;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lo/writeRawVarint32;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lo/writeRawVarint32;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 1139
    invoke-virtual {p0}, Lo/getEventAppExecutionSignalSize;->onMessageChannelReady()V

    .line 1140
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1141
    invoke-static {p1}, Lo/getEventAppExecutionSignalSize;->onPostMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 134
    iget-object v0, p0, Lo/getEventAppExecutionSignalSize;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
