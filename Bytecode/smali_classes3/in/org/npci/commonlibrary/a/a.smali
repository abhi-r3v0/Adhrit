.class public Lin/org/npci/commonlibrary/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/w3c/dom/Document;Ljava/security/PublicKey;)Z
    .locals 2

    const-string v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "Signature"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xml/security/signature/XMLSignature;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/security/signature/XMLSignature;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/signature/XMLSignature;->a(Ljava/security/Key;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Signature not found"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
