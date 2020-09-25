.class Lorg/apache/xml/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xml/security/signature/NodeFilter;


# instance fields
.field a:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;->a:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Node;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;->a:Lorg/w3c/dom/Node;

    if-eq p1, v0, :cond_1

    invoke-static {v0, p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Lorg/w3c/dom/Node;I)I
    .locals 0

    iget-object p2, p0, Lorg/apache/xml/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;->a:Lorg/w3c/dom/Node;

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
