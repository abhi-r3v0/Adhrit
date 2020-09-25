.class Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

.field d:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a:I

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    iput p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    :goto_0
    iget p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->b:I

    iget v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a:I

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->b:I

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iget p1, p1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->a:I

    iput p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->b:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Ljava/util/Collection;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    invoke-direct {v2}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iget v3, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a:I

    iput v3, v2, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->a:I

    iget v2, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a:I

    iput v2, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->b:I

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iget-boolean v4, v3, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->b:Z

    if-eqz v4, :cond_2

    iget v3, v3, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->a:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iget-object v0, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iput-boolean v1, p1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->b:Z

    return-void

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_2
    if-ltz v0, :cond_6

    iget-object v3, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iget-object v3, v3, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iput-boolean v1, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->b:Z

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method a(Lorg/w3c/dom/Attr;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    invoke-direct {v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iget v1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a:I

    iput v1, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->a:I

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->d:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->a:I

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->b:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack;->c:Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;

    iget-object v0, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315$XmlAttrStack$XmlsStackElement;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
