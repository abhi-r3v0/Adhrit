.class Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/set/ListOrderedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OrderedSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ListIterator;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 379
    iput-object p2, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->set:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ListIterator;Ljava/util/Collection;Lorg/apache/commons/collections4/set/ListOrderedSet$1;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public hasPrevious()Z
    .locals 1

    .line 396
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->set:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lorg/apache/commons/collections4/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    return-void
.end method
