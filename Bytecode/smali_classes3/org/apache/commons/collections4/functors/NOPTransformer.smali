.class public Lorg/apache/commons/collections4/functors/NOPTransformer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/Transformer;

.field private static final serialVersionUID:J = 0x1d9d1b3d3faa779aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/functors/NOPTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/NOPTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nopTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/commons/collections4/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/commons/collections4/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method
