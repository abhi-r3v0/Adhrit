.class public final Lorg/apache/xml/security/signature/XMLSignature;
.super Lorg/apache/xml/security/utils/SignatureElementProxy;


# static fields
.field static a:Lorg/apache/commons/logging/Log;

.field static b:Ljava/lang/Class;


# instance fields
.field private c:Lorg/apache/xml/security/signature/SignedInfo;

.field private d:Lorg/apache/xml/security/keys/KeyInfo;

.field private e:Z

.field private f:Lorg/w3c/dom/Element;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xml/security/signature/XMLSignature;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.signature.XMLSignature"

    invoke-static {v0}, Lorg/apache/xml/security/signature/XMLSignature;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/signature/XMLSignature;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/signature/XMLSignature;->a:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignature;->c:Lorg/apache/xml/security/signature/SignedInfo;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignature;->d:Lorg/apache/xml/security/keys/KeyInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/security/signature/XMLSignature;->e:Z

    iput v0, p0, Lorg/apache/xml/security/signature/XMLSignature;->g:I

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "xml.WrongContent"

    const-string v3, "Signature"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    new-instance v6, Lorg/apache/xml/security/signature/SignedInfo;

    invoke-direct {v6, v1, p2}, Lorg/apache/xml/security/signature/SignedInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/apache/xml/security/signature/XMLSignature;->c:Lorg/apache/xml/security/signature/SignedInfo;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignature;->f:Lorg/w3c/dom/Element;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xml/security/keys/KeyInfo;

    invoke-direct {v0, p1, p2}, Lorg/apache/xml/security/keys/KeyInfo;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignature;->d:Lorg/apache/xml/security/keys/KeyInfo;

    :cond_0
    iput v5, p0, Lorg/apache/xml/security/signature/XMLSignature;->g:I

    return-void

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "SignatureValue"

    aput-object p2, p1, v0

    aput-object v3, p1, v5

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p2, v2, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "SignedInfo"

    aput-object p2, p1, v0

    aput-object v3, p1, v5

    new-instance p2, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p2, v2, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
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


# virtual methods
.method public final a()Lorg/apache/xml/security/signature/SignedInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignature;->c:Lorg/apache/xml/security/signature/SignedInfo;

    return-object v0
.end method

.method public final a(Ljava/security/Key;)Z
    .locals 7

    const-string v0, "empty"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignature;->a()Lorg/apache/xml/security/signature/SignedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xml/security/signature/SignedInfo;->c()Lorg/apache/xml/security/algorithms/SignatureAlgorithm;

    move-result-object v3

    sget-object v4, Lorg/apache/xml/security/signature/XMLSignature;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/apache/xml/security/signature/XMLSignature;->a:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "SignatureMethodURI = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xml/security/algorithms/Algorithm;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v4, Lorg/apache/xml/security/signature/XMLSignature;->a:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "jceSigAlgorithm    = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v4, Lorg/apache/xml/security/signature/XMLSignature;->a:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "jceSigProvider     = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v4, Lorg/apache/xml/security/signature/XMLSignature;->a:Lorg/apache/commons/logging/Log;

    const-string v5, "PublicKey = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xml/security/signature/XMLSignatureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, p1}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;->a(Ljava/security/Key;)V

    new-instance p1, Lorg/apache/xml/security/utils/SignerOutputStream;

    invoke-direct {p1, v3}, Lorg/apache/xml/security/utils/SignerOutputStream;-><init>(Lorg/apache/xml/security/algorithms/SignatureAlgorithm;)V

    new-instance v5, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;

    invoke-direct {v5, p1}, Lorg/apache/xml/security/utils/UnsyncBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v5}, Lorg/apache/xml/security/signature/SignedInfo;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignature;->b()[B

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/xml/security/signature/XMLSignatureException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {v3}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;->f()V

    throw p1

    :catch_1
    invoke-virtual {v3}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;->f()V

    :goto_0
    invoke-virtual {v3, v4}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;->b([B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/xml/security/signature/XMLSignature;->a:Lorg/apache/commons/logging/Log;

    const-string v2, "Signature verification failed."

    invoke-interface {p1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-boolean p1, p0, Lorg/apache/xml/security/signature/XMLSignature;->e:Z

    invoke-virtual {v2, p1}, Lorg/apache/xml/security/signature/SignedInfo;->b(Z)Z

    move-result p1
    :try_end_2
    .catch Lorg/apache/xml/security/signature/XMLSignatureException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catch_2
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p1

    throw p1

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "Didn\'t get a key"

    aput-object v2, p1, v1

    new-instance v1, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public final b()[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignature;->f:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lorg/apache/xml/security/utils/Base64;->a(Lorg/w3c/dom/Element;)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xml/security/exceptions/Base64DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "Signature"

    return-object v0
.end method
