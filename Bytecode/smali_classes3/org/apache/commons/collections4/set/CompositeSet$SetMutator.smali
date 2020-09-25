.class public interface abstract Lorg/apache/commons/collections4/set/CompositeSet$SetMutator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/set/CompositeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SetMutator"
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
.method public abstract add(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/List;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/set/CompositeSet<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "TE;>;>;TE;)Z"
        }
    .end annotation
.end method

.method public abstract addAll(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/List;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/set/CompositeSet<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "TE;>;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public abstract resolveCollision(Lorg/apache/commons/collections4/set/CompositeSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/set/CompositeSet<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation
.end method
