.class public abstract Lorg/apache/commons/collections4/map/AbstractIterableMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/IterableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/IterableMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
