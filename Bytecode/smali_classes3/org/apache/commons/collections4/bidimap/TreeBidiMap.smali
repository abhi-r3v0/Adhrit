.class public Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedBidiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapEntryIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseEntryView;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;,
        Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedBidiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x290a0955b114fL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
            "TK;TV;>.Inverse;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient modifications:I

.field private transient nodeCount:I

.field private transient rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient valuesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    .line 105
    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modifications:I

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 118
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 78
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I
    .locals 0

    .line 78
    iget p0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modifications:I

    return p0
.end method

.method static synthetic access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I
    .locals 0

    .line 78
    iget p0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    return p0
.end method

.method static synthetic access$2800(Ljava/lang/Object;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookup(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doHashCode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doToString(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1

    .line 1218
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1244
    invoke-static {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 1245
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1204
    instance-of p0, p0, Ljava/lang/Comparable;

    if-eqz p0, :cond_0

    return-void

    .line 1205
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must be Comparable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1202
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1

    .line 1230
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;)I"
        }
    .end annotation

    .line 670
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 720
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void

    .line 722
    :cond_0
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$800(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    :cond_1
    return-void
.end method

.method private doEquals(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1326
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1329
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 1330
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 1334
    :cond_2
    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-lez v1, :cond_4

    .line 1336
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getMapIterator(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1337
    invoke-interface {p2}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1338
    invoke-interface {p2}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1339
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    :catch_0
    return v2

    :cond_4
    return v0
.end method

.method private doHashCode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I
    .locals 3

    .line 1360
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1361
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getMapIterator(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1363
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1364
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method private doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 483
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    .line 487
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    .line 489
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 493
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object p2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aput-object v0, p1, p2

    .line 494
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object p2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aput-object v0, p1, p2

    .line 495
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->grow()V

    return-void

    .line 500
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-eqz v1, :cond_4

    if-gez v1, :cond_2

    .line 506
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 507
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_1
    new-instance v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 511
    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 512
    sget-object p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 513
    sget-object p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v1, v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 514
    sget-object p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 515
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->grow()V

    return-void

    .line 520
    :cond_2
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 521
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_3
    new-instance v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 525
    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 526
    sget-object p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 527
    sget-object p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v1, v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 528
    sget-object p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 529
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->grow()V

    return-void

    .line 504
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot store a duplicate key (\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\") in this Map"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 949
    invoke-static {}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->values()[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 952
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 953
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    invoke-direct {p0, v4, p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->swapPosition(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 956
    :cond_0
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 960
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 962
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-nez v6, :cond_2

    .line 963
    iget-object v6, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput-object v4, v6, v7

    goto :goto_2

    .line 964
    :cond_2
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-ne p1, v6, :cond_3

    .line 965
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_2

    .line 967
    :cond_3
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 970
    :goto_2
    invoke-static {p1, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 971
    invoke-static {p1, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 972
    invoke-static {p1, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 974
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 975
    invoke-direct {p0, v4, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_4

    .line 980
    :cond_4
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-nez v4, :cond_5

    .line 983
    iget-object v4, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput-object v5, v4, v3

    goto :goto_4

    .line 987
    :cond_5
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 988
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 991
    :cond_6
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 992
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    if-ne p1, v4, :cond_7

    .line 993
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    invoke-static {v4, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_3

    .line 995
    :cond_7
    invoke-static {p1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    invoke-static {v4, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 998
    :goto_3
    invoke-static {p1, v5, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1003
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->shrink()V

    return-void
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 1018
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_7

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1019
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1020
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1022
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1024
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1025
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1027
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1030
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1034
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_0

    .line 1036
    :cond_1
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1037
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1038
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1039
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1041
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1044
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1045
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1046
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1047
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1049
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    goto/16 :goto_0

    .line 1052
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1054
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1055
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1056
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1057
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1059
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1062
    :cond_4
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1064
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1066
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto/16 :goto_0

    .line 1068
    :cond_5
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1069
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1070
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1071
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1073
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1076
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1077
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1078
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1079
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1081
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    goto/16 :goto_0

    .line 1086
    :cond_7
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 881
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    .line 883
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_6

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 886
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 889
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 891
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 892
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 894
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_0

    .line 897
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 898
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    .line 900
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 903
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 904
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 906
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_0

    .line 913
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 915
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 916
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 917
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 918
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 920
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto/16 :goto_0

    .line 923
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 924
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    .line 926
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 929
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 930
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 932
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto/16 :goto_0

    .line 939
    :cond_6
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method private doRemoveKey(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 543
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 544
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method private doRemoveValue(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 548
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 552
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 553
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method private doToString(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;
    .locals 4

    .line 1377
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    const-string p1, "{}"

    return-object p1

    .line 1380
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    shl-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    .line 1381
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1382
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getMapIterator(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object p1

    .line 1383
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 1385
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1386
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-ne v0, p0, :cond_2

    move-object v0, v3

    .line 1387
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v2, p0, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1391
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, ", "

    .line 1393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 p1, 0x7d

    .line 1397
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1398
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getGrandParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 781
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    return-object p1
.end method

.method private getLeftChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 814
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    return-object p1
.end method

.method private getMapIterator(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/MapIterator<",
            "**>;"
        }
    .end annotation

    .line 1402
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$1;->$SwitchMap$org$apache$commons$collections4$bidimap$TreeBidiMap$DataElement:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1406
    new-instance p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;

    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$InverseViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object p1

    .line 1408
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1404
    :cond_1
    new-instance p1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;

    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object p1
.end method

.method private getParent(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 792
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    return-object p1
.end method

.method private getRightChild(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 803
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    return-object p1
.end method

.method private greatestNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 701
    :goto_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private grow()V
    .locals 1

    .line 1261
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modify()V

    .line 1262
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 1285
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-eqz v1, :cond_3

    if-gez v1, :cond_1

    .line 1291
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1292
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1294
    :cond_0
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1295
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1296
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void

    .line 1301
    :cond_1
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1302
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_2
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1305
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1306
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void

    .line 1288
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot store a duplicate value (\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\") in this Map"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "**>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 746
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "**>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 735
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$900(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private leastNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 684
    :goto_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private lookup(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Object;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 570
    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    .line 575
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 583
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookup(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    return-object p1
.end method

.method private lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 587
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookup(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    return-object p1
.end method

.method private static makeBlack(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "**>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 769
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "**>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 757
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .line 1254
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modifications:I

    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 601
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 604
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_1

    .line 612
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    if-eqz p1, :cond_2

    .line 615
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 617
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private nextSmaller(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 635
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 638
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    goto :goto_1

    .line 646
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    if-eqz p1, :cond_2

    .line 649
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 651
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1417
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1418
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    .line 1419
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1421
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 1422
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 1423
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rotateLeft(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 824
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 825
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 827
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 828
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 830
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 832
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 834
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    goto :goto_0

    .line 835
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 836
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_0

    .line 838
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 841
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 842
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method private rotateRight(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 852
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 853
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 854
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 855
    invoke-static {v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 857
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 859
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 861
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    goto :goto_0

    .line 862
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 863
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_0

    .line 865
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 868
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 869
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method

.method private shrink()V
    .locals 1

    .line 1269
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modify()V

    .line 1270
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
            ")V"
        }
    .end annotation

    .line 1100
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1101
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1102
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v2

    .line 1103
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1104
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v4

    .line 1105
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v5

    .line 1106
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    invoke-static {v6, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v6

    if-ne p1, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1108
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v9

    invoke-static {v9, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v9

    if-ne p2, v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ne p1, v3, :cond_3

    .line 1113
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    if-eqz v7, :cond_2

    .line 1116
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1117
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_3

    .line 1119
    :cond_2
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1120
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_3

    .line 1123
    :cond_3
    invoke-static {p1, v3, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    if-eqz v3, :cond_5

    if-eqz v7, :cond_4

    .line 1127
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_2

    .line 1129
    :cond_4
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1133
    :cond_5
    :goto_2
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1134
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    :goto_3
    if-ne p2, v0, :cond_7

    .line 1138
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    if-eqz v6, :cond_6

    .line 1141
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1142
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_5

    .line 1144
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1145
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_5

    .line 1148
    :cond_7
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    if-eqz v0, :cond_9

    if-eqz v6, :cond_8

    .line 1152
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    goto :goto_4

    .line 1154
    :cond_8
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1158
    :cond_9
    :goto_4
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1159
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1163
    :goto_5
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1164
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1167
    :cond_a
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1168
    invoke-static {p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1171
    :cond_b
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1172
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1175
    :cond_c
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1176
    invoke-static {p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1179
    :cond_d
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->access$1400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1182
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_e

    .line 1183
    iget-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aput-object p2, p1, p3

    return-void

    .line 1184
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-ne v0, p2, :cond_f

    .line 1185
    iget-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aput-object p1, p2, p3

    :cond_f
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1432
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1433
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1434
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1435
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 263
    invoke-direct {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->modify()V

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    .line 266
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 267
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-object v2, v0, v1

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 164
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 165
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 179
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 180
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    .line 416
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 452
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Z

    move-result p1

    return p1
.end method

.method public firstKey()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 312
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->firstKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 198
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 284
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 285
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupValue(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 286
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 462
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doHashCode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Inverse;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 150
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 325
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0

    .line 326
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lastKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->emptyOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0

    .line 427
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 340
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 341
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 342
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public previousKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 354
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 355
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lookupKey(Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 356
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->previousKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 227
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->remove(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doRemoveValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nodeCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 472
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->doToString(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ValueView;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    return-object v0
.end method
