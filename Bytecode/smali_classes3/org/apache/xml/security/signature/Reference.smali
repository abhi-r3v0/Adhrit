.class public Lorg/apache/xml/security/signature/Reference;
.super Lorg/apache/xml/security/utils/SignatureElementProxy;


# static fields
.field static a:Lorg/apache/commons/logging/Log;

.field static d:Ljava/lang/Class;

.field private static e:Z


# instance fields
.field b:Lorg/apache/xml/security/signature/Manifest;

.field c:Lorg/apache/xml/security/signature/XMLSignatureInput;

.field private f:Lorg/apache/xml/security/transforms/Transforms;

.field private g:Lorg/w3c/dom/Element;

.field private h:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xml/security/signature/Reference$1;

    invoke-direct {v0}, Lorg/apache/xml/security/signature/Reference$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lorg/apache/xml/security/signature/Reference;->e:Z

    sget-object v0, Lorg/apache/xml/security/signature/Reference;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.signature.Reference"

    invoke-static {v0}, Lorg/apache/xml/security/signature/Reference;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/signature/Reference;->d:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/signature/Reference;->a:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/xml/security/signature/Manifest;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/signature/Reference;->b:Lorg/apache/xml/security/signature/Manifest;

    iput-object p2, p0, Lorg/apache/xml/security/utils/ElementProxy;->l:Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Transforms"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/apache/xml/security/transforms/Transforms;

    iget-object v0, p0, Lorg/apache/xml/security/utils/ElementProxy;->l:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lorg/apache/xml/security/transforms/Transforms;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xml/security/signature/Reference;->f:Lorg/apache/xml/security/transforms/Transforms;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/xml/security/signature/Reference;->g:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/signature/Reference;->h:Lorg/w3c/dom/Element;

    iput-object p3, p0, Lorg/apache/xml/security/signature/Reference;->b:Lorg/apache/xml/security/signature/Manifest;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 2

    const-string v0, "empty"

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/Reference;->h()Lorg/apache/xml/security/transforms/Transforms;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xml/security/transforms/Transforms;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/signature/Reference;->c:Lorg/apache/xml/security/signature/XMLSignatureInput;
    :try_end_0
    .catch Lorg/apache/xml/security/utils/resolver/ResourceResolverException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/xml/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/xml/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/xml/security/transforms/TransformationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private a(Z)[B
    .locals 6

    const-string v0, "empty"

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/Reference;->a()Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->c()V

    new-instance v2, Lorg/apache/xml/security/utils/DigesterOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/xml/security/utils/DigesterOutputStream;-><init>(Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;)V

    new-instance v1, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;

    invoke-direct {v1, v2}, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lorg/apache/xml/security/signature/Reference;->a(Ljava/io/OutputStream;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object v3

    sget-boolean v4, Lorg/apache/xml/security/signature/Reference;->e:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {v3}, Lorg/apache/xml/security/signature/XMLSignatureInput;->i()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v3}, Lorg/apache/xml/security/signature/XMLSignatureInput;->h()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xml/security/signature/Reference;->f:Lorg/apache/xml/security/transforms/Transforms;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/xml/security/transforms/Transforms;

    iget-object v4, p0, Lorg/apache/xml/security/utils/ElementProxy;->m:Lorg/w3c/dom/Document;

    invoke-direct {p1, v4}, Lorg/apache/xml/security/transforms/Transforms;-><init>(Lorg/w3c/dom/Document;)V

    iput-object p1, p0, Lorg/apache/xml/security/signature/Reference;->f:Lorg/apache/xml/security/transforms/Transforms;

    iget-object p1, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    iget-object v4, p0, Lorg/apache/xml/security/signature/Reference;->f:Lorg/apache/xml/security/transforms/Transforms;

    invoke-virtual {v4}, Lorg/apache/xml/security/utils/ElementProxy;->k()Lorg/w3c/dom/Element;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xml/security/signature/Reference;->g:Lorg/w3c/dom/Element;

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Element;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    iget-object p1, p0, Lorg/apache/xml/security/signature/Reference;->f:Lorg/apache/xml/security/transforms/Transforms;

    const-string v4, "http://www.w3.org/2006/12/xml-c14n11"

    invoke-virtual {p1, v4}, Lorg/apache/xml/security/transforms/Transforms;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v3, v1, p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->a(Ljava/io/OutputStream;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->a(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Lorg/apache/xml/security/utils/DigesterOutputStream;->a()[B

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public a()Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/signature/Reference;->g:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "Algorithm"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/security/utils/ElementProxy;->m:Lorg/w3c/dom/Document;

    invoke-static {v1, v0}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/OutputStream;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/Reference;->g()Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/xml/security/signature/Reference;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/signature/Reference;->c:Lorg/apache/xml/security/signature/XMLSignatureInput;
    :try_end_0
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;

    const-string v1, "empty"

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "URI"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Type"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Reference"

    return-object v0
.end method

.method public f()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/Reference;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2000/09/xmldsig#Manifest"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 5

    const-string v0, "empty"

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    const-string v2, "URI"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v2, p0, Lorg/apache/xml/security/utils/ElementProxy;->l:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xml/security/signature/Reference;->b:Lorg/apache/xml/security/signature/Manifest;

    iget-object v4, v4, Lorg/apache/xml/security/signature/Manifest;->e:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lorg/apache/xml/security/utils/resolver/ResourceResolver;->a(Lorg/w3c/dom/Attr;Ljava/lang/String;Ljava/util/List;)Lorg/apache/xml/security/utils/resolver/ResourceResolver;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/apache/xml/security/signature/Reference;->b:Lorg/apache/xml/security/signature/Manifest;

    iget-object v3, v3, Lorg/apache/xml/security/signature/Manifest;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lorg/apache/xml/security/utils/resolver/ResourceResolver;->a(Ljava/util/Map;)V

    iget-object v3, p0, Lorg/apache/xml/security/utils/ElementProxy;->l:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/apache/xml/security/utils/resolver/ResourceResolver;->b(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    new-instance v2, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;

    const-string v3, "signature.Verification.Reference.NoInput"

    invoke-direct {v2, v3, v1}, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/xml/security/utils/resolver/ResourceResolverException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;

    invoke-direct {v2, v0, v1}, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;

    invoke-direct {v2, v0, v1}, Lorg/apache/xml/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public h()Lorg/apache/xml/security/transforms/Transforms;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/Reference;->f:Lorg/apache/xml/security/transforms/Transforms;

    return-object v0
.end method

.method public i()[B
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/signature/Reference;->h:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/xml/security/utils/Base64;->a(Lorg/w3c/dom/Element;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DigestValue"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www.w3.org/2000/09/xmldsig#"

    aput-object v2, v0, v1

    new-instance v1, Lorg/apache/xml/security/exceptions/XMLSecurityException;

    const-string v2, "signature.Verification.NoSignatureElement"

    invoke-direct {v1, v2, v0}, Lorg/apache/xml/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public j()Z
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/Reference;->i()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/xml/security/signature/Reference;->a(Z)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a([B[B)Z

    move-result v2

    const-string v3, "\""

    if-nez v2, :cond_0

    sget-object v4, Lorg/apache/xml/security/signature/Reference;->a:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Verification failed for URI \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/Reference;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    sget-object v3, Lorg/apache/xml/security/signature/Reference;->a:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Expected Digest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xml/security/utils/Base64;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/xml/security/signature/Reference;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Actual Digest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/xml/security/utils/Base64;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xml/security/signature/Reference;->a:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "Verification successful for URI \""

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/Reference;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method
