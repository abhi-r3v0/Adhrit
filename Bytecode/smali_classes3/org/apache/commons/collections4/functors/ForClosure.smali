.class public Lorg/apache/commons/collections4/functors/ForClosure;
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
.field private static final serialVersionUID:J = -0x10842851d0d342aaL


# instance fields
.field private final iClosure:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iCount:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/collections4/Closure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iCount:I

    .line 71
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    return-void
.end method

.method public static forClosure(ILorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    if-lez p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return-object p1

    .line 58
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/ForClosure;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/functors/ForClosure;-><init>(ILorg/apache/commons/collections4/Closure;)V

    return-object v0

    .line 53
    :cond_2
    :goto_0
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iCount:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iClosure:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/apache/commons/collections4/functors/ForClosure;->iCount:I

    return v0
.end method
