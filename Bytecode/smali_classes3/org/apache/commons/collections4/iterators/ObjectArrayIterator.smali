.class public Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final endIndex:I

.field index:I

.field final startIndex:I


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .line 68
    array-length v0, p1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;II)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->index:I

    if-ltz p2, :cond_3

    .line 87
    array-length v0, p1

    if-gt p3, v0, :cond_2

    .line 90
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-lt p3, p2, :cond_0

    .line 96
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    .line 97
    iput p2, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->startIndex:I

    .line 98
    iput p3, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->endIndex:I

    .line 99
    iput p2, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->index:I

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "End index must not be less than start index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Start index must not be greater than the array length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "End index must not be greater than the array length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Start index must not be less than zero"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 164
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->startIndex:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 111
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->endIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported for an ObjectArrayIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 171
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->index:I

    return-void
.end method
