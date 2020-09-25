.class public Lorg/apache/commons/collections4/functors/ConstantTransformer;
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
.field public static final NULL_INSTANCE:Lorg/apache/commons/collections4/Transformer;

.field private static final serialVersionUID:J = 0x587690114102b194L


# instance fields
.field private final iConstant:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lorg/apache/commons/collections4/functors/ConstantTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/functors/ConstantTransformer;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    return-void
.end method

.method public static constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 67
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/ConstantTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static nullTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 111
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/functors/ConstantTransformer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 114
    :cond_1
    check-cast p1, Lorg/apache/commons/collections4/functors/ConstantTransformer;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public getConstant()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const-string v0, "ConstantTransformer"

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->getConstant()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lorg/apache/commons/collections4/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    return-object p1
.end method
