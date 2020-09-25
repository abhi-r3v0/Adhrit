.class public Lorg/apache/commons/collections4/iterators/EmptyListIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/ResettableListIterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Ljava/util/ListIterator;

.field public static final RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/commons/collections4/iterators/EmptyListIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/EmptyListIterator;-><init>()V

    .line 48
    sput-object v0, Lorg/apache/commons/collections4/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableListIterator;

    sput-object v0, Lorg/apache/commons/collections4/iterators/EmptyListIterator;->INSTANCE:Ljava/util/ListIterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method

.method public static emptyListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyListIterator;->INSTANCE:Ljava/util/ListIterator;

    return-object v0
.end method

.method public static resettableEmptyListIterator()Lorg/apache/commons/collections4/ResettableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/ResettableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableListIterator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .line 33
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 1

    .line 33
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextIndex()I
    .locals 1

    .line 33
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousIndex()I
    .locals 1

    .line 33
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 33
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 33
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->reset()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
