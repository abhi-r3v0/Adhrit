.class Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

.field d:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a:I

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    iput p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    :goto_0
    iget p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->b:I

    iget v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a:I

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->b:I

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iget p1, p1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->a:I

    iput p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->b:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Ljava/util/Collection;)V
    .locals 11

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    invoke-direct {v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iget v1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a:I

    iput v1, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->a:I

    iget v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a:I

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->b:I

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iget-boolean v4, v1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->b:Z

    if-eqz v4, :cond_2

    iget v1, v1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->a:I

    add-int/2addr v1, v3

    iget v4, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a:I

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iget-object v0, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iput-boolean v3, p1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->b:Z

    return-void

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    :goto_2
    const-string v6, "base"

    if-ltz v0, :cond_8

    iget-object v7, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iget-boolean v8, v7, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->b:Z

    if-eqz v8, :cond_4

    const/4 v5, 0x0

    :cond_4
    iget-object v8, v7, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v5, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Attr;

    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, v7, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->b:Z

    if-nez v10, :cond_5

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iget-object v0, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/w3c/dom/Attr;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v5

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    if-nez v0, :cond_b

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v4

    goto :goto_5

    :cond_b
    :try_start_0
    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v5, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iput-boolean v3, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->b:Z

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method a(Lorg/w3c/dom/Attr;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    invoke-direct {v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iget v1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a:I

    iput v1, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->a:I

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->d:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a:I

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->b:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;

    iget-object v0, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
