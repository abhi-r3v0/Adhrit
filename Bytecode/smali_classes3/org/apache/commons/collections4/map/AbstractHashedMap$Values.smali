.class public Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "*TV;>;)V"
        }
    .end annotation

    .line 1015
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 1016
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1026
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1031
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->createValuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1021
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method
