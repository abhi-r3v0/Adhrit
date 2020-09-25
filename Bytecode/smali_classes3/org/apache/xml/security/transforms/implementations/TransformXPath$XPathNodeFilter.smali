.class Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xml/security/signature/NodeFilter;


# instance fields
.field a:Lorg/apache/xml/utils/PrefixResolverDefault;

.field b:Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;

.field c:Lorg/w3c/dom/Node;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;

    invoke-static {}, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->a()Lorg/apache/xpath/CachedXPathAPI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;-><init>(Lorg/apache/xpath/CachedXPathAPI;)V

    iput-object v0, p0, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->b:Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;

    iput-object p2, p0, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->c:Lorg/w3c/dom/Node;

    iput-object p3, p0, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->d:Ljava/lang/String;

    new-instance p2, Lorg/apache/xml/utils/PrefixResolverDefault;

    invoke-direct {p2, p1}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    iput-object p2, p0, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->a:Lorg/apache/xml/utils/PrefixResolverDefault;

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Node;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->b:Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;

    iget-object v3, p0, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->c:Lorg/w3c/dom/Node;

    iget-object v4, p0, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->d:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->a:Lorg/apache/xml/utils/PrefixResolverDefault;

    invoke-virtual {v2, p1, v3, v4, v5}, Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;->a(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    new-instance v0, Ljava/lang/Short;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    aput-object v0, v3, v1

    new-instance p1, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;

    const-string v0, "signature.Transform.nodeAndType"

    invoke-direct {p1, v0, v3, v2}, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    new-instance p1, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;

    const-string v0, "signature.Transform.node"

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw p1
.end method

.method public a(Lorg/w3c/dom/Node;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xml/security/transforms/implementations/TransformXPath$XPathNodeFilter;->a(Lorg/w3c/dom/Node;)I

    move-result p1

    return p1
.end method
