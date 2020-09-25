.class Lorg/apache/commons/collections4/map/StaticBucketMap$ValueIterator;
.super Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/map/StaticBucketMap<",
        "TK;TV;>.BaseIterator;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V
    .locals 1

    .line 541
    iput-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$ValueIterator;->this$0:Lorg/apache/commons/collections4/map/StaticBucketMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap$BaseIterator;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$1;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap$ValueIterator;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V

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

    .line 544
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap$ValueIterator;->nextEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
