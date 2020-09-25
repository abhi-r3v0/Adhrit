.class Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;

.field final synthetic this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

.field private final values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->key:Ljava/lang/Object;

    .line 516
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->values:Ljava/util/Collection;

    .line 517
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 521
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 522
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->values:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->this$0:Lorg/apache/commons/collections4/map/MultiValueMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$ValuesIterator;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
