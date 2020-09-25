.class public Lorg/apache/xml/security/utils/IdResolver;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/Class;

.field private static b:Lorg/apache/commons/logging/Log;

.field private static c:Ljava/util/WeakHashMap;

.field private static d:Ljava/util/List;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lorg/apache/xml/security/utils/IdResolver;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.utils.IdResolver"

    invoke-static {v0}, Lorg/apache/xml/security/utils/IdResolver;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/utils/IdResolver;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/utils/IdResolver;->b:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xml/security/utils/IdResolver;->c:Ljava/util/WeakHashMap;

    const-string v1, "http://www.w3.org/2000/09/xmldsig#"

    const-string v2, "http://www.w3.org/2001/04/xmlenc#"

    const-string v3, "http://schemas.xmlsoap.org/soap/security/2000-12"

    const-string v4, "http://www.w3.org/2002/03/xkms#"

    const-string v5, "urn:oasis:names:tc:SAML:1.0:assertion"

    const-string v6, "urn:oasis:names:tc:SAML:1.0:protocol"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/utils/IdResolver;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lorg/apache/xml/security/utils/IdResolver;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Element;Ljava/lang/String;[Lorg/w3c/dom/Element;)I
    .locals 12

    invoke-interface {p0}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    sget-object v2, Lorg/apache/xml/security/utils/IdResolver;->d:Ljava/util/List;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    sget v2, Lorg/apache/xml/security/utils/IdResolver;->e:I

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v3, :cond_a

    invoke-interface {v0, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    sget-object v7, Lorg/apache/xml/security/utils/IdResolver;->d:Ljava/util/List;

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    :goto_1
    if-gez v7, :cond_3

    sget v7, Lorg/apache/xml/security/utils/IdResolver;->e:I

    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-gt v9, v10, :cond_9

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x49

    if-ne v9, v11, :cond_7

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x64

    if-ne v8, v10, :cond_5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    aput-object p0, p2, v7

    if-nez v7, :cond_9

    return v9

    :cond_5
    const/16 v9, 0x44

    if-ne v8, v9, :cond_9

    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eq v7, v5, :cond_6

    sget v7, Lorg/apache/xml/security/utils/IdResolver;->e:I

    :cond_6
    aput-object p0, p2, v7

    goto :goto_2

    :cond_7
    const-string v5, "id"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eq v7, v10, :cond_8

    sget v7, Lorg/apache/xml/security/utils/IdResolver;->e:I

    :cond_8
    aput-object p0, p2, v7

    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    const-string v0, "ResponseID"

    const-string v3, "RequestID"

    if-ne v2, v5, :cond_c

    const-string v4, "OriginalRequestID"

    invoke-interface {p0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    aput-object p0, p2, v5

    goto :goto_3

    :cond_c
    const/4 v4, 0x4

    if-ne v2, v4, :cond_d

    const-string v5, "AssertionID"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    aput-object p0, p2, v4

    goto :goto_3

    :cond_d
    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    aput-object p0, p2, v4

    :cond_f
    :goto_3
    return v1
.end method

.method private static a(Lorg/w3c/dom/Node;Ljava/lang/String;[Lorg/w3c/dom/Element;)I
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v5, 0x9

    if-eq v3, v5, :cond_0

    const/16 v5, 0xb

    if-eq v3, v5, :cond_0

    move-object p0, v2

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object v2, p0

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-static {v2, p1, p2}, Lorg/apache/xml/security/utils/IdResolver;->a(Lorg/w3c/dom/Element;Ljava/lang/String;[Lorg/w3c/dom/Element;)I

    move-result v3

    if-ne v3, v4, :cond_2

    return v4

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object v1, v2

    :cond_4
    move-object p0, v3

    :cond_5
    :goto_1
    if-nez p0, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-eq v4, v2, :cond_5

    move-object v1, v0

    goto :goto_1

    :cond_6
    if-nez p0, :cond_7

    return v4

    :cond_7
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0
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

.method public static a(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-static {p0, p1}, Lorg/apache/xml/security/utils/IdResolver;->c(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/xml/security/utils/IdResolver;->b:Lorg/apache/commons/logging/Log;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "I could find an Element using the simple getElementByIdType method: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/xml/security/utils/IdResolver;->b(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/apache/xml/security/utils/IdResolver;->b:Lorg/apache/commons/logging/Log;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "I could find an Element using the simple getElementByIdUsingDOM method: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/xml/security/utils/IdResolver;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lorg/apache/xml/security/utils/IdResolver;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    sget v0, Lorg/apache/xml/security/utils/IdResolver;->e:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Lorg/w3c/dom/Element;

    invoke-static {p0, p1, v1}, Lorg/apache/xml/security/utils/IdResolver;->a(Lorg/w3c/dom/Node;Ljava/lang/String;[Lorg/w3c/dom/Element;)I

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    aget-object p1, v1, p0

    if-eqz p1, :cond_0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    sget-object v1, Lorg/apache/xml/security/utils/IdResolver;->c:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/apache/xml/security/utils/IdResolver;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/WeakHashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sget-object v3, Lorg/apache/xml/security/utils/IdResolver;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private static b(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3

    sget-object v0, Lorg/apache/xml/security/utils/IdResolver;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xml/security/utils/IdResolver;->b:Lorg/apache/commons/logging/Log;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getElementByIdUsingDOM() Search for ID "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3

    sget-object v0, Lorg/apache/xml/security/utils/IdResolver;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xml/security/utils/IdResolver;->b:Lorg/apache/commons/logging/Log;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getElementByIdType() Search for ID "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lorg/apache/xml/security/utils/IdResolver;->c:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/xml/security/utils/IdResolver;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/WeakHashMap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
