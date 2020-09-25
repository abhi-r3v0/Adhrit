.class public Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$KeySet;
.super Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
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
        "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<",
        "TK;",
        "Ljava/lang/Object;",
        "TK;>;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x62a475ee19534b36L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 409
    iget-object v0, p1, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->createKeySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->normalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 426
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->reverseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
