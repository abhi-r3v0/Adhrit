.class public Lorg/apache/commons/collections4/functors/DefaultEquator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Equator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Equator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final HASHCODE_NULL:I = -0x1

.field public static final INSTANCE:Lorg/apache/commons/collections4/functors/DefaultEquator;

.field private static final serialVersionUID:J = 0xb75d72229dc6c6dL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/collections4/functors/DefaultEquator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/DefaultEquator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/DefaultEquator;->INSTANCE:Lorg/apache/commons/collections4/functors/DefaultEquator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultEquator()Lorg/apache/commons/collections4/functors/DefaultEquator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/functors/DefaultEquator<",
            "TT;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/apache/commons/collections4/functors/DefaultEquator;->INSTANCE:Lorg/apache/commons/collections4/functors/DefaultEquator;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 80
    sget-object v0, Lorg/apache/commons/collections4/functors/DefaultEquator;->INSTANCE:Lorg/apache/commons/collections4/functors/DefaultEquator;

    return-object v0
.end method


# virtual methods
.method public equate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
