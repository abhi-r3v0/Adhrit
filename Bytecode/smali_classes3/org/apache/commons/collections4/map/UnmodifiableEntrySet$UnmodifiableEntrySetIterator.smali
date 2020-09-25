.class Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmodifiableEntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;->this$0:Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;

    .line 153
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 158
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;->this$0:Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
