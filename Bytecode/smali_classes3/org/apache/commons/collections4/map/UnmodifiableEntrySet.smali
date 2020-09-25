.class public final Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;
.super Lorg/apache/commons/collections4/set/AbstractSetDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;,
        Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSetDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x174ab5b03b1856e1L


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 55
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public final add(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 75
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 80
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;-><init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 90
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 95
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 114
    new-instance v2, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Map$Entry;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 123
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 128
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 129
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 130
    new-instance v3, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v4, v0, v2

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Map$Entry;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_1
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 135
    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 139
    :cond_2
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3

    .line 141
    array-length v0, v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method
