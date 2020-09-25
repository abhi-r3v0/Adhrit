.class public Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;
.super Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;


# static fields
.field static d:Lorg/apache/commons/logging/Log;

.field static e:Ljava/lang/Class;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.utils.resolver.implementations.ResolverDirectHTTP"

    invoke-static {v0}, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->e:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    const-string v1, "http.proxy.host"

    const-string v2, "http.proxy.port"

    const-string v3, "http.proxy.username"

    const-string v4, "http.proxy.password"

    const-string v5, "http.basic.username"

    const-string v6, "http.basic.password"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/URI;
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xml/utils/URI;

    new-instance v1, Lorg/apache/xml/utils/URI;

    invoke-direct {v1, p2}, Lorg/apache/xml/utils/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/utils/URI;-><init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/xml/utils/URI;

    invoke-direct {p2, p1}, Lorg/apache/xml/utils/URI;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method static c(Ljava/lang/String;)Ljava/lang/Class;
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
.method public a(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "generic.EmptyMessage"

    :try_start_0
    sget-object v0, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->f:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    :try_start_1
    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->f:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const-string v9, ":"

    const-string v10, "http.proxyPort"

    const-string v11, "http.proxyHost"

    const-string v12, "http.proxySet"

    const/4 v13, 0x0

    if-eqz v8, :cond_2

    :try_start_2
    sget-object v14, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    sget-object v14, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuffer;

    const-string v7, "Use of HTTP proxy enabled: "

    invoke-direct {v15, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "true"

    invoke-static {v12, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v10, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_2
    move-object v7, v13

    move-object v14, v7

    move-object v15, v14

    :goto_1
    if-eqz v7, :cond_3

    if-eqz v14, :cond_3

    if-eqz v15, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/URI;

    move-result-object v0

    new-instance v5, Lorg/apache/xml/utils/URI;

    invoke-direct {v5, v0}, Lorg/apache/xml/utils/URI;-><init>(Lorg/apache/xml/utils/URI;)V

    invoke-virtual {v5, v13}, Lorg/apache/xml/utils/URI;->setFragment(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URL;

    invoke-virtual {v5}, Lorg/apache/xml/utils/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URLConnection;

    sget-object v13, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->f:[Ljava/lang/String;

    const/16 v17, 0x2

    aget-object v13, v13, v17

    invoke-virtual {v1, v13}, Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v17, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->f:[Ljava/lang/String;

    const/16 v18, 0x3

    aget-object v2, v17, v18

    invoke-virtual {v1, v2}, Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v13, :cond_4

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xml/security/utils/Base64;->b([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Proxy-Authorization"

    invoke-virtual {v5, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "WWW-Authenticate"

    invoke-virtual {v5, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "Basic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->f:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->f:[Ljava/lang/String;

    const/4 v13, 0x5

    aget-object v3, v3, v13

    invoke-virtual {v1, v3}, Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URLConnection;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xml/security/utils/Base64;->b([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    const-string v6, "Basic "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "Content-Type"

    invoke-virtual {v5, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x1000

    new-array v6, v6, [B

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-ltz v13, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v5, v6, v1, v13}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v9, v13

    move-object/from16 v1, p0

    goto :goto_3

    :cond_6
    sget-object v1, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, "Fetched "

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " bytes from URI "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {v0}, Lorg/apache/xml/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/xml/security/signature/XMLSignatureInput;->a(Ljava/lang/String;)V

    if-eqz v8, :cond_7

    if-eqz v16, :cond_7

    invoke-static {v12, v7}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v14}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v10, v15}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    return-object v1

    :catch_0
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v4, v0, v2, v3}, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lorg/w3c/dom/Attr;Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    :goto_4
    new-instance v1, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;

    invoke-direct {v1, v4, v0, v2, v3}, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lorg/w3c/dom/Attr;Ljava/lang/String;)V

    throw v1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    const-string p2, "quick fail, uri == null"

    :goto_0
    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I was asked whether I can resolve "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    const-string v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "I state that I can\'t resolve "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    return v0

    :cond_5
    :goto_1
    sget-object p2, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "I state that I can resolve "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_2
    sget-object p1, Lorg/apache/xml/security/utils/resolver/implementations/ResolverDirectHTTP;->d:Lorg/apache/commons/logging/Log;

    const-string p2, "quick fail for empty URIs and local ones"

    goto :goto_0
.end method
