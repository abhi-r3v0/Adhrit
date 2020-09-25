.class public Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 970
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 974
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->nextEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
