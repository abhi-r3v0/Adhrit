.class public Lorg/apache/commons/collections4/functors/FactoryTransformer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TI;TO;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e9d3ed6a2480c48L


# instance fields
.field private final iFactory:Lorg/apache/commons/collections4/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Factory<",
            "+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Factory<",
            "+TO;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/FactoryTransformer;->iFactory:Lorg/apache/commons/collections4/Factory;

    return-void
.end method

.method public static factoryTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Factory<",
            "+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Lorg/apache/commons/collections4/functors/FactoryTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/FactoryTransformer;-><init>(Lorg/apache/commons/collections4/Factory;)V

    return-object v0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Factory must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFactory()Lorg/apache/commons/collections4/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Factory<",
            "+TO;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/FactoryTransformer;->iFactory:Lorg/apache/commons/collections4/Factory;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lorg/apache/commons/collections4/functors/FactoryTransformer;->iFactory:Lorg/apache/commons/collections4/Factory;

    invoke-interface {p1}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
