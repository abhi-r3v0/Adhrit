.class Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/map/MultiValueMap$1$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/commons/collections4/map/MultiValueMap$1$1;

.field final synthetic val$input:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap$1$1;Ljava/lang/Object;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;->this$2:Lorg/apache/commons/collections4/map/MultiValueMap$1$1;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;->val$input:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;->this$2:Lorg/apache/commons/collections4/map/MultiValueMap$1$1;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;->val$key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1$1$1;->val$input:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 444
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
