.class public abstract Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;
.super Lorg/apache/commons/collections4/set/AbstractSetDecorator;
.source ""

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSetDecorator<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x300c59cc02adcefeL


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Set;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 64
    invoke-super {p0}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;->decorated()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
