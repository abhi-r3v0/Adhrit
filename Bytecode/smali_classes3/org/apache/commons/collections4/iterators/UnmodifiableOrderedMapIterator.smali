.class public final Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private final iterator:Lorg/apache/commons/collections4/OrderedMapIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/OrderedMapIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-void
.end method

.method public static unmodifiableOrderedMapIterator(Lorg/apache/commons/collections4/OrderedMapIterator;)Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;+TV;>;)",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 52
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;-><init>(Lorg/apache/commons/collections4/OrderedMapIterator;)V

    return-object v0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "OrderedMapIterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections4/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 97
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setValue() is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
