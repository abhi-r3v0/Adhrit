.class public Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;
.super Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Put;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Put<",
        "TJ;TU;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x52ce997d9f345e62L


# instance fields
.field private final keyTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TJ;+TK;>;"
        }
    .end annotation
.end field

.field private final valueTransformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TJ;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TU;+TV;>;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_1

    .line 116
    iput-object p2, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    if-eqz p3, :cond_0

    .line 120
    iput-object p3, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valueTransformer cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyTransformer cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections4/splitmap/AbstractIterableGetMapDecorator;->map:Ljava/util/Map;

    return-void
.end method

.method public static transformingMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TJ;+TK;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TU;+TV;>;)",
            "Lorg/apache/commons/collections4/splitmap/TransformedSplitMap<",
            "TJ;TK;TU;TV;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TV;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;TU;)TV;"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TJ;+TU;>;)V"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected transformKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)TK;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->keyTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected transformMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TJ;+TU;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 187
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/LinkedMap;-><init>(I)V

    .line 189
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected transformValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TV;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/commons/collections4/splitmap/TransformedSplitMap;->valueTransformer:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
