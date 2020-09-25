.class public Lorg/apache/commons/collections4/functors/CloneTransformer;
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

.field private static final serialVersionUID:J = -0x71a4421bc4cbe9d7L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/commons/collections4/functors/CloneTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/CloneTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneTransformer()Lorg/apache/commons/collections4/Transformer;
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

    .line 49
    sget-object v0, Lorg/apache/commons/collections4/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 73
    sget-object v0, Lorg/apache/commons/collections4/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/PrototypeFactory;->prototypeFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
