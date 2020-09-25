.class public Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;*>;"
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
            "TK;*>;)V"
        }
    .end annotation

    .line 931
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 932
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 942
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 947
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->createKeySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 952
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 953
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public size()I
    .locals 1

    .line 937
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method
