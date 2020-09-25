.class Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeySetView"
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
.field private final parent:Lorg/apache/commons/collections4/map/ListOrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 559
    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 574
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->containsKey(Ljava/lang/Object;)Z

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

    .line 579
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView$1;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView$1;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 564
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->size()I

    move-result v0

    return v0
.end method
