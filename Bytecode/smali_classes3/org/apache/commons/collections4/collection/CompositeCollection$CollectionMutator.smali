.class public interface abstract Lorg/apache/commons/collections4/collection/CompositeCollection$CollectionMutator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/collection/CompositeCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CollectionMutator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract add(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/collection/CompositeCollection<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;TE;)Z"
        }
    .end annotation
.end method

.method public abstract addAll(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/collection/CompositeCollection<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public abstract remove(Lorg/apache/commons/collections4/collection/CompositeCollection;Ljava/util/List;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/collection/CompositeCollection<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/util/Collection<",
            "TE;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method
