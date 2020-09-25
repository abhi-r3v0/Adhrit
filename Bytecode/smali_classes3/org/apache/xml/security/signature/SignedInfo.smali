.class public Lorg/apache/xml/security/signature/SignedInfo;
.super Lorg/apache/xml/security/signature/Manifest;


# instance fields
.field private g:Lorg/apache/xml/security/algorithms/SignatureAlgorithm;

.field private h:[B

.field private i:Lorg/w3c/dom/Element;

.field private q:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/xml/security/signature/SignedInfo;->a(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/xml/security/signature/Manifest;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/xml/security/signature/SignedInfo;->g:Lorg/apache/xml/security/algorithms/SignatureAlgorithm;

    iput-object p2, p0, Lorg/apache/xml/security/signature/SignedInfo;->h:[B

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/signature/SignedInfo;->i:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/signature/SignedInfo;->q:Lorg/w3c/dom/Element;

    new-instance p1, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;

    iget-object p2, p0, Lorg/apache/xml/security/signature/SignedInfo;->q:Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lorg/apache/xml/security/utils/ElementProxy;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xml/security/signature/SignedInfo;->g:Lorg/apache/xml/security/algorithms/SignatureAlgorithm;

    return-void
.end method

.method private static a(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 5

    const-string v0, "empty"

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Algorithm"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/2006/12/xml-c14n11"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://www.w3.org/2006/12/xml-c14n11#WithComments"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lorg/apache/xml/security/c14n/Canonicalizer;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/Canonicalizer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/xml/security/c14n/Canonicalizer;->a(Lorg/w3c/dom/Node;)[B

    move-result-object v1

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v1, Lorg/apache/xml/security/exceptions/XMLSecurityException;

    invoke-direct {v1, v0, p0}, Lorg/apache/xml/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lorg/apache/xml/security/exceptions/XMLSecurityException;

    invoke-direct {v1, v0, p0}, Lorg/apache/xml/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p0

    new-instance v1, Lorg/apache/xml/security/exceptions/XMLSecurityException;

    invoke-direct {v1, v0, p0}, Lorg/apache/xml/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/signature/SignedInfo;->h:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/SignedInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/security/c14n/Canonicalizer;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/Canonicalizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/Canonicalizer;->a(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/SignedInfo;->f()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/Canonicalizer;->a(Lorg/w3c/dom/Node;)[B

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xml/security/c14n/Canonicalizer;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)[B

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/signature/SignedInfo;->i:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Algorithm"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/xml/security/signature/Manifest;->a(Z)Z

    move-result p1

    return p1
.end method

.method protected c()Lorg/apache/xml/security/algorithms/SignatureAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/SignedInfo;->g:Lorg/apache/xml/security/algorithms/SignatureAlgorithm;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "SignedInfo"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/xml/security/signature/SignedInfo;->i:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Algorithm"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/signature/SignedInfo;->i:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v3, Lorg/apache/xml/security/transforms/params/InclusiveNamespaces;

    invoke-direct {v3, v0, v2}, Lorg/apache/xml/security/transforms/params/InclusiveNamespaces;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xml/security/transforms/params/InclusiveNamespaces;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object v1
.end method
