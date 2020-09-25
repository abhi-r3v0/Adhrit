.class public Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;
.super Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SubCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final sub:Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 586
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    check-cast v0, Lorg/apache/commons/collections4/list/CursorableLinkedList;

    iget v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections4/list/CursorableLinkedList;I)V

    .line 587
    iput-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;->sub:Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 607
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->add(Ljava/lang/Object;)V

    .line 608
    iget-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;->sub:Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 609
    iget-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;->sub:Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 592
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;->sub:Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 597
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextIndex()I
    .locals 2

    .line 602
    invoke-super {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;->sub:Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 614
    invoke-super {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->remove()V

    .line 615
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;->sub:Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 616
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;->sub:Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    return-void
.end method
