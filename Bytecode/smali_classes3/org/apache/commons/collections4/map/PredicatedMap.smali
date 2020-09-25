.class public Lorg/apache/commons/collections4/map/PredicatedMap;
.super Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x66deecd99f9e25b4L


# instance fields
.field protected final keyPredicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;"
        }
    .end annotation
.end field

.field protected final valuePredicate:Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;-><init>(Ljava/util/Map;)V

    .line 96
    iput-object p2, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections4/Predicate;

    .line 97
    iput-object p3, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/Predicate;

    .line 99
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 100
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lorg/apache/commons/collections4/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/map/PredicatedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TK;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TV;>;)",
            "Lorg/apache/commons/collections4/map/PredicatedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/commons/collections4/map/PredicatedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 130
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

    .line 115
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set value - Predicate rejected it"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 50
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isSetValueChecking()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/Predicate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/collections4/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected validate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections4/Predicate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add key - Predicate rejected it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/Predicate;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 146
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add value - Predicate rejected it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
