.class Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/SetUniqueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
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

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 358
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    .line 359
    iput-object p2, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->set:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 364
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 370
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    .line 371
    iget-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lorg/apache/commons/collections4/list/SetUniqueList$SetListIterator;->last:Ljava/lang/Object;

    return-void
.end method
