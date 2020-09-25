.class public Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReferenceEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;ITK;TV;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 607
    invoke-direct {p0, p2, p3, v0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 608
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 609
    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object p2

    invoke-virtual {p0, p2, p4, p3}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 610
    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object p1

    invoke-virtual {p0, p1, p5, p3}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 668
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 672
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 673
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 674
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 680
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 693
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)Z"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 728
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    .line 730
    iget-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq p1, v0, :cond_3

    .line 731
    iget-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 733
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq p1, v0, :cond_4

    .line 734
    iget-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_2

    .line 735
    :cond_4
    iget-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$300(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 736
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    :cond_5
    :goto_2
    return v2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v1, v2, :cond_0

    .line 648
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 650
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;",
            "TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 709
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_0

    return-object p2

    .line 712
    :cond_0
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_1

    .line 713
    new-instance p1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$SoftRef;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$200(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p1, p3, p2, v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$SoftRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object p1

    .line 715
    :cond_1
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->WEAK:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_2

    .line 716
    new-instance p1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$200(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p1, p3, p2, v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object p1

    .line 718
    :cond_2
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method
