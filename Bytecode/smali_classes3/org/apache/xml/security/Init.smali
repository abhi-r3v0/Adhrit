.class public Lorg/apache/xml/security/Init;
.super Ljava/lang/Object;


# static fields
.field static a:Lorg/apache/commons/logging/Log;

.field static b:Ljava/lang/Class;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xml/security/Init;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.Init"

    invoke-static {v0}, Lorg/apache/xml/security/Init;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/Init;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xml/security/Init;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static final a()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xml/security/Init;->c:Z

    return v0
.end method

.method public static declared-synchronized b()V
    .locals 58

    const-class v1, Lorg/apache/xml/security/Init;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lorg/apache/xml/security/Init;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v11

    new-instance v13, Lorg/apache/xml/security/Init$1;

    invoke-direct {v13}, Lorg/apache/xml/security/Init$1;-><init>()V

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/InputStream;

    invoke-virtual {v11, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lorg/apache/xml/security/keys/KeyInfo;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-interface {v11}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    :goto_0
    if-eqz v11, :cond_1

    const-string v12, "Configuration"

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    const/4 v2, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const-wide/16 v11, 0x0

    move-wide/from16 v19, v11

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    move-wide/from16 v39, v37

    move-wide/from16 v41, v39

    move-wide/from16 v43, v41

    move-wide/from16 v45, v43

    move-wide/from16 v47, v45

    :goto_1
    if-eqz v2, :cond_1e

    if-eqz v2, :cond_1c

    move-wide/from16 v49, v15

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v15

    move-wide/from16 v51, v11

    const/4 v11, 0x1

    if-ne v11, v15, :cond_1b

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ResourceBundles"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v12, v2

    check-cast v12, Lorg/w3c/dom/Element;

    const-string v15, "defaultLanguageCode"

    invoke-interface {v12, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v15

    move-wide/from16 v53, v9

    const-string v9, "defaultCountryCode"

    invoke-interface {v12, v9}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    if-nez v15, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    :goto_2
    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-static {v10, v9}, Lorg/apache/xml/security/utils/I18n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide/from16 v51, v9

    goto :goto_4

    :cond_4
    move-wide/from16 v53, v9

    :goto_4
    const-string v9, "CanonicalizationMethods"

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static {}, Lorg/apache/xml/security/c14n/Canonicalizer;->a()V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v12, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v15, "CanonicalizationMethod"

    invoke-static {v9, v12, v15}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v9

    const/4 v12, 0x0

    :goto_5
    array-length v15, v9

    if-ge v12, v15, :cond_6

    aget-object v15, v9, v12

    const-string v10, "URI"

    move-wide/from16 v56, v13

    const/4 v13, 0x0

    invoke-interface {v15, v13, v10}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aget-object v14, v9, v12

    const-string v15, "JAVACLASS"

    invoke-interface {v14, v13, v15}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v13, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v13}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_5

    sget-object v13, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v21, v9

    :try_start_5
    const-string v9, "Canonicalizer.register("

    invoke-direct {v15, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ", "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ")"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    move-object/from16 v21, v9

    :goto_6
    invoke-static {v10, v14}, Lorg/apache/xml/security/c14n/Canonicalizer;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catch_0
    move-object/from16 v21, v9

    :catch_1
    const/4 v9, 0x2

    :try_start_6
    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v10, v13, v9

    const/4 v9, 0x1

    aput-object v14, v13, v9

    sget-object v9, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    const-string v10, "algorithm.classDoesNotExist"

    invoke-static {v10, v13}, Lorg/apache/xml/security/utils/I18n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v21

    move-wide/from16 v13, v56

    goto :goto_5

    :cond_6
    move-wide/from16 v56, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    goto :goto_8

    :cond_7
    move-wide/from16 v56, v13

    :goto_8
    const-string v9, "TransformAlgorithms"

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v47

    invoke-static {}, Lorg/apache/xml/security/transforms/Transform;->a()V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v10, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v12, "TransformAlgorithm"

    invoke-static {v9, v10, v12}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v9

    const/4 v10, 0x0

    :goto_9
    array-length v12, v9

    if-ge v10, v12, :cond_9

    aget-object v12, v9, v10

    const-string v13, "URI"

    const/4 v14, 0x0

    invoke-interface {v12, v14, v13}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v9, v10

    const-string v15, "JAVACLASS"

    invoke-interface {v13, v14, v15}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v14, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v45, v9

    :try_start_8
    const-string v9, "Transform.register("

    invoke-direct {v15, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ", "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ")"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_a

    :cond_8
    move-object/from16 v45, v9

    :goto_a
    invoke-static {v12, v13}, Lorg/apache/xml/security/transforms/Transform;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    :catch_2
    move-object/from16 v45, v9

    :catch_3
    :try_start_9
    sget-object v9, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    const-string v12, "Not able to found dependecies for algorithm, I\'m keep working."

    invoke-interface {v9, v12}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_b

    :catch_4
    move-object/from16 v45, v9

    :catch_5
    const/4 v9, 0x2

    new-array v14, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v14, v9

    const/4 v9, 0x1

    aput-object v13, v14, v9

    sget-object v9, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    const-string v12, "algorithm.classDoesNotExist"

    invoke-static {v12, v14}, Lorg/apache/xml/security/utils/I18n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v45

    goto :goto_9

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v45

    :cond_a
    const-string v9, "JCEAlgorithmMappings"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object v9, v2

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-static {v9}, Lorg/apache/xml/security/algorithms/JCEMapper;->a(Lorg/w3c/dom/Element;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :cond_b
    const-string v9, "SignatureAlgorithms"

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    invoke-static {}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;->h()V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v10, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v12, "SignatureAlgorithm"

    invoke-static {v9, v10, v12}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v9

    const/4 v10, 0x0

    :goto_c
    array-length v12, v9

    if-ge v10, v12, :cond_d

    aget-object v12, v9, v10

    const-string v13, "URI"

    const/4 v14, 0x0

    invoke-interface {v12, v14, v13}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v9, v10

    const-string v15, "JAVACLASS"

    invoke-interface {v13, v14, v15}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v14, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_c

    sget-object v14, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuffer;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v41, v9

    :try_start_b
    const-string v9, "SignatureAlgorithm.register("

    invoke-direct {v15, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ", "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ")"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_d

    :cond_c
    move-object/from16 v41, v9

    :goto_d
    invoke-static {v12, v13}, Lorg/apache/xml/security/algorithms/SignatureAlgorithm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v9, 0x2

    const/4 v15, 0x0

    goto :goto_e

    :catch_6
    move-object/from16 v41, v9

    :catch_7
    const/4 v9, 0x2

    :try_start_c
    new-array v14, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v12, 0x1

    aput-object v13, v14, v12

    sget-object v12, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    const-string v13, "algorithm.classDoesNotExist"

    invoke-static {v13, v14}, Lorg/apache/xml/security/utils/I18n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v41

    goto :goto_c

    :cond_d
    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v41

    goto :goto_f

    :cond_e
    const/4 v15, 0x0

    :goto_f
    const-string v9, "ResourceResolvers"

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    invoke-static {}, Lorg/apache/xml/security/utils/resolver/ResourceResolver;->a()V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v10, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v12, "Resolver"

    invoke-static {v9, v10, v12}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v9

    const/4 v10, 0x0

    :goto_10
    array-length v12, v9

    if-ge v10, v12, :cond_12

    aget-object v12, v9, v10

    const-string v13, "JAVACLASS"

    const/4 v14, 0x0

    invoke-interface {v12, v14, v13}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v9, v10

    const-string v15, "DESCRIPTION"

    invoke-interface {v13, v14, v15}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_10

    sget-object v14, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_f

    sget-object v14, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v55, v9

    const-string v9, "Register Resolver: "

    invoke-direct {v15, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ": "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_11

    :cond_f
    move-object/from16 v55, v9

    goto :goto_11

    :cond_10
    move-object/from16 v55, v9

    sget-object v9, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    sget-object v9, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuffer;

    const-string v14, "Register Resolver: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, ": For unknown purposes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_11
    :goto_11
    :try_start_d
    invoke-static {v12}, Lorg/apache/xml/security/utils/resolver/ResourceResolver;->a(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_12

    :catchall_0
    move-exception v0

    move-object v9, v0

    :try_start_e
    sget-object v13, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Cannot register:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, " perhaps some needed jars are not installed"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v12, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v55

    const/4 v15, 0x0

    goto/16 :goto_10

    :cond_12
    const-string v9, "KeyResolver"

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    invoke-static {}, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->a()V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    const-string v10, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v12, "Resolver"

    invoke-static {v9, v10, v12}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v9

    const/4 v10, 0x0

    :goto_13
    array-length v12, v9

    if-ge v10, v12, :cond_16

    aget-object v12, v9, v10

    const-string v13, "JAVACLASS"

    const/4 v14, 0x0

    invoke-interface {v12, v14, v13}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v9, v10

    const-string v15, "DESCRIPTION"

    invoke-interface {v13, v14, v15}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_14

    sget-object v14, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_13

    sget-object v14, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v29, v9

    const-string v9, "Register Resolver: "

    invoke-direct {v15, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ": "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_14

    :cond_13
    move-object/from16 v29, v9

    goto :goto_14

    :cond_14
    move-object/from16 v29, v9

    sget-object v9, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_15

    sget-object v9, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuffer;

    const-string v14, "Register Resolver: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, ": For unknown purposes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_15
    :goto_14
    invoke-static {v12}, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->a(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v29

    goto :goto_13

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    :cond_17
    const-string v9, "PrefixMappings"

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v11, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_18

    sget-object v11, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    const-string v12, "Now I try to bind prefixes:"

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_18
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    const-string v12, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v13, "PrefixMapping"

    invoke-static {v11, v12, v13}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v11

    const/4 v12, 0x0

    :goto_15
    array-length v13, v11

    if-ge v12, v13, :cond_1a

    aget-object v13, v11, v12

    const-string v14, "namespace"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aget-object v14, v11, v12

    move-wide/from16 v33, v9

    const-string v9, "prefix"

    invoke-interface {v14, v15, v9}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_19

    sget-object v10, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "Now I try to bind "

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_19
    invoke-static {v13, v9}, Lorg/apache/xml/security/utils/ElementProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v9, v33

    goto :goto_15

    :cond_1a
    move-wide/from16 v33, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide/from16 v35, v33

    move-wide/from16 v11, v51

    move-wide/from16 v33, v9

    goto :goto_17

    :cond_1b
    move-wide/from16 v53, v9

    move-wide/from16 v56, v13

    goto :goto_16

    :cond_1c
    move-wide/from16 v53, v9

    move-wide/from16 v51, v11

    move-wide/from16 v56, v13

    move-wide/from16 v49, v15

    :cond_1d
    :goto_16
    move-wide/from16 v11, v51

    :goto_17
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-wide/from16 v15, v49

    move-wide/from16 v9, v53

    move-wide/from16 v13, v56

    goto/16 :goto_1

    :cond_1e
    move-wide/from16 v53, v9

    move-wide/from16 v51, v11

    move-wide/from16 v56, v13

    move-wide/from16 v49, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuffer;

    const-string v12, "XX_init                             "

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long/2addr v9, v3

    long-to-int v3, v9

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " ms"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_prng                           "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long/2addr v7, v5

    long-to-int v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_parsing                        "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v13, v56, v53

    long-to-int v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_i18n                 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v11, v51, v19

    long-to-int v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_reg_c14n             "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v4, v21, v23

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_reg_jcemapper        "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v4, v25, v27

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_reg_keyInfo          "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v4, v17, v49

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_reg_keyResolver      "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v4, v29, v31

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_reg_prefixes         "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v4, v33, v35

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_reg_resourceresolver "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v4, v37, v39

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_reg_sigalgos         "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v4, v41, v43

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v2, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  XX_configure_reg_transforms       "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v4, v45, v47

    long-to-int v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_18

    :catch_8
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_9
    move-exception v0

    move-object v2, v0

    :try_start_f
    sget-object v3, Lorg/apache/xml/security/Init;->a:Lorg/apache/commons/logging/Log;

    const-string v4, "Bad: "

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1f
    :goto_18
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/xml/security/Init;->c:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method
