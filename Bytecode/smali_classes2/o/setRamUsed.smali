.class public abstract Lo/setRamUsed;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lo/setRamUsed<",
        "TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lo/setRamUsed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0, v0}, Lo/setRamUsed;->createPathWithSegments(Ljava/util/List;)Lo/setRamUsed;

    move-result-object p1

    return-object p1
.end method

.method public append(Lo/setRamUsed;)Lo/setRamUsed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TB;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    iget-object p1, p1, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-virtual {p0, v0}, Lo/setRamUsed;->createPathWithSegments(Ljava/util/List;)Lo/setRamUsed;

    move-result-object p1

    return-object p1
.end method

.method public abstract canonicalString()Ljava/lang/String;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lo/setRamUsed;

    invoke-virtual {p0, p1}, Lo/setRamUsed;->compareTo(Lo/setRamUsed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/setRamUsed;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)I"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    .line 90
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-ge v2, v1, :cond_1

    .line 92
    invoke-virtual {p0, v2}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v0, v1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result p1

    return p1
.end method

.method abstract createPathWithSegments(Ljava/util/List;)Lo/setRamUsed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 168
    :cond_0
    instance-of v1, p1, Lo/setRamUsed;

    if-eqz v1, :cond_1

    check-cast p1, Lo/setRamUsed;

    invoke-virtual {p0, p1}, Lo/setRamUsed;->compareTo(Lo/setRamUsed;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getFirstSegment()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastSegment()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSegment(I)Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x25

    .line 176
    iget-object v1, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isImmediateParentOf(Lo/setRamUsed;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 143
    invoke-virtual {p0, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isPrefixOf(Lo/setRamUsed;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 126
    invoke-virtual {p0, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public keepFirst(I)Lo/setRamUsed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setRamUsed;->createPathWithSegments(Ljava/util/List;)Lo/setRamUsed;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 160
    iget-object v0, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public popFirst()Lo/setRamUsed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lo/setRamUsed;->popFirst(I)Lo/setRamUsed;

    move-result-object v0

    return-object v0
.end method

.method public popFirst(I)Lo/setRamUsed;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Can\'t call popFirst with count > length() (%d > %d)"

    .line 71
    invoke-static {v3, v1, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setRamUsed;->createPathWithSegments(Ljava/util/List;)Lo/setRamUsed;

    move-result-object p1

    return-object p1
.end method

.method public popLast()Lo/setRamUsed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/setRamUsed;->createPathWithSegments(Ljava/util/List;)Lo/setRamUsed;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
