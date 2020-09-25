.class public Lorg/apache/xml/security/algorithms/JCEMapper$Algorithm;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AlgorithmClass"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/algorithms/JCEMapper$Algorithm;->a:Ljava/lang/String;

    const-string v0, "KeyLength"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/algorithms/JCEMapper$Algorithm;->b:Ljava/lang/String;

    const-string v0, "RequiredKey"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/algorithms/JCEMapper$Algorithm;->c:Ljava/lang/String;

    return-void
.end method
