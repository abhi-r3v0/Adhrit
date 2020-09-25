.class public Lorg/apache/commons/collections4/map/Flat3Map;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/IterableMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/Flat3Map$ValuesIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$Values;,
        Lorg/apache/commons/collections4/map/Flat3Map$KeySetIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$KeySet;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntrySetIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;,
        Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/IterableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5cff0b811e8e7b68L


# instance fields
.field private transient delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hash1:I

.field private transient hash2:I

.field private transient hash3:I

.field private transient key1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient key2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient key3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient size:I

.field private transient value1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient value2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient value3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/commons/collections4/map/Flat3Map;)Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-object p0
.end method

.method private convertToMap()V
    .locals 3

    .line 397
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    .line 398
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 400
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x0

    .line 411
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 412
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 414
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1100
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1101
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1103
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 1106
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1088
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1089
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1091
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 586
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 588
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 590
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 591
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 592
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 593
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->clone()Lorg/apache/commons/collections4/map/Flat3Map;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/Flat3Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1121
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/Flat3Map;

    .line 1122
    iget-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 1127
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5

    .line 198
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 202
    iget p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v2

    .line 208
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_3

    return v2

    .line 212
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_8

    return v2

    .line 217
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v3, :cond_8

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 219
    iget v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_6

    if-eq v4, v0, :cond_5

    goto :goto_0

    .line 221
    :cond_5
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 225
    :cond_6
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 229
    :cond_7
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .line 245
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 249
    iget p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v2

    .line 255
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez p1, :cond_3

    return v2

    .line 259
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez p1, :cond_8

    return v2

    .line 264
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v3, v2, :cond_7

    if-eq v3, v1, :cond_6

    if-eq v3, v0, :cond_5

    goto :goto_0

    .line 266
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 270
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 274
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 428
    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    return-object v0
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

    .line 730
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 733
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1142
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    .line 1143
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1145
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1148
    :cond_2
    check-cast p1, Ljava/util/Map;

    .line 1149
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 1152
    :cond_3
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v1, :cond_d

    if-eq v1, v0, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    goto :goto_3

    .line 1156
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1159
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1160
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v3, :cond_6

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v2

    .line 1164
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 1167
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1168
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_9

    if-eqz v1, :cond_a

    goto :goto_1

    :cond_9
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_1
    return v2

    .line 1172
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 1175
    :cond_b
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1176
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v1, :cond_c

    if-eqz p1, :cond_d

    goto :goto_2

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_2
    return v2

    :cond_d
    :goto_3
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 131
    iget p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 135
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    .line 138
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 139
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    .line 142
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_8

    .line 143
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    .line 147
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v3, :cond_8

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 149
    iget v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_6

    if-eq v4, v0, :cond_5

    goto :goto_0

    .line 152
    :cond_5
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    .line 156
    :cond_6
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    .line 160
    :cond_7
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 161
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1191
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 1195
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1197
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_1

    .line 1205
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 1199
    :goto_1
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 1201
    :goto_3
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_7
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

    .line 949
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 952
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$KeySet;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

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

    .line 610
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 613
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    .line 614
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->emptyMapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 616
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 296
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    if-eq v3, v0, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 299
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 300
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    .line 304
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 305
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 306
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    .line 310
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 311
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 312
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    .line 317
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v3, :cond_8

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 319
    iget v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_6

    if-eq v4, v0, :cond_5

    goto :goto_0

    .line 321
    :cond_5
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 322
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 323
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    .line 327
    :cond_6
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 328
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 329
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    .line 333
    :cond_7
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 334
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 335
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    .line 343
    :cond_8
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_9

    .line 345
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->convertToMap()V

    .line 346
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_9
    if-nez p1, :cond_a

    goto :goto_1

    .line 349
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 350
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 351
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_4

    :cond_b
    if-nez p1, :cond_c

    goto :goto_2

    .line 354
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 355
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 356
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_4

    :cond_d
    if-nez p1, :cond_e

    goto :goto_3

    .line 359
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 360
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 361
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 364
    :goto_4
    iget p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object v3
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

    .line 375
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 384
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    .line 388
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->convertToMap()V

    .line 389
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

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

    .line 438
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 441
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez p1, :cond_a

    if-eq v0, v3, :cond_9

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_0

    .line 447
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 448
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 449
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 450
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 451
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 452
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 455
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 456
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 457
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 458
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 459
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 460
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 461
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 462
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 463
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object v0

    .line 466
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 467
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 468
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 469
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 470
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 471
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 472
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 473
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 474
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object v0

    :cond_5
    return-object v1

    .line 479
    :cond_6
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_7

    .line 480
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 481
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 482
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 483
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 484
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 487
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 488
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 489
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 490
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 491
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 492
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 493
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 494
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 495
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object v0

    :cond_8
    return-object v1

    .line 500
    :cond_9
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_13

    .line 501
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 502
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 503
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 504
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 505
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    :cond_a
    if-lez v0, :cond_13

    .line 511
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 512
    iget v6, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v6, v3, :cond_12

    if-eq v6, v4, :cond_f

    if-eq v6, v2, :cond_b

    goto/16 :goto_0

    .line 514
    :cond_b
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v2, v0, :cond_c

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 515
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 516
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 517
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 518
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 519
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 522
    :cond_c
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v0, :cond_d

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 523
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 524
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 525
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 527
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 528
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 529
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 530
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 533
    :cond_d
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 534
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 535
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 536
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 538
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 539
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 540
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 541
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    :cond_e
    return-object v1

    .line 546
    :cond_f
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v0, :cond_10

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 547
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 548
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 549
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 550
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 551
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 554
    :cond_10
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 555
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 556
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 557
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 559
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 560
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 561
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 562
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    :cond_11
    return-object v1

    .line 567
    :cond_12
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 568
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 569
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 570
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 571
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 572
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    :cond_13
    :goto_0
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0

    .line 178
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1217
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1220
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    const-string v0, "{}"

    return-object v0

    .line 1223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1225
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v2, 0x1

    const/16 v3, 0x3d

    const-string v4, "(this Map)"

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    const/16 v5, 0x2c

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1227
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-ne v1, p0, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1229
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-ne v1, p0, :cond_3

    move-object v1, v4

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1243
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-ne v1, p0, :cond_6

    move-object v1, v4

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-ne v1, p0, :cond_7

    move-object v1, v4

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1237
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-ne v1, p0, :cond_9

    move-object v1, v4

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1239
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-ne v1, p0, :cond_a

    goto :goto_1

    :cond_a
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 1245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1023
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 1026
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$Values;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method
