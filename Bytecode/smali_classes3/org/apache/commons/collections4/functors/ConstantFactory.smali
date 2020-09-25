.class public Lorg/apache/commons/collections4/functors/ConstantFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Factory;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Factory<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final NULL_INSTANCE:Lorg/apache/commons/collections4/Factory;

.field private static final serialVersionUID:J = -0x30dbf54892a4d5f8L


# instance fields
.field private final iConstant:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lorg/apache/commons/collections4/functors/ConstantFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/functors/ConstantFactory;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/collections4/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections4/Factory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    return-void
.end method

.method public static constantFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 55
    sget-object p0, Lorg/apache/commons/collections4/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections4/Factory;

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/ConstantFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ConstantFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    return-object v0
.end method

.method public getConstant()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    return-object v0
.end method
