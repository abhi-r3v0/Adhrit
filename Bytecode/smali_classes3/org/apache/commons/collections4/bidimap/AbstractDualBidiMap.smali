.class public abstract Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/BidiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;,
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$MapEntry;,
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;,
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySet;,
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;,
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;,
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;,
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySet;,
        Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;
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
        "Lorg/apache/commons/collections4/BidiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/BidiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient normalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient reverseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 67
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->values:Ljava/util/Set;

    .line 72
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 67
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->values:Ljava/util/Set;

    .line 72
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 101
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    .line 102
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TV;TK;>;",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 67
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->values:Ljava/util/Set;

    .line 72
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 116
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    .line 117
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    .line 118
    iput-object p3, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)Lorg/apache/commons/collections4/BidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TV;TK;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end method

.method protected createEntrySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 319
    new-instance v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method protected createKeySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TK;>;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 265
    new-instance v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method protected createValuesIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 290
    new-instance v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$ValuesIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

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

    .line 305
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$EntrySet;-><init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 135
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/BidiMap;)Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections4/BidiMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

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

    .line 251
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySet;-><init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

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

    .line 218
    new-instance v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$BidiMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
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

    .line 181
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

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
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

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->values:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$Values;-><init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->values:Ljava/util/Set;

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->values:Ljava/util/Set;

    return-object v0
.end method
