.class public final Lorg/apache/commons/collections4/functors/MapTransformer;
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
.field private static final serialVersionUID:J = 0xbf7d4c78427030bL


# instance fields
.field private final iMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/MapTransformer;->iMap:Ljava/util/Map;

    return-void
.end method

.method public static mapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 51
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/MapTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/MapTransformer;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "-TI;+TO;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/MapTransformer;->iMap:Ljava/util/Map;

    return-object v0
.end method

.method public final transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/MapTransformer;->iMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
