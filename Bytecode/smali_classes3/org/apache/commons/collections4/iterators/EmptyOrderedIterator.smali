.class public Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/OrderedIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections4/OrderedIterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method

.method public static emptyOrderedIterator()Lorg/apache/commons/collections4/OrderedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/OrderedIterator<",
            "TE;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections4/OrderedIterator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .line 28
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 1

    .line 28
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextIndex()I
    .locals 1

    .line 28
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousIndex()I
    .locals 1

    .line 28
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 28
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 28
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->reset()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
