.class Lo/Report$Type;
.super Ljava/util/AbstractMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Report$Type$onNavigationEvent;,
        Lo/Report$Type$extraCallback;,
        Lo/Report$Type$onMessageChannelReady;,
        Lo/Report$Type$ICustomTabsCallback;,
        Lo/Report$Type$asBinder;,
        Lo/Report$Type$onPostMessage;
    }
.end annotation

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
.field ICustomTabsCallback:Z

.field private volatile asBinder:Lo/Report$Type$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Report$Type<",
            "TK;TV;>.asBinder;"
        }
    .end annotation
.end field

.field private final asInterface:I

.field extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Report$Type<",
            "TK;TV;>.onPostMessage;>;"
        }
    .end annotation
.end field

.field volatile onPostMessage:Lo/Report$Type$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Report$Type<",
            "TK;TV;>.ICustomTabsCallback;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 147
    iput p1, p0, Lo/Report$Type;->asInterface:I

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/Report$Type;->extraCallback:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lo/Report$Type;-><init>(I)V

    return-void
.end method

.method private extraCallback(Ljava/lang/Comparable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 322
    iget-object v1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Report$Type$onPostMessage;

    .line 4415
    iget-object v1, v1, Lo/Report$Type$onPostMessage;->onPostMessage:Ljava/lang/Comparable;

    .line 322
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

    .line 331
    div-int/lit8 v2, v2, 0x2

    .line 332
    iget-object v3, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Report$Type$onPostMessage;

    .line 5415
    iget-object v3, v3, Lo/Report$Type$onPostMessage;->onPostMessage:Ljava/lang/Comparable;

    .line 332
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

.method private extraCallback()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6368
    iget-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 382
    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lo/Report$Type;->extraCallback:Ljava/util/Map;

    .line 384
    :cond_0
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0

    .line 6369
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private onNavigationEvent()V
    .locals 2

    .line 7368
    iget-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lo/Report$Type;->asInterface:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    :cond_0
    return-void

    .line 7369
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public ICustomTabsCallback()V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 161
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 164
    iget-object v0, p0, Lo/Report$Type;->extraCallback:Ljava/util/Map;

    .line 165
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/Report$Type;->extraCallback:Ljava/util/Map;

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/Report$Type;->extraCallback:Ljava/util/Map;

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 2368
    iget-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    :cond_0
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void

    .line 2369
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 218
    check-cast p1, Ljava/lang/Comparable;

    .line 219
    invoke-direct {p0, p1}, Lo/Report$Type;->extraCallback(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

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

    .line 353
    iget-object v0, p0, Lo/Report$Type;->asBinder:Lo/Report$Type$asBinder;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lo/Report$Type$asBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/Report$Type$asBinder;-><init>(Lo/Report$Type;B)V

    iput-object v0, p0, Lo/Report$Type;->asBinder:Lo/Report$Type$asBinder;

    .line 356
    :cond_0
    iget-object v0, p0, Lo/Report$Type;->asBinder:Lo/Report$Type$asBinder;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 670
    :cond_0
    instance-of v1, p1, Lo/Report$Type;

    if-nez v1, :cond_1

    .line 671
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 674
    :cond_1
    check-cast p1, Lo/Report$Type;

    .line 675
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v1

    .line 676
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 8179
    :cond_2
    iget-object v2, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 9179
    iget-object v4, p1, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 683
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    .line 9184
    iget-object v5, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 10184
    iget-object v6, p1, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, v1, :cond_6

    .line 693
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    iget-object p1, p1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    return v0
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

    .line 230
    check-cast p1, Ljava/lang/Comparable;

    .line 231
    invoke-direct {p0, p1}, Lo/Report$Type;->extraCallback(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 233
    iget-object p1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Report$Type$onPostMessage;

    invoke-virtual {p1}, Lo/Report$Type$onPostMessage;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 235
    :cond_0
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 11179
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 704
    iget-object v3, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Report$Type$onPostMessage;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11189
    :cond_0
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 708
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    return v2
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 179
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1368
    iget-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_3

    .line 241
    invoke-direct {p0, p1}, Lo/Report$Type;->extraCallback(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 244
    iget-object p1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Report$Type$onPostMessage;

    invoke-virtual {p1, p2}, Lo/Report$Type$onPostMessage;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 246
    :cond_0
    invoke-direct {p0}, Lo/Report$Type;->onNavigationEvent()V

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 248
    iget v1, p0, Lo/Report$Type;->asInterface:I

    if-lt v0, v1, :cond_1

    .line 250
    invoke-direct {p0}, Lo/Report$Type;->extraCallback()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    iget-object v1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lo/Report$Type;->asInterface:I

    if-ne v1, v2, :cond_2

    .line 255
    iget-object v1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Report$Type$onPostMessage;

    .line 256
    invoke-direct {p0}, Lo/Report$Type;->extraCallback()Ljava/util/SortedMap;

    move-result-object v2

    .line 1415
    iget-object v3, v1, Lo/Report$Type$onPostMessage;->onPostMessage:Ljava/lang/Comparable;

    .line 256
    invoke-virtual {v1}, Lo/Report$Type$onPostMessage;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_2
    iget-object v1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    new-instance v2, Lo/Report$Type$onPostMessage;

    invoke-direct {v2, p0, p1, p2}, Lo/Report$Type$onPostMessage;-><init>(Lo/Report$Type;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 1369
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onPostMessage()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lo/Report$Type$onNavigationEvent;->onPostMessage()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 196
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final onPostMessage(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 4368
    iget-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Report$Type$onPostMessage;

    invoke-virtual {p1}, Lo/Report$Type$onPostMessage;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 299
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0}, Lo/Report$Type;->extraCallback()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    new-instance v2, Lo/Report$Type$onPostMessage;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lo/Report$Type$onPostMessage;-><init>(Lo/Report$Type;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object p1

    .line 4369
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lo/Report$Type;->onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 3368
    iget-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_2

    .line 282
    check-cast p1, Ljava/lang/Comparable;

    .line 283
    invoke-direct {p0, p1}, Lo/Report$Type;->extraCallback(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lo/Report$Type;->onPostMessage(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 289
    :cond_0
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 292
    :cond_1
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3369
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 207
    iget-object v0, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
