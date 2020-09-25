.class public Lorg/apache/commons/collections4/queue/CircularFifoQueue;
.super Ljava/util/AbstractCollection;
.source ""

# interfaces
.implements Ljava/util/Queue;
.implements Lorg/apache/commons/collections4/BoundedCollection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Lorg/apache/commons/collections4/BoundedCollection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74e5fa40e2e0baa6L


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient end:I

.field private transient full:Z

.field private final maxElements:I

.field private transient start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 80
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    .line 68
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    .line 71
    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    if-lez p1, :cond_0

    .line 94
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 95
    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;-><init>(I)V

    .line 107
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    return p0
.end method

.method static synthetic access$102(Lorg/apache/commons/collections4/queue/CircularFifoQueue;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    return p0
.end method

.method static synthetic access$202(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 0

    .line 49
    iput p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    return p1
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->increment(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    return p0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->decrement(I)I

    move-result p0

    return p0
.end method

.method private decrement(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    .line 342
    iget p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 327
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private isAtFullCapacity()Z
    .locals 2

    .line 193
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 135
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 138
    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    .line 141
    iget p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    if-eqz p1, :cond_2

    .line 143
    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    return-void

    .line 145
    :cond_2
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 119
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 120
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 121
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 230
    invoke-direct {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isAtFullCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    aput-object p1, v0, v1

    .line 236
    iget p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    if-lt v2, p1, :cond_1

    const/4 p1, 0x0

    .line 237
    iput p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    .line 240
    :cond_1
    iget p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 241
    iput-boolean v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    :cond_2
    return v1

    .line 227
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempted to add null object to queue"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    .line 211
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    .line 212
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    .line 213
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 289
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 262
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    rem-int/2addr v0, p1

    .line 263
    iget-object p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    .line 257
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "The specified index (%1$d) is outside the available range [0, %2$d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFull()Z
    .locals 1

    const/4 v0, 0x0

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

    .line 354
    new-instance v0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;-><init>(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 202
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 277
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 308
    iput v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 310
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    const/4 v1, 0x0

    if-lt v3, v0, :cond_0

    .line 311
    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    .line 313
    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    :cond_1
    return-object v2

    .line 303
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3

    .line 159
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    if-ge v0, v1, :cond_0

    .line 160
    iget v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 162
    iget-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    sub-int v2, v0, v1

    :goto_0
    return v2
.end method
