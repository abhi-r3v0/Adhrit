.class Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView$1;
.super Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;Ljava/util/Iterator;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView$1;->this$0:Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView;

    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractUntypedIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$KeySetView$1;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
