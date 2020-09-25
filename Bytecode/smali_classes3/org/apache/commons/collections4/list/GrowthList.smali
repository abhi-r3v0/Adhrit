.class public Lorg/apache/commons/collections4/list/GrowthList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x34ad8ed1e48L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static growthList(Ljava/util/List;)Lorg/apache/commons/collections4/list/GrowthList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Lorg/apache/commons/collections4/list/GrowthList<",
            "TE;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/commons/collections4/list/GrowthList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/list/GrowthList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v1

    sub-int v0, p1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v1

    sub-int v0, p1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v1

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/GrowthList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
