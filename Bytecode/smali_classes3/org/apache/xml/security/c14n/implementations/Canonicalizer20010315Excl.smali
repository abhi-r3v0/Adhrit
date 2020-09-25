.class public abstract Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;
.super Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;


# instance fields
.field b:Ljava/util/TreeSet;

.field final c:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;-><init>(Z)V

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->b:Ljava/util/TreeSet;

    new-instance p1, Ljava/util/TreeSet;

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->g:Lorg/apache/xml/security/c14n/helper/AttrCompare;

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->c:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method a(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 10

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->c:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->b:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/SortedSet;

    const/4 v5, 0x0

    :goto_1
    const-string v6, "xmlns"

    if-ge v5, v3, :cond_6

    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Attr;

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "xml"

    if-nez v8, :cond_2

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v4, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    invoke-virtual {p2, v6, v8, v7}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const/4 p1, 0x1

    aput-object v6, p2, p1

    const/4 p1, 0x2

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    new-instance p1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string v0, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {p1, v0, p2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v6, p1

    :cond_8
    :goto_3
    invoke-interface {v4, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method a(Lorg/apache/xml/security/signature/XMLSignatureInput;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

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

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/lang/String;)[B
    .locals 0

    invoke-static {p2}, Lorg/apache/xml/security/transforms/params/InclusiveNamespaces;->a(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p2

    check-cast p2, Ljava/util/TreeSet;

    iput-object p2, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->b:Ljava/util/TreeSet;

    invoke-super {p0, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b(Lorg/apache/xml/security/signature/XMLSignatureInput;)[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/w3c/dom/Node;)[B
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B
    .locals 0

    invoke-static {p2}, Lorg/apache/xml/security/transforms/params/InclusiveNamespaces;->a(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p2

    check-cast p2, Ljava/util/TreeSet;

    iput-object p2, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->b:Ljava/util/TreeSet;

    invoke-super {p0, p1, p3}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B

    move-result-object p1

    return-object p1
.end method

.method final b(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->c:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->clear()V

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    goto :goto_0

    :cond_0
    move-object v4, v5

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->f()I

    move-result v8

    invoke-virtual {v0, v1, v8}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->a(Lorg/w3c/dom/Node;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    iget-object v5, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->b:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const-string v11, "http://www.w3.org/2000/xmlns/"

    const-string v12, "xmlns"

    if-ge v10, v7, :cond_b

    invoke-interface {v4, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Attr;

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v0, v13}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->c(Lorg/w3c/dom/Node;)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v8, :cond_a

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string v14, "xml"

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v3, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_4
    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_5

    invoke-virtual {v0, v13}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->c(Lorg/w3c/dom/Node;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2, v11}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    const-string v14, "c14n.Canonicalizer.RelativeNamespace"

    const/4 v15, 0x3

    if-nez v8, :cond_7

    invoke-virtual {v0, v13}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->c(Lorg/w3c/dom/Node;)Z

    move-result v16

    if-eqz v16, :cond_7

    iget-object v9, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->b:Ljava/util/TreeSet;

    invoke-virtual {v9, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2, v11}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2, v11, v12, v13}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-interface {v3, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->a(Lorg/w3c/dom/Attr;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    new-array v2, v15, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const/4 v1, 0x1

    aput-object v11, v2, v1

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v14, v2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    :goto_3
    invoke-virtual {v2, v11, v12, v13}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v12}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    new-array v2, v15, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const/4 v9, 0x1

    aput-object v11, v2, v9

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v14, v2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_9
    :goto_4
    const/4 v9, 0x1

    :cond_a
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_b
    if-eqz v8, :cond_10

    invoke-interface {v1, v11, v12}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v0, v4}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->c(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315Excl;->i:Lorg/w3c/dom/Attr;

    const-string v6, ""

    invoke-virtual {v2, v12, v6, v4}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    :goto_6
    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
