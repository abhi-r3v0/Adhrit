.class public Lorg/apache/commons/collections4/list/FixedSizeList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/BoundedCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/BoundedCollection<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1ec7f4f4c49e3affL


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static fixedSizeList(Ljava/util/List;)Lorg/apache/commons/collections4/list/FixedSizeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/list/FixedSizeList<",
            "TE;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/apache/commons/collections4/list/FixedSizeList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/list/FixedSizeList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "List is fixed size"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 73
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 88
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "List is fixed size"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 83
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "List is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isFull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableIterator;->unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;-><init>(Lorg/apache/commons/collections4/list/FixedSizeList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;-><init>(Lorg/apache/commons/collections4/list/FixedSizeList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->size()I

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 128
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 133
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 138
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/FixedSizeList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 154
    new-instance p2, Lorg/apache/commons/collections4/list/FixedSizeList;

    invoke-direct {p2, p1}, Lorg/apache/commons/collections4/list/FixedSizeList;-><init>(Ljava/util/List;)V

    return-object p2
.end method
