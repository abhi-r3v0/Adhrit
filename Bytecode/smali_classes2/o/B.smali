.class Lo/B;
.super Ljava/util/AbstractMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile asBinder:Lo/finish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/finish;"
        }
    .end annotation
.end field

.field private volatile extraCallback:Lo/aA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/aA;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/az;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:I

.field private onPostMessage:Z

.field private onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput p1, p0, Lo/B;->onNavigationEvent:I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/B;->onTransact:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ILo/freshchatOnClickProxy;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lo/B;-><init>(I)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/B;I)Ljava/lang/Object;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lo/B;->onNavigationEvent(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/B;)Ljava/util/Map;
    .locals 0

    .line 136
    iget-object p0, p0, Lo/B;->onTransact:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/B;)Ljava/util/Map;
    .locals 0

    .line 134
    iget-object p0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/B;)Ljava/util/List;
    .locals 0

    .line 133
    iget-object p0, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    return-object p0
.end method

.method static onMessageChannelReady(I)Lo/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lo/at<",
            "TFieldDescriptorType;>;>(I)",
            "Lo/B<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo/freshchatOnClickProxy;

    invoke-direct {v0, p0}, Lo/freshchatOnClickProxy;-><init>(I)V

    return-object v0
.end method

.method private final onNavigationEvent(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lo/B;->onTransact()V

    .line 65
    iget-object v0, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/az;

    invoke-virtual {p1}, Lo/az;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lo/B;->onRelationshipValidationResult()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    new-instance v2, Lo/az;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lo/az;-><init>(Lo/B;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object p1
.end method

.method private final onPostMessage(Ljava/lang/Comparable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 74
    iget-object v1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/az;

    invoke-virtual {v1}, Lo/az;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    return p1

    :cond_0
    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_4

    add-int v2, v1, v0

    .line 80
    div-int/lit8 v2, v2, 0x2

    .line 81
    iget-object v3, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/az;

    invoke-virtual {v3}, Lo/az;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method static synthetic onPostMessage(Lo/B;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lo/B;->onTransact()V

    return-void
.end method

.method private final onRelationshipValidationResult()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lo/B;->onTransact()V

    .line 98
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    .line 100
    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lo/B;->onTransact:Ljava/util/Map;

    .line 101
    :cond_0
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private final onTransact()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lo/B;->onPostMessage:Z

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lo/B;->onTransact()V

    .line 35
    invoke-direct {p0, p1}, Lo/B;->onPostMessage(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 37
    iget-object p1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/az;

    invoke-virtual {p1, p2}, Lo/az;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-direct {p0}, Lo/B;->onTransact()V

    .line 40
    iget-object v1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lo/B;->onNavigationEvent:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 43
    iget v1, p0, Lo/B;->onNavigationEvent:I

    if-lt v0, v1, :cond_2

    .line 44
    invoke-direct {p0}, Lo/B;->onRelationshipValidationResult()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_2
    iget-object v1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lo/B;->onNavigationEvent:I

    if-ne v1, v2, :cond_3

    .line 46
    iget-object v1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/az;

    .line 47
    invoke-direct {p0}, Lo/B;->onRelationshipValidationResult()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lo/az;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {v1}, Lo/az;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_3
    iget-object v1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    new-instance v2, Lo/az;

    invoke-direct {v2, p0, p1, p2}, Lo/az;-><init>(Lo/B;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ICustomTabsCallback(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public ICustomTabsCallback()V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lo/B;->onPostMessage:Z

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    .line 14
    iget-object v0, p0, Lo/B;->onTransact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lo/B;->onTransact:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/B;->onTransact:Ljava/util/Map;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lo/B;->onPostMessage:Z

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lo/B;->onTransact()V

    .line 51
    iget-object v0, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    :cond_0
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    check-cast p1, Ljava/lang/Comparable;

    .line 28
    invoke-direct {p0, p1}, Lo/B;->onPostMessage(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lo/B;->extraCallback:Lo/aA;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lo/aA;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/aA;-><init>(Lo/B;Lo/freshchatOnClickProxy;)V

    iput-object v0, p0, Lo/B;->extraCallback:Lo/aA;

    .line 90
    :cond_0
    iget-object v0, p0, Lo/B;->extraCallback:Lo/aA;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lo/B;

    if-nez v1, :cond_1

    .line 105
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 106
    :cond_1
    check-cast p1, Lo/B;

    .line 107
    invoke-virtual {p0}, Lo/B;->size()I

    move-result v1

    .line 108
    invoke-virtual {p1}, Lo/B;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 110
    :cond_2
    invoke-virtual {p0}, Lo/B;->onNavigationEvent()I

    move-result v2

    .line 111
    invoke-virtual {p1}, Lo/B;->onNavigationEvent()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 112
    invoke-virtual {p0}, Lo/B;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lo/B;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    .line 114
    invoke-virtual {p0, v4}, Lo/B;->ICustomTabsCallback(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lo/B;->ICustomTabsCallback(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, v1, :cond_6

    .line 118
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    iget-object p1, p1, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method public final extraCallback()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lo/ay;->extraCallback()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 29
    check-cast p1, Ljava/lang/Comparable;

    .line 30
    invoke-direct {p0, p1}, Lo/B;->onPostMessage(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 32
    iget-object p1, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/az;

    invoke-virtual {p1}, Lo/az;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 121
    invoke-virtual {p0}, Lo/B;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 123
    iget-object v3, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/az;

    invoke-virtual {v3}, Lo/az;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 128
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    return v2
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/B;->onPostMessage:Z

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 20
    iget-object v0, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final onPostMessage()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lo/B;->asBinder:Lo/finish;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lo/finish;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/finish;-><init>(Lo/B;Lo/freshchatOnClickProxy;)V

    iput-object v0, p0, Lo/B;->asBinder:Lo/finish;

    .line 93
    :cond_0
    iget-object v0, p0, Lo/B;->asBinder:Lo/finish;

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lo/B;->ICustomTabsCallback(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lo/B;->onTransact()V

    .line 57
    check-cast p1, Ljava/lang/Comparable;

    .line 58
    invoke-direct {p0, p1}, Lo/B;->onPostMessage(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lo/B;->onNavigationEvent(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_1
    iget-object v0, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 26
    iget-object v0, p0, Lo/B;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/B;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
