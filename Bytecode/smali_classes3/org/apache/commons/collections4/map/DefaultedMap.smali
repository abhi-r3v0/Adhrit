.class public Lorg/apache/commons/collections4/map/DefaultedMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
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
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x11ea71c4da63L


# instance fields
.field private final value:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 169
    iput-object p2, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->value:Lorg/apache/commons/collections4/Transformer;

    return-void

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "transformer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-void
.end method

.method public static defaultedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Map;
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
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 129
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transformer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static defaultedMap(Ljava/util/Map;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/DefaultedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TV;)",
            "Lorg/apache/commons/collections4/map/DefaultedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method public static defaultedMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/DefaultedMap;
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
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)",
            "Lorg/apache/commons/collections4/map/DefaultedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/functors/FactoryTransformer;->factoryTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Factory must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 193
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 194
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

    .line 180
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->value:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
