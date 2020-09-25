.class Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlatMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final index:I

.field private final parent:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile removed:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    .line 788
    iput p2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    const/4 p1, 0x0

    .line 789
    iput-boolean p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 858
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 861
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    return v1

    .line 864
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 865
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 866
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_2

    .line 867
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v2, :cond_3

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 806
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    if-nez v0, :cond_3

    .line 809
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 811
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 817
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 815
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 807
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

    .line 821
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    if-nez v0, :cond_3

    .line 824
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 832
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 830
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 822
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .line 873
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 876
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 877
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 878
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method setRemoved(Z)V
    .locals 0

    .line 802
    iput-boolean p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 836
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    if-nez v0, :cond_3

    .line 839
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 840
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 842
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 851
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid map index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 845
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 848
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    .line 837
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 884
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
