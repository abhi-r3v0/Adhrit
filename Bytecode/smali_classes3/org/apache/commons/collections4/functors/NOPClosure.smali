.class public final Lorg/apache/commons/collections4/functors/NOPClosure;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Closure;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Closure<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/Closure;

.field private static final serialVersionUID:J = 0x30d42478696adb72L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/functors/NOPClosure;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/NOPClosure;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nopClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/commons/collections4/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 67
    sget-object v0, Lorg/apache/commons/collections4/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method
