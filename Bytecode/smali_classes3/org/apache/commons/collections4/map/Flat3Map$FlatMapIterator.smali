.class Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlatMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 624
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 625
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 629
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 655
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 658
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 664
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 656
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 670
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 673
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 675
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 679
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 671
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 633
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 640
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 641
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 642
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 638
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 646
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v0, 0x0

    .line 651
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    return-void

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 706
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 707
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 685
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 688
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 689
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 691
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 700
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid map index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 694
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 697
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    .line 686
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 712
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
