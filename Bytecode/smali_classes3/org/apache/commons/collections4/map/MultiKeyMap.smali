.class public Lorg/apache/commons/collections4/map/MultiKeyMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
        "+TK;>;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 123
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    return-void
.end method

.method public static multiKeyMap(Lorg/apache/commons/collections4/map/AbstractHashedMap;)Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;)",
            "Lorg/apache/commons/collections4/map/MultiKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 99
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 102
    new-instance v0, Lorg/apache/commons/collections4/map/MultiKeyMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-object v0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map must be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 903
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 904
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 890
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 891
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 817
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Key must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->clone()Lorg/apache/commons/collections4/map/MultiKeyMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/MultiKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 830
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/MultiKeyMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 832
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 155
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 159
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 162
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 287
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 290
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 293
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 427
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 428
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 431
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 434
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .line 579
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 580
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 583
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 586
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;"
        }
    .end annotation

    .line 879
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 139
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 266
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 269
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 406
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 409
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 412
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 555
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 556
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 559
    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 562
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 363
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 366
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 510
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    if-eqz p4, :cond_3

    .line 513
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_3
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 660
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 663
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 666
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    if-eqz p4, :cond_3

    .line 669
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_3
    if-eqz p5, :cond_4

    .line 672
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_4
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 249
    invoke-virtual {p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v2

    if-eq p3, v2, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 387
    invoke-virtual {p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_1
    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p4, v0, :cond_2

    if-eqz p4, :cond_3

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 534
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 535
    invoke-virtual {p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_4

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_1
    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p4, v0, :cond_2

    if-eqz p4, :cond_4

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_2
    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p4

    if-eq p5, p4, :cond_3

    if-eqz p5, :cond_4

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 694
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 695
    invoke-virtual {p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_5

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_5

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_1
    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p4, v0, :cond_2

    if-eqz p4, :cond_5

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_2
    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p4

    if-eq p5, p4, :cond_3

    if-eqz p5, :cond_5

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_3
    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p4

    if-eq p6, p4, :cond_4

    if-eqz p6, :cond_5

    invoke-virtual {p1, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;"
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->put(Lorg/apache/commons/collections4/keyvalue/MultiKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TV;)TV;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 180
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object p2

    invoke-virtual {p2, v2, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    .line 185
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 309
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 310
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 312
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 314
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object p2

    invoke-virtual {p2, v2, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    .line 317
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 450
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 451
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 452
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 454
    iget v3, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 456
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object p2

    invoke-virtual {p2, v2, p5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    .line 459
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 603
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 604
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 605
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 607
    iget v4, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v1, :cond_0

    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    invoke-virtual {v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 609
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object v1

    .line 612
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    new-instance v10, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    move-object v4, v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v1, v10, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Lorg/apache/commons/collections4/keyvalue/MultiKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;)TV;"
        }
    .end annotation

    .line 848
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V

    .line 849
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;+TV;>;)V"
        }
    .end annotation

    .line 862
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 863
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V

    goto :goto_0

    .line 865
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .locals 5

    .line 716
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 717
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 718
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 719
    invoke-virtual {v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    :goto_1
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 740
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 741
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 742
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 743
    invoke-virtual {v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    :goto_2
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 766
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 767
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 768
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 769
    invoke-virtual {v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p3, :cond_3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    :goto_3
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 794
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 795
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 796
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 797
    invoke-virtual {v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p3, :cond_3

    if-nez v4, :cond_0

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_3
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p4, :cond_4

    if-nez v3, :cond_0

    goto :goto_4

    :cond_4
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    :goto_4
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 202
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 205
    iget v5, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object p2

    invoke-virtual {p2, v2, v1, v4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    .line 211
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 335
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 338
    iget v5, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 340
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object p2

    invoke-virtual {p2, v2, v1, v4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    .line 344
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 476
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 477
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v10, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 481
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 483
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object p2

    invoke-virtual {p2, v2, v1, v10}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    .line 487
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v10, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 631
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 632
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 633
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v11, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 636
    iget v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 638
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v11}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    return-object v0

    .line 642
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v11, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    return-object v3
.end method
