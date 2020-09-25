.class public Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final iterator:Lorg/apache/commons/collections4/OrderedMapIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/OrderedMapIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OrderedMapIterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedMapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->remove()V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/OrderedMapIterator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
