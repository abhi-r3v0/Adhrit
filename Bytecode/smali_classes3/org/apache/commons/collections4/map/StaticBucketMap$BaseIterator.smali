.class Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseIterator"
.end annotation


# instance fields
.field private bucket:I

.field private final current:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private last:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->current:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V
    .locals 0

    .line 491
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 497
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    .line 500
    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->bucket:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 501
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$Lock;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->bucket:I

    aget-object v0, v0, v2

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->bucket:I

    aget-object v2, v2, v3

    :goto_1
    if-eqz v2, :cond_1

    .line 504
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v2, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections4/map/StaticBucketMap$Node;

    goto :goto_1

    .line 507
    :cond_1
    iget v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->bucket:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->bucket:I

    .line 508
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 509
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 511
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected nextEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->last:Ljava/util/Map$Entry;

    return-object v0

    .line 518
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 525
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;->last:Ljava/util/Map$Entry;

    return-void

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
