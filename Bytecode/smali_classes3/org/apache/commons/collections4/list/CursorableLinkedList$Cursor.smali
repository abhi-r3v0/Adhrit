.class public Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field currentRemovedByAnother:Z

.field nextIndexValid:Z

.field valid:Z


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/CursorableLinkedList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V

    const/4 p1, 0x1

    .line 402
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    .line 404
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    const/4 p2, 0x0

    .line 406
    iput-boolean p2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 416
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 455
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->add(Ljava/lang/Object;)V

    .line 458
    iget-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .line 547
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    return-void

    .line 548
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Cursor closed"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 561
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    check-cast v0, Lorg/apache/commons/collections4/list/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V

    const/4 v0, 0x0

    .line 563
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .line 400
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 1

    .line 400
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 400
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 3

    .line 473
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    if-nez v0, :cond_2

    .line 474
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 478
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 479
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 481
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 483
    :cond_1
    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    :goto_1
    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 487
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return v0
.end method

.method protected nodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected nodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 533
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 534
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, p1, :cond_1

    .line 536
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 538
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    return-void
.end method

.method protected nodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_0

    .line 507
    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 508
    iput-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 509
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 513
    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 514
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_2

    .line 518
    iput-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 519
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 520
    iget p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return-void

    .line 522
    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 523
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    return-void
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 400
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousIndex()I
    .locals 1

    .line 400
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    if-nez v0, :cond_1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->checkModCount()V

    .line 441
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->getLastNodeReturned()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    :cond_1
    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 400
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
