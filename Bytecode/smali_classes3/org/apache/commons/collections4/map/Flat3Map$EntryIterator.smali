.class abstract Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private currentEntry:Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 894
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->nextIndex:I

    const/4 v0, 0x0

    .line 895
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->currentEntry:Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;

    .line 901
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 905
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 909
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->nextIndex:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;I)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->currentEntry:Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;

    return-object v0

    .line 910
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 917
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->currentEntry:Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 920
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->setRemoved(Z)V

    .line 921
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->currentEntry:Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->nextIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->nextIndex:I

    const/4 v0, 0x0

    .line 923
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;->currentEntry:Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;

    return-void

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
