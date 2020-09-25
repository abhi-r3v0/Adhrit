.class public Lorg/apache/commons/collections4/bag/HashBag;
.super Lorg/apache/commons/collections4/bag/AbstractMapBag;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bag/AbstractMapBag<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5b0dc3ba0157ee9dL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/bag/AbstractMapBag;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-super {p0, v0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 67
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/bag/AbstractMapBag;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
