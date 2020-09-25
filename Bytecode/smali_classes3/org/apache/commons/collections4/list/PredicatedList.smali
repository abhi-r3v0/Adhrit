.class public Lorg/apache/commons/collections4/list/PredicatedList;
.super Lorg/apache/commons/collections4/collection/PredicatedCollection;
.source ""

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/PredicatedCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4f68c45b8354d91eL


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method public static predicatedList(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/list/PredicatedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/list/PredicatedList<",
            "TT;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/apache/commons/collections4/list/PredicatedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 118
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 89
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/PredicatedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

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

    .line 129
    new-instance v0, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/PredicatedList$PredicatedListIterator;-><init>(Lorg/apache/commons/collections4/list/PredicatedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

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

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/PredicatedList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 139
    new-instance p2, Lorg/apache/commons/collections4/list/PredicatedList;

    iget-object v0, p0, Lorg/apache/commons/collections4/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections4/Predicate;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections4/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Predicate;)V

    return-object p2
.end method
