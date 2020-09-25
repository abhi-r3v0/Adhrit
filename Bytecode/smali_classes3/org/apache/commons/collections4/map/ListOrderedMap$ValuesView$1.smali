.class Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView$1;
.super Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;Ljava/util/Iterator;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView$1;->this$0:Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView;

    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ValuesView$1;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
