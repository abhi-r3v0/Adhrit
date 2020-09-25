.class public Lorg/apache/xml/security/transforms/implementations/TransformBase64Decode;
.super Lorg/apache/xml/security/transforms/TransformSpi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->g()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p3

    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    check-cast p3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p3, p1}, Lorg/apache/xml/security/transforms/implementations/TransformBase64Decode;->a(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/Base64;->a(Ljava/lang/String;)[B

    move-result-object p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {p2, p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>([B)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/xml/security/utils/Base64;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    new-instance p1, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {p1, v0}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {p1, p2}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b(Ljava/io/OutputStream;)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->h()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->f()Z

    move-result p3
    :try_end_0
    .catch Lorg/apache/xml/security/exceptions/Base64DecodingException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->c()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/security/transforms/implementations/TransformBase64Decode;->a(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/Base64;->a(Ljava/lang/String;)[B

    move-result-object p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {p2, p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>([B)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/xml/security/exceptions/Base64DecodingException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p2

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Lorg/apache/xml/security/transforms/TransformationException;

    const-string p3, "SAX exception"

    invoke-direct {p2, p3, p1}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/transforms/TransformationException;

    const-string p3, "c14n.Canonicalizer.Exception"

    invoke-direct {p2, p3, p1}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_4
    :goto_0
    if-nez p2, :cond_5

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->e()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/Base64;->a([B)[B

    move-result-object p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {p2, p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>([B)V

    return-object p2

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->j()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->f()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p3, p2}, Lorg/apache/xml/security/utils/Base64;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->e()[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/xml/security/utils/Base64;->a([BLjava/io/OutputStream;)V

    :goto_2
    new-instance p1, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {p1, v0}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {p1, p2}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Lorg/apache/xml/security/exceptions/Base64DecodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/transforms/TransformationException;

    const-string p3, "Base64Decoding"

    invoke-direct {p2, p3, p1}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public a(Lorg/apache/xml/security/signature/XMLSignatureInput;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/security/transforms/implementations/TransformBase64Decode;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object p1

    return-object p1
.end method

.method a(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/security/transforms/implementations/TransformBase64Decode;->a(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method
