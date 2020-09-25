.class Lorg/apache/commons/collections4/map/Flat3Map$ValuesIterator;
.super Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValuesIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "*TV;>;)V"
        }
    .end annotation

    .line 1074
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1078
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$ValuesIterator;->nextEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
