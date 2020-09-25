.class public Lorg/apache/commons/collections4/iterators/IteratorIterable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private final typeSafeIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/IteratorIterable;-><init>(Ljava/util/Iterator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;Z)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 111
    instance-of p2, p1, Lorg/apache/commons/collections4/ResettableIterator;

    if-nez p2, :cond_0

    .line 112
    new-instance p2, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;

    invoke-direct {p2, p1}, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;-><init>(Ljava/util/Iterator;)V

    iput-object p2, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->iterator:Ljava/util/Iterator;

    goto :goto_0

    .line 114
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->iterator:Ljava/util/Iterator;

    .line 116
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->iterator:Ljava/util/Iterator;

    invoke-static {p1}, Lorg/apache/commons/collections4/iterators/IteratorIterable;->createTypesafeIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->typeSafeIterator:Ljava/util/Iterator;

    return-void
.end method

.method private static createTypesafeIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/apache/commons/collections4/iterators/IteratorIterable$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/IteratorIterable$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Lorg/apache/commons/collections4/ResettableIterator;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lorg/apache/commons/collections4/ResettableIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections4/ResettableIterator;->reset()V

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/IteratorIterable;->typeSafeIterator:Ljava/util/Iterator;

    return-object v0
.end method
