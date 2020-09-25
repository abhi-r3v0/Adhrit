.class Lorg/apache/commons/collections4/map/MultiValueMap$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/map/MultiValueMap$1;->nextIterator(I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/collections4/map/MultiValueMap$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap$1;Ljava/lang/Object;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;->this$1:Lorg/apache/commons/collections4/map/MultiValueMap$1;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 436
    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap$1$1;Ljava/lang/Object;)V

    return-object v0
.end method
