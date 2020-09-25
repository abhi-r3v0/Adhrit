.class public final Lorg/apache/xml/security/transforms/Transform;
.super Lorg/apache/xml/security/utils/SignatureElementProxy;


# static fields
.field static a:Ljava/lang/Class;

.field private static b:Lorg/apache/commons/logging/Log;

.field private static c:Z

.field private static d:Ljava/util/HashMap;

.field private static e:Ljava/util/HashMap;


# instance fields
.field private f:Lorg/apache/xml/security/transforms/TransformSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xml/security/transforms/Transform;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.transforms.Transform"

    invoke-static {v0}, Lorg/apache/xml/security/transforms/Transform;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/transforms/Transform;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/transforms/Transform;->b:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xml/security/transforms/Transform;->c:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xml/security/transforms/Transform;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xml/security/transforms/Transform;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/xml/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xml/security/transforms/Transform;->f:Lorg/apache/xml/security/transforms/TransformSpi;

    iget-object v0, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    const-string v1, "Algorithm"

    invoke-interface {v0, p1, v1, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/xml/security/transforms/Transform;->d(Ljava/lang/String;)Lorg/apache/xml/security/transforms/TransformSpi;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/transforms/Transform;->f:Lorg/apache/xml/security/transforms/TransformSpi;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    sget-object p1, Lorg/apache/xml/security/transforms/Transform;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/xml/security/transforms/Transform;->b:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Create URI \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\" class \""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/apache/xml/security/transforms/Transform;->f:Lorg/apache/xml/security/transforms/TransformSpi;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object p1, Lorg/apache/xml/security/transforms/Transform;->b:Lorg/apache/commons/logging/Log;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "The NodeList is "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    :goto_0
    invoke-interface {p3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    invoke-interface {p3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2, v1}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    new-instance p2, Lorg/apache/xml/security/transforms/InvalidTransformException;

    const-string p3, "signature.Transform.UnknownTransform"

    invoke-direct {p2, p3, p1}, Lorg/apache/xml/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/xml/security/transforms/Transform;->f:Lorg/apache/xml/security/transforms/TransformSpi;

    const-string v0, "Algorithm"

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lorg/apache/xml/security/transforms/Transform;->d(Ljava/lang/String;)Lorg/apache/xml/security/transforms/TransformSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/transforms/Transform;->f:Lorg/apache/xml/security/transforms/TransformSpi;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    new-instance p1, Lorg/apache/xml/security/transforms/InvalidTransformException;

    const-string v0, "signature.Transform.UnknownTransform"

    invoke-direct {p1, v0, p2}, Lorg/apache/xml/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v0, "Transform"

    aput-object v0, p1, p2

    new-instance p2, Lorg/apache/xml/security/transforms/TransformationException;

    const-string v0, "xml.WrongContent"

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

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

.method public static a(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/xml/security/transforms/Transform;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/xml/security/transforms/Transform;->a(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)Lorg/apache/xml/security/transforms/Transform;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)Lorg/apache/xml/security/transforms/Transform;
    .locals 1

    new-instance v0, Lorg/apache/xml/security/transforms/Transform;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xml/security/transforms/Transform;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-boolean v0, Lorg/apache/xml/security/transforms/Transform;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/xml/security/transforms/Transform;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xml/security/transforms/Transform;->c:Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lorg/apache/xml/security/transforms/Transform;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lorg/apache/xml/security/transforms/Transform;->d:Ljava/util/HashMap;

    sget-object v1, Lorg/apache/xml/security/transforms/Transform;->a:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xml.security.transforms.Transform"

    invoke-static {v1}, Lorg/apache/xml/security/transforms/Transform;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/security/transforms/Transform;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/xml/security/transforms/Transform;->a:Ljava/lang/Class;

    :goto_0
    invoke-static {p1, v1}, Lorg/apache/xml/security/utils/ClassLoaderUtils;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const/4 p0, 0x1

    aput-object v0, p1, p0

    new-instance p0, Lorg/apache/xml/security/exceptions/AlgorithmAlreadyRegisteredException;

    const-string v0, "algorithm.alreadyRegistered"

    invoke-direct {p0, v0, p1}, Lorg/apache/xml/security/exceptions/AlgorithmAlreadyRegisteredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lorg/apache/xml/security/transforms/Transform;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Lorg/apache/xml/security/transforms/TransformSpi;
    .locals 5

    const-string v0, "signature.Transform.UnknownTransform"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lorg/apache/xml/security/transforms/Transform;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Lorg/apache/xml/security/transforms/TransformSpi;

    return-object v3

    :cond_0
    sget-object v3, Lorg/apache/xml/security/transforms/Transform;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/security/transforms/TransformSpi;

    sget-object v4, Lorg/apache/xml/security/transforms/Transform;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    new-instance p0, Lorg/apache/xml/security/transforms/InvalidTransformException;

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/xml/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw p0

    :catch_1
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    new-instance p0, Lorg/apache/xml/security/transforms/InvalidTransformException;

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/xml/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw p0
.end method


# virtual methods
.method public final a(Lorg/apache/xml/security/signature/XMLSignatureInput;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 5

    const-string v0, "signature.Transform.ErrorDuringTransform"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/security/transforms/Transform;->f:Lorg/apache/xml/security/transforms/TransformSpi;

    invoke-virtual {v4, p1, p0}, Lorg/apache/xml/security/transforms/TransformSpi;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xml/security/transforms/Transform;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "SAXException"

    aput-object v2, v3, v1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, v3, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xml/security/transforms/Transform;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "ParserConfigurationException"

    aput-object v2, v3, v1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, v3, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 5

    const-string v0, "signature.Transform.ErrorDuringTransform"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/security/transforms/Transform;->f:Lorg/apache/xml/security/transforms/TransformSpi;

    invoke-virtual {v4, p1, p2, p0}, Lorg/apache/xml/security/transforms/TransformSpi;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xml/security/transforms/Transform;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    const-string v2, "SAXException"

    aput-object v2, p2, v1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, p2, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xml/security/transforms/Transform;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    const-string v2, "ParserConfigurationException"

    aput-object v2, p2, v1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, p2, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/utils/ElementProxy;->k:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Algorithm"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "Transform"

    return-object v0
.end method
