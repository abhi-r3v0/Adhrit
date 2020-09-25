.class Lo/PoweredByJsonAdapter;
.super Ljava/util/AbstractMap;


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
.field private ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ScreenDataPayJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private volatile asBinder:Lo/ResetExtraJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ResetExtraJsonAdapter;"
        }
    .end annotation
.end field

.field private final extraCallback:I

.field private volatile onMessageChannelReady:Lo/ScreenDataJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ScreenDataJsonAdapter;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

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

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lo/PoweredByJsonAdapter;->extraCallback:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/PoweredByJsonAdapter;->onTransact:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ILo/PossibleValuesJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/PoweredByJsonAdapter;-><init>(I)V

    return-void
.end method

.method private final asBinder()V
    .locals 1

    iget-boolean v0, p0, Lo/PoweredByJsonAdapter;->onPostMessage:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private final extraCallback(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->asBinder()V

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ScreenDataPayJsonAdapter;

    invoke-virtual {p1}, Lo/ScreenDataPayJsonAdapter;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->onRelationshipValidationResult()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    new-instance v2, Lo/ScreenDataPayJsonAdapter;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lo/ScreenDataPayJsonAdapter;-><init>(Lo/PoweredByJsonAdapter;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object p1
.end method

.method static synthetic extraCallback(Lo/PoweredByJsonAdapter;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lo/PoweredByJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic extraCallback(Lo/PoweredByJsonAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lo/PoweredByJsonAdapter;->onTransact:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/PoweredByJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->asBinder()V

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/Comparable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ScreenDataPayJsonAdapter;

    invoke-virtual {v1}, Lo/ScreenDataPayJsonAdapter;->getKey()Ljava/lang/Object;

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

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ScreenDataPayJsonAdapter;

    invoke-virtual {v3}, Lo/ScreenDataPayJsonAdapter;->getKey()Ljava/lang/Object;

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

.method static synthetic onNavigationEvent(Lo/PoweredByJsonAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/PoweredByJsonAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    return-object p0
.end method

.method static onPostMessage(I)Lo/PoweredByJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lo/LoanStatusResponse_AadhaarOtpJsonAdapter<",
            "TFieldDescriptorType;>;>(I)",
            "Lo/PoweredByJsonAdapter<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/PossibleValuesJsonAdapter;

    invoke-direct {v0, p0}, Lo/PossibleValuesJsonAdapter;-><init>(I)V

    return-object v0
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

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->asBinder()V

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lo/PoweredByJsonAdapter;->onTransact:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/PrefilledDataJsonAdapter;->onPostMessage()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->asBinder()V

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lo/PoweredByJsonAdapter;->onNavigationEvent(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

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

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onMessageChannelReady:Lo/ScreenDataJsonAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lo/ScreenDataJsonAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ScreenDataJsonAdapter;-><init>(Lo/PoweredByJsonAdapter;Lo/PossibleValuesJsonAdapter;)V

    iput-object v0, p0, Lo/PoweredByJsonAdapter;->onMessageChannelReady:Lo/ScreenDataJsonAdapter;

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onMessageChannelReady:Lo/ScreenDataJsonAdapter;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/PoweredByJsonAdapter;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lo/PoweredByJsonAdapter;

    invoke-virtual {p0}, Lo/PoweredByJsonAdapter;->size()I

    move-result v1

    invoke-virtual {p1}, Lo/PoweredByJsonAdapter;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lo/PoweredByJsonAdapter;->onNavigationEvent()I

    move-result v2

    invoke-virtual {p1}, Lo/PoweredByJsonAdapter;->onNavigationEvent()I

    move-result v4

    if-eq v2, v4, :cond_3

    invoke-virtual {p0}, Lo/PoweredByJsonAdapter;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lo/PoweredByJsonAdapter;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {p0, v4}, Lo/PoweredByJsonAdapter;->onNavigationEvent(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lo/PoweredByJsonAdapter;->onNavigationEvent(I)Ljava/util/Map$Entry;

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

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    iget-object p1, p1, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    iget-boolean v0, p0, Lo/PoweredByJsonAdapter;->onPostMessage:Z

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

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lo/PoweredByJsonAdapter;->onNavigationEvent(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ScreenDataPayJsonAdapter;

    invoke-virtual {p1}, Lo/ScreenDataPayJsonAdapter;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lo/PoweredByJsonAdapter;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ScreenDataPayJsonAdapter;

    invoke-virtual {v3}, Lo/ScreenDataPayJsonAdapter;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    return v2
.end method

.method public final onMessageChannelReady(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->asBinder()V

    invoke-direct {p0, p1}, Lo/PoweredByJsonAdapter;->onNavigationEvent(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ScreenDataPayJsonAdapter;

    invoke-virtual {p1, p2}, Lo/ScreenDataPayJsonAdapter;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->asBinder()V

    iget-object v1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lo/PoweredByJsonAdapter;->extraCallback:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget v1, p0, Lo/PoweredByJsonAdapter;->extraCallback:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->onRelationshipValidationResult()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lo/PoweredByJsonAdapter;->extraCallback:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ScreenDataPayJsonAdapter;

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->onRelationshipValidationResult()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lo/ScreenDataPayJsonAdapter;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {v1}, Lo/ScreenDataPayJsonAdapter;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    new-instance v2, Lo/ScreenDataPayJsonAdapter;

    invoke-direct {v2, p0, p1, p2}, Lo/ScreenDataPayJsonAdapter;-><init>(Lo/PoweredByJsonAdapter;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onMessageChannelReady()V
    .locals 1

    iget-boolean v0, p0, Lo/PoweredByJsonAdapter;->onPostMessage:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onTransact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onTransact:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/PoweredByJsonAdapter;->onTransact:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/PoweredByJsonAdapter;->onPostMessage:Z

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
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

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->asBinder:Lo/ResetExtraJsonAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lo/ResetExtraJsonAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ResetExtraJsonAdapter;-><init>(Lo/PoweredByJsonAdapter;Lo/PossibleValuesJsonAdapter;)V

    iput-object v0, p0, Lo/PoweredByJsonAdapter;->asBinder:Lo/ResetExtraJsonAdapter;

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->asBinder:Lo/ResetExtraJsonAdapter;

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lo/PoweredByJsonAdapter;->onMessageChannelReady(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-direct {p0}, Lo/PoweredByJsonAdapter;->asBinder()V

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lo/PoweredByJsonAdapter;->onNavigationEvent(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lo/PoweredByJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lo/PoweredByJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/PoweredByJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method