.class public Lorg/apache/commons/collections4/map/AbstractHashedMap;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/IterableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$ValuesIterator;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySetIterator;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/IterableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0x10

.field protected static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field protected static final DEFAULT_THRESHOLD:I = 0xc

.field protected static final GETKEY_INVALID:Ljava/lang/String; = "getKey() can only be called after next() and before remove()"

.field protected static final GETVALUE_INVALID:Ljava/lang/String; = "getValue() can only be called after next() and before remove()"

.field protected static final MAXIMUM_CAPACITY:I = 0x40000000

.field protected static final NO_NEXT_ENTRY:Ljava/lang/String; = "No next() entry in the iteration"

.field protected static final NO_PREVIOUS_ENTRY:Ljava/lang/String; = "No previous() entry in the iteration"

.field protected static final NULL:Ljava/lang/Object;

.field protected static final REMOVE_INVALID:Ljava/lang/String; = "remove() can only be called once after next()"

.field protected static final SETVALUE_INVALID:Ljava/lang/String; = "setValue() can only be called after next() and before remove()"


# instance fields
.field transient data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient loadFactor:F

.field transient modCount:I

.field transient size:I

.field transient threshold:I

.field transient values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$Values<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 126
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 144
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iput p2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result p1

    .line 149
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    .line 150
    new-array p1, p1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->init()V

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Load factor must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial capacity must be a non negative number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(IFI)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 112
    iput p2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    .line 113
    new-array p1, p1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 114
    iput p3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->init()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    .line 162
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->_putAll(Ljava/util/Map;)V

    return-void
.end method

.method private _putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 319
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 324
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->ensureCapacity(I)V

    .line 325
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    return-void
.end method

.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .line 515
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    .line 516
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object p2

    .line 517
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V

    .line 518
    iget p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    .line 519
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->checkCapacity()V

    return-void
.end method

.method protected calculateNewCapacity(I)I
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method protected calculateThreshold(IF)I
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method

.method protected checkCapacity()V
    .locals 2

    .line 611
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    if-lt v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_0

    .line 614
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->ensureCapacity(I)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 361
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    .line 362
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 363
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 364
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    return-void
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1287
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;

    .line 1288
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    const/4 v1, 0x0

    .line 1289
    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    .line 1290
    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    .line 1291
    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    const/4 v1, 0x0

    .line 1292
    iput v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    .line 1293
    iput v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    .line 1294
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->init()V

    .line 1295
    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1298
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 221
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 223
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 225
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 228
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 242
    iget-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    :goto_1
    if-eqz v4, :cond_1

    .line 245
    invoke-virtual {v4}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    return v1

    .line 248
    :cond_0
    iget-object v4, v4, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    :goto_3
    if-eqz v5, :cond_4

    .line 255
    invoke-virtual {v5}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    .line 258
    :cond_3
    iget-object v5, v5, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 382
    sget-object p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method protected createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;ITK;TV;)",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 536
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 823
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 824
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 826
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 917
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 918
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 920
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyIterator;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected destroyEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 599
    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 600
    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 601
    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1260
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    .line 1261
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1262
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1263
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->init()V

    .line 1264
    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    .line 1265
    new-array v0, v0, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1267
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1268
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1269
    invoke-virtual {p0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 1230
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1231
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1232
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1234
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 7

    .line 626
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    .line 630
    :cond_0
    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    if-nez v2, :cond_1

    .line 631
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    .line 632
    new-array p1, p1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-void

    .line 635
    :cond_1
    new-array v2, p1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 637
    iget v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 639
    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .line 641
    aput-object v4, v0, v1

    .line 643
    :goto_1
    iget-object v4, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 644
    iget v5, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v5, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v5

    .line 645
    aget-object v6, v2, v5

    iput-object v6, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 646
    aput-object v3, v2, v5

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_1

    .line 651
    :cond_4
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    .line 652
    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-void
.end method

.method protected entryHashCode(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 714
    iget p1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    return p1
.end method

.method protected entryKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 727
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected entryNext(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 701
    iget-object p1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method protected entryValue(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 740
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1313
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1316
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 1317
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 1320
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 1322
    :cond_3
    :try_start_0
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1323
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1324
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1326
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v2

    .line 1330
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    return v2

    :cond_6
    return v0

    :catch_0
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 184
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 454
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 455
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 456
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 458
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 461
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 v0, p1, 0x9

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x4

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1351
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1352
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected hashIndex(II)I
    .locals 0

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    return p1
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 209
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    .line 413
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    .line 426
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    .line 907
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 756
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 757
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->emptyMapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 759
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 277
    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 278
    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 280
    iget v4, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v1, :cond_0

    iget-object v4, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    invoke-virtual {v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 282
    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    .line 285
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p0, v2, v1, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->_putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 338
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 339
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 340
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 341
    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 344
    iget v5, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v0, :cond_0

    iget-object v5, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 346
    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    .line 350
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method protected removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;I",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 584
    iget-object p3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget-object p1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aput-object p1, p3, p2

    return-void

    .line 586
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object p1, p3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-void
.end method

.method protected removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;I",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 565
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    .line 566
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 567
    iget p2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    .line 568
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->destroyEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    return-void
.end method

.method protected reuseEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;IITK;TV;)V"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object p2, v0, p2

    iput-object p2, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 495
    iput p3, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    .line 496
    iput-object p4, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 497
    iput-object p5, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 199
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1365
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 1368
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v1

    const/16 v2, 0x20

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1371
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v1

    .line 1372
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    .line 1374
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1375
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "(this Map)"

    if-ne v3, p0, :cond_2

    move-object v3, v5

    .line 1376
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v4, p0, :cond_3

    move-object v4, v5

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1380
    invoke-interface {v1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x2c

    .line 1382
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 1386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 477
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 989
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    .line 991
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    return-object v0
.end method
