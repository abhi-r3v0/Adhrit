.class public abstract Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;
.super Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;


# instance fields
.field b:Z

.field final c:Ljava/util/SortedSet;

.field d:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;-><init>(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->b:Z

    new-instance p1, Ljava/util/TreeSet;

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->g:Lorg/apache/xml/security/c14n/helper/AttrCompare;

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->c:Ljava/util/SortedSet;

    new-instance p1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;

    invoke-direct {p1}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->d:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;

    return-void
.end method


# virtual methods
.method a(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 9

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->c:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xml"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    invoke-virtual {p2, v6, v7, v5}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->a(Lorg/w3c/dom/Attr;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const/4 p1, 0x1

    aput-object v6, p2, p1

    const/4 p1, 0x2

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    new-instance p1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string v0, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {p1, v0, p2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->b:Z

    if-eqz p1, :cond_6

    invoke-virtual {p2, v0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->d:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;

    invoke-virtual {p1, v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a(Ljava/util/Collection;)V

    iput-boolean v3, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->b:Z

    :cond_6
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method a(Lorg/apache/xml/security/signature/XMLSignatureInput;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Ljava/util/Set;)Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method public a(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .locals 0

    new-instance p1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string p2, "c14n.Canonicalizer.UnsupportedOperation"

    invoke-direct {p1, p2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->d:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->f()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->a(Lorg/w3c/dom/Node;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->c:Ljava/util/SortedSet;

    invoke-interface {v9}, Ljava/util/SortedSet;->clear()V

    const/4 v10, 0x0

    :goto_2
    const-string v11, "http://www.w3.org/2000/xmlns/"

    const-string v12, "xmlns"

    if-ge v10, v8, :cond_a

    invoke-interface {v6, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Attr;

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v15, "http://www.w3.org/XML/1998/namespace"

    if-nez v11, :cond_3

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->d:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;

    invoke-virtual {v11, v13}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a(Lorg/w3c/dom/Attr;)V

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_9

    invoke-interface {v9, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v14

    const-string v7, "xml"

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_4
    invoke-virtual {v0, v13}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->c(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v3, :cond_5

    invoke-virtual {v2, v11}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_5
    invoke-virtual {v2, v11, v14, v13}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v9, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->a(Lorg/w3c/dom/Attr;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    aput-object v11, v2, v5

    const/4 v1, 0x2

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string v3, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v1, v3, v2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v2, v11}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v11, v14, v13}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_a
    if-eqz v3, :cond_e

    invoke-interface {v1, v11, v12}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {v2, v12}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v1}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->c(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->i:Lorg/w3c/dom/Attr;

    const-string v3, ""

    invoke-virtual {v2, v12, v3, v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_d

    invoke-interface {v9, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v1, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->d:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;

    invoke-virtual {v1, v9}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a(Ljava/util/Collection;)V

    invoke-virtual {v2, v9}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/util/Collection;)V

    :cond_e
    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method c(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->d:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a(I)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315;->d:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;

    invoke-virtual {v3, v2}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a(Lorg/w3c/dom/Attr;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p2, v3, v5, v2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
