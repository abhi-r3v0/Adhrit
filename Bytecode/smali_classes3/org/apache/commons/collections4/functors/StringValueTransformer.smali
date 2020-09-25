.class public final Lorg/apache/commons/collections4/functors/StringValueTransformer;
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
        "TT;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x683cd3613f24060eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/functors/StringValueTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/StringValueTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/commons/collections4/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method public static stringValueTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/commons/collections4/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/functors/StringValueTransformer;->transform(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final transform(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
