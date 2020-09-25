.class public Lorg/apache/xml/security/transforms/implementations/TransformXPath2Filter;
.super Lorg/apache/xml/security/transforms/TransformSpi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/security/transforms/TransformSpi;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;)Ljava/util/Set;
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/xml/security/signature/XMLSignatureInput;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "XPath"

    const-string v2, "http://www.w3.org/2002/06/xmldsig-filter2"

    const-string v3, "empty"

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/utils/ElementProxy;->k()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->a(Lorg/w3c/dom/Document;)V

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;

    invoke-static {}, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->a()Lorg/apache/xpath/CachedXPathAPI;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;-><init>(Lorg/apache/xpath/CachedXPathAPI;)V

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/utils/ElementProxy;->k()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-static {v8, v2, v1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/xml/security/utils/XMLUtils;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v11

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/xml/security/utils/XMLUtils;->a(Ljava/util/Set;)Lorg/w3c/dom/Document;

    move-result-object v11

    :goto_0
    if-ge v9, v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/utils/ElementProxy;->k()Lorg/w3c/dom/Element;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-static {v12, v2, v1, v9}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->k()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/apache/xml/security/transforms/params/XPath2FilterContainer;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/apache/xml/security/transforms/params/XPath2FilterContainer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/xml/security/transforms/params/XPath2FilterContainer;->f()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-virtual {v12}, Lorg/apache/xml/security/transforms/params/XPath2FilterContainer;->f()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lorg/apache/xml/security/utils/ElementProxy;->k()Lorg/w3c/dom/Element;

    move-result-object v15

    invoke-virtual {v7, v11, v13, v14, v15}, Lorg/apache/xml/security/utils/CachedXPathFuncHereAPI;->a(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-virtual {v12}, Lorg/apache/xml/security/transforms/params/XPath2FilterContainer;->a()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Lorg/apache/xml/security/transforms/params/XPath2FilterContainer;->b()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Lorg/apache/xml/security/transforms/params/XPath2FilterContainer;->c()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;

    invoke-static {v4}, Lorg/apache/xml/security/transforms/implementations/TransformXPath2Filter;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v5}, Lorg/apache/xml/security/transforms/implementations/TransformXPath2Filter;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v6}, Lorg/apache/xml/security/transforms/implementations/TransformXPath2Filter;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->a(Lorg/apache/xml/security/signature/NodeFilter;)V

    invoke-virtual {v0, v10}, Lorg/apache/xml/security/signature/XMLSignatureInput;->d(Z)V

    return-object v0

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v9

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    const-string v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/xml/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/xml/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/xml/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {v1, v3, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {v1, v3, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {v1, v3, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {v1, v3, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {v1, v3, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {v1, v3, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {v1, v3, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {v1, v3, v0}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
