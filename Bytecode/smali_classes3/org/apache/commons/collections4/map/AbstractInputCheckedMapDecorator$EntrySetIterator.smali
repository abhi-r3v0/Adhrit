.class Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Iterator;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    .line 175
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 176
    iput-object p3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    new-instance v1, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V

    return-object v1
.end method
