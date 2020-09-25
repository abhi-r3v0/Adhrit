.class public Lorg/apache/commons/collections4/list/LazyList;
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
.field private static final serialVersionUID:J = -0x17b569d9a565ab0eL


# instance fields
.field private final factory:Lorg/apache/commons/collections4/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 95
    iput-object p2, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Factory must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/list/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/list/LazyList<",
            "TE;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    invoke-interface {v0}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    invoke-interface {p1}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 138
    new-instance p2, Lorg/apache/commons/collections4/list/LazyList;

    iget-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V

    return-object p2
.end method
